import axios from "axios";
import formatValidationErrors from "../../utils/format-validation-errors";
import { defineStore } from "pinia";
import { useNotificationStore } from "../../components/shared/notification/notificationStore";

export const useuserStore = defineStore("users", {
    state: () => ({
        current_page: 1,
        total_pages: 0,
        per_page: 10,

        q_name: "",

        users: [],

        edit_warehouse_id: null,
        view_warehouse_id: null,

        add_warehouse_errors: {},

        edit_warehouse_errors: {},

        current_warehouse_item: {
            id: "",
            name: "",
            email: "",
            phone: "",
            address: "",
        },
    }),

    getters: {},

    actions: {
        fetchWarehouses(page, per_page, q_name = "") {
            return new Promise((resolve, reject) => {
                axios
                    .get(
                        `/api/users?page=${page}&per_page=${per_page}&q_name=${q_name}`
                    )
                    .then((response) => {
                        // this.users = response.data.data;
                                              
                        if (response.data.meta) {
                            this.total_pages = response.data.meta.last_page;
                            this.current_page = response.data.meta.current_page;
                            this.per_page = response.data.meta.per_page;
                            this.q_name = q_name;
                        }
                        resolve(this.users);
                       
                    })
                    .catch((errors) => {
                        reject(errors);
                    });
            });
        },

        fetchWarehousesList() {
            return new Promise((resolve, reject) => {
                axios
                    .get(`/api/users`)
                    .then((response) => {
                        resolve(response.data.data);
                        console.log('this is all users',response.data.data.data)
                        // this.users = response.data.data
                    })
                    .catch((errors) => {
                        reject(errors);
                    });
            });
        },
        fetchAllusers() {
            return new Promise((resolve, reject) => {
                axios
                    .get(`/api/users`)
                    .then((response) => {
                        resolve(response.data.data);
                        console.log('this is for all users',response)
                        // this.users = response.data.data
                    })
                    .catch((errors) => {
                        reject(errors);
                    });
            });
        },

        async fetchWarehouse(id) {
            return new Promise((resolve, reject) => {
                axios
                    .get(`/api/users/${id}`)
                    .then((response) => {
                        this.current_warehouse_item = response.data.data;
                        resolve(response.data.data);
                    })
                    .catch((errors) => {
                        reject(errors);
                    });
            });
        },

        async addWarehouse(data) {
            return new Promise((resolve, reject) => {
                axios
                    .post(`/api/warehouses`, data)
                    .then((response) => {
                        this.resetCurrentWarehouseData();
                        const notifcationStore = useNotificationStore();
                        notifcationStore.pushNotification({
                            message: "Warehouse Added Successfully",
                            type: "success",
                            time: 2000,
                        });

                        resolve();
                    })
                    .catch((error) => {
                        const notifcationStore = useNotificationStore();
                        notifcationStore.pushNotification({
                            message: "Error Occurred",
                            type: "error",
                            time: 2000,
                        });

                        if (error.response.status == 422) {
                            this.add_warehouse_errors = formatValidationErrors(
                                error.response.data.errors
                            );
                        }
                        reject(error);
                    });
            });
        },

        async editWarehouse(data) {
            return new Promise((resolve, reject) => {
                axios
                    .put(`/api/warehouses/${this.edit_warehouse_id}`, data)
                    .then((response) => {
                        this.resetCurrentWarehouseData();
                        const notifcationStore = useNotificationStore();
                        notifcationStore.pushNotification({
                            message: "warehouse updated successfully",
                            type: "success",
                        });
                        resolve(response);
                    })
                    .catch((errors) => {
                        const notifcationStore = useNotificationStore();
                        notifcationStore.pushNotification({
                            message: "Error Occurred",
                            type: "error",
                        });

                        if (errors.response.status == 422) {
                            this.edit_warehouse_errors = formatValidationErrors(
                                errors.response.data.errors
                            );
                        }
                        reject(errors);
                    });
            });
        },

        async deleteWarehouse(id) {
            return new Promise((resolve, reject) => {
                axios
                    .delete(`/api/warehouses/${id}`)
                    .then((response) => {
                        if (
                            this.warehouses.length == 1 ||
                            (Array.isArray(id) &&
                                id.length == this.warehouses.length)
                        ) {
                            this.current_page == 1
                                ? (this.current_page = 1)
                                : (this.current_page -= 1);
                        }

                        this.resetCurrentWarehouseData();
                        const notifcationStore = useNotificationStore();
                        notifcationStore.pushNotification({
                            message: "warehouse deleted successfully",
                            type: "success",
                            time: 2000,
                        });

                        resolve(response);
                    })
                    .catch((error) => {
                        reject(error);
                    });
            });
        },

        resetCurrentWarehouseData() {
            this.current_warehouse_item = {
                id: "",
                name: "",
                email: "",
                phone: "",
                address: "",
            };
            this.add_warehouse_errors = [];
            this.edit_warehouse_errors = [];
        },
    },
});
