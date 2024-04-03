-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 13, 2024 at 10:22 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `julie-store`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `branch_name` varchar(255) DEFAULT NULL,
  `account_number` varchar(255) NOT NULL,
  `balance` double(20,4) UNSIGNED DEFAULT NULL,
  `details` text DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `name`, `bank_name`, `branch_name`, `account_number`, `balance`, `details`, `status`, `created_at`, `updated_at`) VALUES
(1, 'General Account', 'HSBC Bank', 'Dhaka Branch', '984932489384298', 3071315.2500, 'This Account is used for all general transaction of inventory', 'active', '2024-03-12 16:24:45', '2024-03-13 09:00:29'),
(2, 'Income Expense Handler Account', 'Asian Bank', 'Chittagong Branch', '36493200334294', 1316000.0000, 'This Account is used for all general transaction of inventory', 'active', '2024-03-12 16:24:45', '2024-03-12 16:24:53'),
(3, 'Local Supplier\'s Paying Account', 'Jamuna Bank', 'Sylet Branch', '33458220330244', 1300000.0000, '', 'disabled', '2024-03-12 16:24:45', '2024-03-12 16:24:46');

-- --------------------------------------------------------

--
-- Table structure for table `account_adjustments`
--

CREATE TABLE `account_adjustments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `account_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(20,4) UNSIGNED NOT NULL,
  `type` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_adjustments`
--

INSERT INTO `account_adjustments` (`id`, `account_id`, `amount`, `type`, `date`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 50000.0000, 'add', '2022-12-05', '', '2024-03-12 16:24:45', '2024-03-12 16:24:45'),
(2, 2, 15000.0000, 'add', '2023-01-25', '', '2024-03-12 16:24:45', '2024-03-12 16:24:45'),
(3, 1, 10000.0000, 'add', '2023-03-25', '', '2024-03-12 16:24:45', '2024-03-12 16:24:45'),
(4, 1, 1000.0000, 'subtract', '2023-03-25', '', '2024-03-12 16:24:46', '2024-03-12 16:24:46'),
(5, 1, 3000.0000, 'subtract', '2023-10-25', '', '2024-03-12 16:24:46', '2024-03-12 16:24:46'),
(6, 1, 3000000.0000, 'add', '2023-10-25', '', '2024-03-12 16:24:46', '2024-03-12 16:24:46'),
(7, 2, 1300000.0000, 'add', '2023-10-25', '', '2024-03-12 16:24:46', '2024-03-12 16:24:46'),
(8, 3, 1300000.0000, 'add', '2023-10-25', '', '2024-03-12 16:24:46', '2024-03-12 16:24:46');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'walton', 'walton', '2024-03-12 16:24:38', '2024-03-12 16:24:38'),
(2, 'bata', 'bata', '2024-03-12 16:24:38', '2024-03-12 16:24:38'),
(3, 'pran', 'pran', '2024-03-12 16:24:38', '2024-03-12 16:24:38'),
(4, 'regal', 'regal', '2024-03-12 16:24:39', '2024-03-12 16:24:39'),
(5, 'arong', 'arong', '2024-03-12 16:24:39', '2024-03-12 16:24:39'),
(6, 'philip', 'philip', '2024-03-12 16:24:39', '2024-03-12 16:24:39'),
(7, 'mi', 'mi', '2024-03-12 16:24:39', '2024-03-12 16:24:39'),
(8, 'panda', 'panda', '2024-03-12 16:24:39', '2024-03-12 16:24:39'),
(9, 'samsung', 'samsung', '2024-03-12 16:24:39', '2024-03-12 16:24:39'),
(10, 'vision', 'vision', '2024-03-12 16:24:39', '2024-03-12 16:24:39'),
(11, 'hp', 'hp', '2024-03-12 16:24:39', '2024-03-12 16:24:39'),
(12, 'fresh', 'fresh', '2024-03-12 16:24:39', '2024-03-12 16:24:39'),
(13, 'nido', 'nido', '2024-03-12 16:24:39', '2024-03-12 16:24:39'),
(14, 'pepsodent', 'pepsodent', '2024-03-12 16:24:40', '2024-03-12 16:24:40'),
(15, 'rfl', 'rfl', '2024-03-12 16:24:40', '2024-03-12 16:24:40'),
(16, 'dell', 'dell', '2024-03-12 16:24:40', '2024-03-12 16:24:40'),
(17, 'asus', 'asus', '2024-03-12 16:24:40', '2024-03-12 16:24:40'),
(18, 'dano', 'dano', '2024-03-12 16:24:40', '2024-03-12 16:24:40'),
(19, 'casio', 'casio', '2024-03-12 16:24:40', '2024-03-12 16:24:40'),
(20, 'yamah', 'yamah', '2024-03-12 16:24:40', '2024-03-12 16:24:40');

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `code` varchar(10) NOT NULL,
  `symbol` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `created_at`, `updated_at`) VALUES
(1, 'US Dollar', 'USD', '$', NULL, NULL),
(2, 'Euro', 'EUR', '€', NULL, NULL),
(3, 'Japanese Yen', 'JPY', '¥', NULL, NULL),
(4, 'British Pound', 'GBP', '£', NULL, NULL),
(5, 'Australian Dollar', 'AUD', '$', NULL, NULL),
(6, 'Canadian Dollar', 'CAD', '$', NULL, NULL),
(7, 'Swiss Franc', 'CHF', 'CHF', NULL, NULL),
(8, 'Chinese Yuan Renminbi', 'CNY', '¥', NULL, NULL),
(9, 'Hong Kong Dollar', 'HKD', '$', NULL, NULL),
(10, 'New Zealand Dollar', 'NZD', '$', NULL, NULL),
(11, 'Swedish Krona', 'SEK', 'kr', NULL, NULL),
(12, 'South Korean Won', 'KRW', '₩', NULL, NULL),
(13, 'Singapore Dollar', 'SGD', '$', NULL, NULL),
(14, 'Norwegian Krone', 'NOK', 'kr', NULL, NULL),
(15, 'Mexican Peso', 'MXN', '$', NULL, NULL),
(16, 'Indian Rupee', 'INR', '₹', NULL, NULL),
(17, 'Russian Ruble', 'RUB', '₽', NULL, NULL),
(18, 'South African Rand', 'ZAR', 'R', NULL, NULL),
(19, 'Turkish Lira', 'TRY', '₺', NULL, NULL),
(20, 'Brazilian Real', 'BRL', 'R$', NULL, NULL),
(21, 'Thai Baht', 'THB', '฿', NULL, NULL),
(22, 'Danish Krone', 'DKK', 'kr', NULL, NULL),
(23, 'Polish Zloty', 'PLN', 'zł', NULL, NULL),
(24, 'Israeli Shekel', 'ILS', '₪', NULL, NULL),
(25, 'Czech Koruna', 'CZK', 'Kč', NULL, NULL),
(26, 'Hungarian Forint', 'HUF', 'Ft', NULL, NULL),
(27, 'Chilean Peso', 'CLP', '$', NULL, NULL),
(28, 'Philippine Peso', 'PHP', '₱', NULL, NULL),
(29, 'Indonesian Rupiah', 'IDR', 'Rp', NULL, NULL),
(30, 'Malaysian Ringgit', 'MYR', 'RM', NULL, NULL),
(31, 'Emirati Dirham', 'AED', 'د.إ', NULL, NULL),
(32, 'Saudi Riyal', 'SAR', '﷼', NULL, NULL),
(33, 'Qatari Riyal', 'QAR', '﷼', NULL, NULL),
(34, 'Kuwaiti Dinar', 'KWD', 'د.ك', NULL, NULL),
(35, 'Bahraini Dinar', 'BHD', '.د.ب', NULL, NULL),
(36, 'Omani Rial', 'OMR', '﷼', NULL, NULL),
(37, 'Jordanian Dinar', 'JOD', 'د.ا', NULL, NULL),
(38, 'Lebanese Pound', 'LBP', 'ل.ل', NULL, NULL),
(39, 'Egyptian Pound', 'EGP', 'E£', NULL, NULL),
(40, 'Bangladeshi Taka', 'BDT', '৳', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invextry_meta`
--

CREATE TABLE `invextry_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_ref` varchar(255) NOT NULL,
  `related_invoice_ref` varchar(255) DEFAULT NULL,
  `type` varchar(50) NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `party_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `discount_type` varchar(255) DEFAULT NULL,
  `discount` double(20,4) UNSIGNED DEFAULT NULL,
  `invoice_tax_rate` double(10,4) UNSIGNED DEFAULT NULL,
  `total_invoice_tax` double(20,4) UNSIGNED DEFAULT NULL,
  `itemsCostWithTax` double(20,4) UNSIGNED DEFAULT NULL,
  `itemsCostWithoutTax` double(20,4) UNSIGNED DEFAULT NULL,
  `shipping_cost` double(20,4) UNSIGNED NOT NULL,
  `paid_amount` double(20,4) UNSIGNED NOT NULL,
  `returned_amount` double(20,4) UNSIGNED NOT NULL,
  `due_amount` double(20,4) UNSIGNED NOT NULL,
  `total_amount` double(20,4) UNSIGNED NOT NULL,
  `invoice_status` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `shipping_status` varchar(255) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `invoice_date` date NOT NULL,
  `payment_deadline` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `invoice_ref`, `related_invoice_ref`, `type`, `created_by`, `party_id`, `warehouse_id`, `discount_type`, `discount`, `invoice_tax_rate`, `total_invoice_tax`, `itemsCostWithTax`, `itemsCostWithoutTax`, `shipping_cost`, `paid_amount`, `returned_amount`, `due_amount`, `total_amount`, `invoice_status`, `payment_status`, `shipping_status`, `note`, `invoice_date`, `payment_deadline`, `created_at`, `updated_at`) VALUES
(1, 'PUR_1710260686929', NULL, 'purchase', 1, 20, 1, 'flat', 0.0000, 0.0000, 0.0000, 5602.0000, 5500.0000, 0.0000, 5602.0000, 0.0000, 0.0000, 5602.0000, 'pending', 'paid', NULL, 'New Purchase Order .', '2024-03-11', NULL, '2024-03-12 16:24:46', '2024-03-12 16:24:47'),
(2, 'PUR_17102606871336', NULL, 'purchase', 1, 7, 1, 'flat', 100.0000, 1.3000, 10.8409, 20600.0000, 833.9181, 130.0000, 2094.2500, 0.0000, 18546.5909, 20640.8409, 'ordered', 'partial', NULL, 'New Purchase Order .', '2024-03-12', NULL, '2024-03-12 16:24:47', '2024-03-12 16:24:48'),
(3, 'PUR_17102606882248', NULL, 'purchase', 1, 7, 2, 'flat', 100.0000, 0.0000, 0.0000, 21538.2500, 1733.9181, 130.0000, 6000.0000, 0.0000, 15568.2500, 21568.2500, 'received', 'partial', NULL, 'New Purchase Order .', '2024-03-13', NULL, '2024-03-12 16:24:48', '2024-03-12 16:24:49'),
(4, 'PUR_17102606892087', NULL, 'purchase', 1, 11, 2, 'flat', 0.0000, 2.0000, 34.6784, 21538.2500, 1733.9181, 100.0000, 0.0000, 0.0000, 21672.9284, 21672.9284, 'received', 'unpaid', NULL, 'New Purchase Order .', '2024-03-14', NULL, '2024-03-12 16:24:49', '2024-03-12 16:24:49'),
(5, 'PUR_17102606891428', NULL, 'purchase', 1, 14, 2, 'flat', 0.0000, 2.0000, 60.0000, 3063.7500, 3000.0000, 100.0000, 1350.0000, 0.0000, 1873.7500, 3223.7500, 'pending', 'partial', NULL, 'New Purchase Order .', '2024-03-15', NULL, '2024-03-12 16:24:49', '2024-03-12 16:24:50'),
(6, 'PUR_17102606901845', NULL, 'purchase', 1, 20, 1, 'flat', 1570.0000, 2.7000, 94.5000, 3576.5000, 3500.0000, 4630.0000, 4350.0000, 0.0000, 2381.0000, 6731.0000, 'ordered', 'partial', NULL, 'New Purchase Order .', '2024-03-16', NULL, '2024-03-12 16:24:50', '2024-03-12 16:24:51'),
(7, 'PUR_171026069150', NULL, 'purchase', 1, 20, 2, 'flat', 170.0000, 2.0000, 14.6784, 20500.0000, 733.9181, 4630.0000, 8000.0000, 0.0000, 16974.6784, 24974.6784, 'received', 'partial', NULL, 'New Purchase Order .', '2024-03-17', NULL, '2024-03-12 16:24:51', '2024-03-12 16:24:51'),
(8, 'SALE_17102606921575', NULL, 'sale', 1, 1, 1, 'flat', 0.0000, 0.0000, 0.0000, 8753.0000, 8600.0000, 0.0000, 8691.2500, 0.0000, 61.7500, 8753.0000, 'pending', 'partial', NULL, 'New Sale Order .', '2024-03-11', NULL, '2024-03-12 16:24:52', '2024-03-12 16:24:52'),
(9, 'SALE_17102606921483', NULL, 'sale', 1, 2, 1, 'flat', 100.0000, 1.3000, 14.8246, 13000.0000, 1140.3509, 130.0000, 6184.5000, 0.0000, 6860.3246, 13044.8246, 'ordered', 'partial', NULL, 'New Sale Order .', '2024-03-12', NULL, '2024-03-12 16:24:52', '2024-03-12 16:24:53'),
(10, 'SALE_17102606932057', NULL, 'sale', 1, 3, 2, 'flat', 100.0000, 0.0000, 0.0000, 14051.0000, 2140.3509, 130.0000, 7000.0000, 0.0000, 7081.0000, 14081.0000, 'received', 'partial', NULL, 'New Sale Order .', '2024-03-13', NULL, '2024-03-12 16:24:53', '2024-03-12 16:24:53'),
(11, 'SALE_17102606941775', NULL, 'sale', 1, 6, 2, 'flat', 0.0000, 2.0000, 42.8070, 14051.0000, 2140.3509, 100.0000, 0.0000, 0.0000, 14193.8070, 14193.8070, 'received', 'unpaid', NULL, 'New Sale Order .', '2024-03-14', NULL, '2024-03-12 16:24:54', '2024-03-12 16:24:54'),
(12, 'SALE_17102606941739', NULL, 'sale', 1, 13, 2, 'flat', 0.0000, 2.0000, 96.0000, 4902.0000, 4800.0000, 100.0000, 5098.0000, 0.0000, 0.0000, 5098.0000, 'pending', 'paid', NULL, 'New Sale Order .', '2024-03-15', NULL, '2024-03-12 16:24:54', '2024-03-12 16:24:55'),
(13, 'SALE_17102606951704', NULL, 'sale', 1, 15, 1, 'flat', 1570.0000, 2.7000, 156.6000, 5927.5000, 5800.0000, 4630.0000, 4350.0000, 0.0000, 4794.1000, 9144.1000, 'ordered', 'partial', NULL, 'New Sale Order .', '2024-03-16', NULL, '2024-03-12 16:24:55', '2024-03-12 16:24:56'),
(14, 'SALE_17102606961941', NULL, 'sale', 1, 19, 2, 'flat', 170.0000, 2.0000, 18.8070, 12800.0000, 940.3509, 4630.0000, 1600.0000, 0.0000, 15678.8070, 17278.8070, 'received', 'partial', NULL, 'New Sale Order .', '2024-03-17', NULL, '2024-03-12 16:24:56', '2024-03-12 16:24:57'),
(15, 'PUR_1710320429111', NULL, 'purchase', 1, 14, 2, 'flat', 0.0000, 0.0000, 0.0000, 505.0000, 500.0000, 0.0000, 505.0000, 0.0000, 0.0000, 505.0000, 'received', 'paid', NULL, NULL, '2024-03-13', NULL, '2024-03-13 09:00:29', '2024-03-13 09:00:29');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_items`
--

CREATE TABLE `invoice_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `unit_price` double(20,4) UNSIGNED NOT NULL,
  `product_quantity` double(20,4) UNSIGNED NOT NULL,
  `unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tax_rate` bigint(20) UNSIGNED DEFAULT NULL,
  `tax_type` varchar(20) NOT NULL,
  `discount_type` varchar(255) DEFAULT NULL,
  `discount` double(20,4) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_items`
--

INSERT INTO `invoice_items` (`id`, `invoice_id`, `product_id`, `unit_price`, `product_quantity`, `unit_id`, `tax_rate`, `tax_type`, `discount_type`, `discount`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 100.0000, 15.0000, 7, 0, 'exclusive', 'flat', 0.0000, '2024-03-12 16:24:46', '2024-03-12 16:24:46'),
(2, 1, 2, 500.0000, 8.0000, 8, 3, 'exclusive', 'flat', 0.0000, '2024-03-12 16:24:47', '2024-03-12 16:24:47'),
(3, 2, 1, 100.0000, 6.0000, 7, 0, 'exclusive', 'flat', 0.0000, '2024-03-12 16:24:48', '2024-03-12 16:24:48'),
(4, 2, 3, 10000.0000, 2.0000, 8, 15, 'inclusive', 'flat', 0.0000, '2024-03-12 16:24:48', '2024-03-12 16:24:48'),
(5, 3, 2, 500.0000, 3.0000, 8, 3, 'exclusive', 'flat', 0.0000, '2024-03-12 16:24:48', '2024-03-12 16:24:48'),
(6, 3, 3, 10000.0000, 2.0000, 8, 15, 'inclusive', 'flat', 0.0000, '2024-03-12 16:24:48', '2024-03-12 16:24:48'),
(7, 4, 3, 10000.0000, 2.0000, 8, 15, 'inclusive', 'flat', 0.0000, '2024-03-12 16:24:49', '2024-03-12 16:24:49'),
(8, 4, 2, 500.0000, 3.0000, 8, 3, 'exclusive', 'flat', 0.0000, '2024-03-12 16:24:49', '2024-03-12 16:24:49'),
(9, 5, 1, 100.0000, 5.0000, 7, 0, 'exclusive', 'flat', 0.0000, '2024-03-12 16:24:49', '2024-03-12 16:24:49'),
(10, 5, 2, 500.0000, 5.0000, 8, 3, 'exclusive', 'flat', 0.0000, '2024-03-12 16:24:50', '2024-03-12 16:24:50'),
(11, 6, 1, 100.0000, 5.0000, 7, 0, 'exclusive', 'flat', 0.0000, '2024-03-12 16:24:50', '2024-03-12 16:24:50'),
(12, 6, 2, 500.0000, 6.0000, 8, 3, 'exclusive', 'flat', 0.0000, '2024-03-12 16:24:50', '2024-03-12 16:24:50'),
(13, 7, 1, 100.0000, 5.0000, 7, 0, 'exclusive', 'flat', 0.0000, '2024-03-12 16:24:51', '2024-03-12 16:24:51'),
(14, 7, 3, 10000.0000, 2.0000, 8, 15, 'inclusive', 'flat', 0.0000, '2024-03-12 16:24:51', '2024-03-12 16:24:51'),
(15, 8, 1, 200.0000, 13.0000, 7, 0, 'exclusive', 'flat', 0.0000, '2024-03-12 16:24:52', '2024-03-12 16:24:52'),
(16, 8, 2, 1000.0000, 6.0000, 8, 3, 'exclusive', 'flat', 0.0000, '2024-03-12 16:24:52', '2024-03-12 16:24:52'),
(17, 9, 1, 200.0000, 5.0000, 7, 0, 'exclusive', 'flat', 0.0000, '2024-03-12 16:24:52', '2024-03-12 16:24:52'),
(18, 9, 3, 12000.0000, 1.0000, 8, 15, 'inclusive', 'flat', 0.0000, '2024-03-12 16:24:52', '2024-03-12 16:24:52'),
(19, 10, 2, 1000.0000, 2.0000, 8, 3, 'exclusive', 'flat', 0.0000, '2024-03-12 16:24:53', '2024-03-12 16:24:53'),
(20, 10, 3, 12000.0000, 1.0000, 8, 15, 'inclusive', 'flat', 0.0000, '2024-03-12 16:24:53', '2024-03-12 16:24:53'),
(21, 11, 3, 12000.0000, 1.0000, 8, 15, 'inclusive', 'flat', 0.0000, '2024-03-12 16:24:54', '2024-03-12 16:24:54'),
(22, 11, 2, 1000.0000, 2.0000, 8, 3, 'exclusive', 'flat', 0.0000, '2024-03-12 16:24:54', '2024-03-12 16:24:54'),
(23, 12, 1, 200.0000, 4.0000, 7, 0, 'exclusive', 'flat', 0.0000, '2024-03-12 16:24:54', '2024-03-12 16:24:54'),
(24, 12, 2, 1000.0000, 4.0000, 8, 3, 'exclusive', 'flat', 0.0000, '2024-03-12 16:24:55', '2024-03-12 16:24:55'),
(25, 13, 1, 200.0000, 4.0000, 7, 0, 'exclusive', 'flat', 0.0000, '2024-03-12 16:24:55', '2024-03-12 16:24:55'),
(26, 13, 2, 1000.0000, 5.0000, 8, 3, 'exclusive', 'flat', 0.0000, '2024-03-12 16:24:56', '2024-03-12 16:24:56'),
(27, 14, 1, 200.0000, 4.0000, 7, 0, 'exclusive', 'flat', 0.0000, '2024-03-12 16:24:56', '2024-03-12 16:24:56'),
(28, 14, 3, 12000.0000, 1.0000, 8, 15, 'inclusive', 'flat', 0.0000, '2024-03-12 16:24:56', '2024-03-12 16:24:56'),
(29, 15, 4, 10.0000, 50.0000, 1, 1, 'exclusive', 'flat', 0.0000, '2024-03-13 09:00:29', '2024-03-13 09:00:29');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(10) UNSIGNED NOT NULL,
  `disk` varchar(32) NOT NULL,
  `directory` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `extension` varchar(32) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `aggregate_type` varchar(32) NOT NULL,
  `size` int(10) UNSIGNED NOT NULL,
  `variant_name` varchar(255) DEFAULT NULL,
  `original_media_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `disk`, `directory`, `filename`, `extension`, `mime_type`, `aggregate_type`, `size`, `variant_name`, `original_media_id`, `created_at`, `updated_at`) VALUES
(1, 'uploads', 'demo/2024-03-12', 'walton', 'jpg', 'image/jpeg', 'image', 10202, NULL, NULL, '2024-03-12 16:24:14', '2024-03-12 16:24:14'),
(2, 'uploads', 'demo/2024-03-12', 'bata', 'jpg', 'image/jpeg', 'image', 9760, NULL, NULL, '2024-03-12 16:24:14', '2024-03-12 16:24:14'),
(3, 'uploads', 'demo/2024-03-12', 'pran', 'jpg', 'image/jpeg', 'image', 8978, NULL, NULL, '2024-03-12 16:24:14', '2024-03-12 16:24:14'),
(4, 'uploads', 'demo/2024-03-12', 'regal', 'jpg', 'image/jpeg', 'image', 8150, NULL, NULL, '2024-03-12 16:24:14', '2024-03-12 16:24:14'),
(5, 'uploads', 'demo/2024-03-12', 'arong', 'jpg', 'image/jpeg', 'image', 8170, NULL, NULL, '2024-03-12 16:24:14', '2024-03-12 16:24:14'),
(6, 'uploads', 'demo/2024-03-12', 'philip', 'jpg', 'image/jpeg', 'image', 9750, NULL, NULL, '2024-03-12 16:24:14', '2024-03-12 16:24:14'),
(7, 'uploads', 'demo/2024-03-12', 'mi', 'jpg', 'image/jpeg', 'image', 28519, NULL, NULL, '2024-03-12 16:24:14', '2024-03-12 16:24:14'),
(8, 'uploads', 'demo/2024-03-12', 'panda', 'jpg', 'image/jpeg', 'image', 2063, NULL, NULL, '2024-03-12 16:24:14', '2024-03-12 16:24:14'),
(9, 'uploads', 'demo/2024-03-12', 'samsung', 'png', 'image/png', 'image', 1463, NULL, NULL, '2024-03-12 16:24:15', '2024-03-12 16:24:15'),
(10, 'uploads', 'demo/2024-03-12', 'vision', 'jpg', 'image/jpeg', 'image', 12768, NULL, NULL, '2024-03-12 16:24:15', '2024-03-12 16:24:15'),
(11, 'uploads', 'demo/2024-03-12', 'hp', 'jpg', 'image/jpeg', 'image', 13567, NULL, NULL, '2024-03-12 16:24:15', '2024-03-12 16:24:15'),
(12, 'uploads', 'demo/2024-03-12', 'fresh', 'jpg', 'image/jpeg', 'image', 2723, NULL, NULL, '2024-03-12 16:24:15', '2024-03-12 16:24:15'),
(13, 'uploads', 'demo/2024-03-12', 'nido', 'jpg', 'image/jpeg', 'image', 31269, NULL, NULL, '2024-03-12 16:24:15', '2024-03-12 16:24:15'),
(14, 'uploads', 'demo/2024-03-12', 'pepsodent', 'jpg', 'image/jpeg', 'image', 9893, NULL, NULL, '2024-03-12 16:24:15', '2024-03-12 16:24:15'),
(15, 'uploads', 'demo/2024-03-12', 'rfl', 'jpg', 'image/jpeg', 'image', 8838, NULL, NULL, '2024-03-12 16:24:15', '2024-03-12 16:24:15'),
(16, 'uploads', 'demo/2024-03-12', 'dell', 'jpg', 'image/jpeg', 'image', 8928, NULL, NULL, '2024-03-12 16:24:15', '2024-03-12 16:24:15'),
(17, 'uploads', 'demo/2024-03-12', 'asus', 'jpg', 'image/jpeg', 'image', 9328, NULL, NULL, '2024-03-12 16:24:16', '2024-03-12 16:24:16'),
(18, 'uploads', 'demo/2024-03-12', 'dano', 'jpg', 'image/jpeg', 'image', 2794, NULL, NULL, '2024-03-12 16:24:16', '2024-03-12 16:24:16'),
(19, 'uploads', 'demo/2024-03-12', 'casio', 'jpg', 'image/jpeg', 'image', 8946, NULL, NULL, '2024-03-12 16:24:16', '2024-03-12 16:24:16'),
(20, 'uploads', 'demo/2024-03-12', 'yamah', 'jpg', 'image/jpeg', 'image', 10732, NULL, NULL, '2024-03-12 16:24:16', '2024-03-12 16:24:16'),
(21, 'uploads', 'demo/2024-03-12', 'beg', 'jpg', 'image/jpeg', 'image', 118119, NULL, NULL, '2024-03-12 16:24:16', '2024-03-12 16:24:16'),
(22, 'uploads', 'demo/2024-03-12', 'camera', 'jpg', 'image/jpeg', 'image', 177512, NULL, NULL, '2024-03-12 16:24:17', '2024-03-12 16:24:17'),
(23, 'uploads', 'demo/2024-03-12', 'chocolate', 'jpg', 'image/jpeg', 'image', 57802, NULL, NULL, '2024-03-12 16:24:17', '2024-03-12 16:24:17'),
(24, 'uploads', 'demo/2024-03-12', 'drinks', 'jpg', 'image/jpeg', 'image', 166558, NULL, NULL, '2024-03-12 16:24:17', '2024-03-12 16:24:17'),
(25, 'uploads', 'demo/2024-03-12', 'fruits', 'webp', 'image/webp', 'image', 32888, NULL, NULL, '2024-03-12 16:24:17', '2024-03-12 16:24:17'),
(26, 'uploads', 'demo/2024-03-12', 'furniture', 'jpg', 'image/jpeg', 'image', 193916, NULL, NULL, '2024-03-12 16:24:17', '2024-03-12 16:24:17'),
(27, 'uploads', 'demo/2024-03-12', 'glass', 'jpg', 'image/jpeg', 'image', 13137, NULL, NULL, '2024-03-12 16:24:17', '2024-03-12 16:24:17'),
(28, 'uploads', 'demo/2024-03-12', 'headphone', 'jpg', 'image/jpeg', 'image', 49772, NULL, NULL, '2024-03-12 16:24:17', '2024-03-12 16:24:17'),
(29, 'uploads', 'demo/2024-03-12', 'laptop', 'png', 'image/png', 'image', 105180, NULL, NULL, '2024-03-12 16:24:17', '2024-03-12 16:24:17'),
(30, 'uploads', 'demo/2024-03-12', 'milk-powder', 'jpg', 'image/jpeg', 'image', 93747, NULL, NULL, '2024-03-12 16:24:17', '2024-03-12 16:24:17'),
(31, 'uploads', 'demo/2024-03-12', 'oil', 'png', 'image/png', 'image', 245485, NULL, NULL, '2024-03-12 16:24:17', '2024-03-12 16:24:17'),
(32, 'uploads', 'demo/2024-03-12', 'shoe', 'jpg', 'image/jpeg', 'image', 104629, NULL, NULL, '2024-03-12 16:24:17', '2024-03-12 16:24:17'),
(33, 'uploads', 'demo/2024-03-12', 'smart-phone', 'jpg', 'image/jpeg', 'image', 63314, NULL, NULL, '2024-03-12 16:24:17', '2024-03-12 16:24:17'),
(34, 'uploads', 'demo/2024-03-12', 't-shirt', 'jpg', 'image/jpeg', 'image', 46311, NULL, NULL, '2024-03-12 16:24:18', '2024-03-12 16:24:18'),
(35, 'uploads', 'demo/2024-03-12', 'tablet', 'jpg', 'image/jpeg', 'image', 51346, NULL, NULL, '2024-03-12 16:24:18', '2024-03-12 16:24:18'),
(36, 'uploads', 'demo/2024-03-12', 'toy', 'jpg', 'image/jpeg', 'image', 135293, NULL, NULL, '2024-03-12 16:24:18', '2024-03-12 16:24:18'),
(37, 'uploads', 'demo/2024-03-12', 'tv', 'jpg', 'image/jpeg', 'image', 67892, NULL, NULL, '2024-03-12 16:24:19', '2024-03-12 16:24:19'),
(38, 'uploads', 'demo/2024-03-12', 'watch', 'jpg', 'image/jpeg', 'image', 54792, NULL, NULL, '2024-03-12 16:24:19', '2024-03-12 16:24:19'),
(39, 'uploads', 'demo/2024-03-12', 'step-out-beg', 'png', 'image/png', 'image', 405904, NULL, NULL, '2024-03-12 16:24:19', '2024-03-12 16:24:19'),
(40, 'uploads', 'demo/2024-03-12', 'hand-beg', 'jpg', 'image/jpeg', 'image', 1097929, NULL, NULL, '2024-03-12 16:24:19', '2024-03-12 16:24:19'),
(41, 'uploads', 'demo/2024-03-12', 'cloth-beg', 'jpg', 'image/jpeg', 'image', 141594, NULL, NULL, '2024-03-12 16:24:19', '2024-03-12 16:24:19'),
(42, 'uploads', 'demo/2024-03-12', 'cloth-beg-1', 'jpg', 'image/jpeg', 'image', 141594, NULL, NULL, '2024-03-12 16:24:19', '2024-03-12 16:24:19'),
(43, 'uploads', 'demo/2024-03-12', 'leather-shoe', 'jpg', 'image/jpeg', 'image', 336857, NULL, NULL, '2024-03-12 16:24:19', '2024-03-12 16:24:19'),
(44, 'uploads', 'demo/2024-03-12', 'loafer-shoe', 'jpg', 'image/jpeg', 'image', 120096, NULL, NULL, '2024-03-12 16:24:19', '2024-03-12 16:24:19'),
(45, 'uploads', 'demo/2024-03-12', 'sneakers-shoe', 'jpg', 'image/jpeg', 'image', 164332, NULL, NULL, '2024-03-12 16:24:19', '2024-03-12 16:24:19'),
(46, 'uploads', 'demo/2024-03-12', 'apex-slipper', 'jpg', 'image/jpeg', 'image', 398437, NULL, NULL, '2024-03-12 16:24:19', '2024-03-12 16:24:19'),
(47, 'uploads', 'demo/2024-03-12', 'iphone', 'jpg', 'image/jpeg', 'image', 36103, NULL, NULL, '2024-03-12 16:24:19', '2024-03-12 16:24:19'),
(48, 'uploads', 'demo/2024-03-12', 'infinix-phone', 'jpg', 'image/jpeg', 'image', 80565, NULL, NULL, '2024-03-12 16:24:19', '2024-03-12 16:24:19'),
(49, 'uploads', 'demo/2024-03-12', 'vivo-phone', 'jpg', 'image/jpeg', 'image', 19726, NULL, NULL, '2024-03-12 16:24:19', '2024-03-12 16:24:19'),
(50, 'uploads', '2024-03-13', 'IMG-9756', 'jpg', 'image/jpeg', 'image', 64633, NULL, NULL, '2024-03-13 08:59:12', '2024-03-13 08:59:12');

-- --------------------------------------------------------

--
-- Table structure for table `mediables`
--

CREATE TABLE `mediables` (
  `media_id` int(10) UNSIGNED NOT NULL,
  `mediable_type` varchar(255) NOT NULL,
  `mediable_id` int(10) UNSIGNED NOT NULL,
  `tag` varchar(255) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mediables`
--

INSERT INTO `mediables` (`media_id`, `mediable_type`, `mediable_id`, `tag`, `order`) VALUES
(1, 'App\\Models\\Product\\Brand', 1, 'logo', 1),
(2, 'App\\Models\\Product\\Brand', 2, 'logo', 1),
(3, 'App\\Models\\Product\\Brand', 3, 'logo', 1),
(4, 'App\\Models\\Product\\Brand', 4, 'logo', 1),
(5, 'App\\Models\\Product\\Brand', 5, 'logo', 1),
(6, 'App\\Models\\Product\\Brand', 6, 'logo', 1),
(7, 'App\\Models\\Product\\Brand', 7, 'logo', 1),
(8, 'App\\Models\\Product\\Brand', 8, 'logo', 1),
(9, 'App\\Models\\Product\\Brand', 9, 'logo', 1),
(10, 'App\\Models\\Product\\Brand', 10, 'logo', 1),
(11, 'App\\Models\\Product\\Brand', 11, 'logo', 1),
(12, 'App\\Models\\Product\\Brand', 12, 'logo', 1),
(13, 'App\\Models\\Product\\Brand', 13, 'logo', 1),
(14, 'App\\Models\\Product\\Brand', 14, 'logo', 1),
(15, 'App\\Models\\Product\\Brand', 15, 'logo', 1),
(16, 'App\\Models\\Product\\Brand', 16, 'logo', 1),
(17, 'App\\Models\\Product\\Brand', 17, 'logo', 1),
(18, 'App\\Models\\Product\\Brand', 18, 'logo', 1),
(19, 'App\\Models\\Product\\Brand', 19, 'logo', 1),
(20, 'App\\Models\\Product\\Brand', 20, 'logo', 1),
(21, 'App\\Models\\Product\\ProductCategory', 1, 'thumbnail', 1),
(22, 'App\\Models\\Product\\ProductCategory', 2, 'thumbnail', 1),
(23, 'App\\Models\\Product\\ProductCategory', 3, 'thumbnail', 1),
(24, 'App\\Models\\Product\\ProductCategory', 4, 'thumbnail', 1),
(25, 'App\\Models\\Product\\ProductCategory', 5, 'thumbnail', 1),
(26, 'App\\Models\\Product\\ProductCategory', 6, 'thumbnail', 1),
(27, 'App\\Models\\Product\\ProductCategory', 7, 'thumbnail', 1),
(28, 'App\\Models\\Product\\ProductCategory', 8, 'thumbnail', 1),
(29, 'App\\Models\\Product\\ProductCategory', 9, 'thumbnail', 1),
(30, 'App\\Models\\Product\\ProductCategory', 10, 'thumbnail', 1),
(31, 'App\\Models\\Product\\ProductCategory', 11, 'thumbnail', 1),
(32, 'App\\Models\\Product\\ProductCategory', 12, 'thumbnail', 1),
(33, 'App\\Models\\Product\\ProductCategory', 13, 'thumbnail', 1),
(34, 'App\\Models\\Product\\ProductCategory', 14, 'thumbnail', 1),
(35, 'App\\Models\\Product\\ProductCategory', 15, 'thumbnail', 1),
(36, 'App\\Models\\Product\\ProductCategory', 16, 'thumbnail', 1),
(37, 'App\\Models\\Product\\ProductCategory', 17, 'thumbnail', 1),
(38, 'App\\Models\\Product\\ProductCategory', 18, 'thumbnail', 1),
(39, 'App\\Models\\Product\\Product', 1, 'gallery', 1),
(44, 'App\\Models\\Product\\Product', 2, 'gallery', 1),
(49, 'App\\Models\\Product\\Product', 3, 'gallery', 1),
(50, 'App\\Models\\Product\\Product', 4, 'gallery', 1),
(40, 'App\\Models\\Product\\Product', 1, 'gallery', 2),
(47, 'App\\Models\\Product\\Product', 3, 'gallery', 2),
(41, 'App\\Models\\Product\\Product', 1, 'gallery', 3),
(48, 'App\\Models\\Product\\Product', 3, 'gallery', 3),
(42, 'App\\Models\\Product\\Product', 1, 'gallery', 4);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_06_27_000000_create_mediable_tables', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2020_10_12_000000_add_variants_to_media', 1),
(7, '2023_07_13_030722_create_permission_tables', 1),
(8, '2023_07_19_141527_create_currencies_table', 1),
(9, '2023_07_1_141608_create_invextry_meta_table', 1),
(10, '2023_07_23_134907_create_units_table', 1),
(11, '2023_07_26_124157_create_taxes_table', 1),
(12, '2023_07_26_182430_create_warehouses_table', 1),
(13, '2023_07_28_152756_create_brands_table', 1),
(14, '2023_07_31_124517_create_product_categories_table', 1),
(15, '2023_08_02_151429_create_products_table', 1),
(16, '2023_08_02_155740_create_product_stocks_table', 1),
(17, '2023_08_05_135214_create_parties_table', 1),
(18, '2023_08_05_136435_create_accounts_table', 1),
(19, '2023_08_05_136533_create_account_adjustments_table', 1),
(20, '2023_08_05_173122_create_invoices_table', 1),
(21, '2023_08_05_181011_create_invoice_items_table', 1),
(22, '2023_08_05_182000_create_payment_methods_table', 1),
(23, '2023_08_05_183542_create_payments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(2, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `parties`
--

CREATE TABLE `parties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `tax_number` varchar(255) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `postal_code` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `billing_address` text DEFAULT NULL,
  `shipping_address` text DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `isCustomer` tinyint(1) DEFAULT NULL,
  `isSupplier` tinyint(1) DEFAULT NULL,
  `purchase_due` double(20,4) UNSIGNED DEFAULT NULL,
  `purchase_return_due` double(20,4) UNSIGNED DEFAULT NULL,
  `sale_due` double(20,4) UNSIGNED DEFAULT NULL,
  `sale_return_due` double(20,4) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `parties`
--

INSERT INTO `parties` (`id`, `user_id`, `name`, `phone`, `email`, `company_name`, `tax_number`, `country`, `city`, `postal_code`, `address`, `billing_address`, `shipping_address`, `status`, `isCustomer`, `isSupplier`, `purchase_due`, `purchase_return_due`, `sale_due`, `sale_return_due`, `created_at`, `updated_at`) VALUES
(1, NULL, 'John Smith', '0412345678', 'john.smith@example.com', NULL, '123124567890', 'United States', 'New York', '10001', '123 Main St', '456 Billing St', '789 Shipping St', 'active', 1, 0, 0.0000, 0.0000, 61.7500, 0.0000, '2024-03-12 16:24:43', '2024-03-12 16:24:52'),
(2, NULL, 'Jane Johnson', '0456789123', 'jane.johnson@example.com', NULL, '098752654321', 'United Kingdom', 'London', 'SW1A 1AA', '10 Downing St', '1 Billing Rd', '15 Shipping Rd', 'active', 1, 0, 0.0000, 0.0000, 6860.3246, 0.0000, '2024-03-12 16:24:43', '2024-03-12 16:24:53'),
(3, NULL, 'Michael Brown', '01234567895', 'michael.brown@example.com', NULL, '985765432104', 'Canada', 'Toronto', 'M5V 2T6', '789 Yonge St', '456 Billing Ave', '123 Shipping Ave', 'active', 1, 0, 0.0000, 0.0000, 7081.0000, 0.0000, '2024-03-12 16:24:43', '2024-03-12 16:24:54'),
(4, NULL, 'Emily White', '0456789234', 'emily.white@example.com', NULL, '234567890152', 'Australia', 'Melbourne', '3000', '456 Collins St', '123 Billing Rd', '789 Shipping Rd', 'active', 1, 0, 0.0000, 0.0000, 0.0000, 0.0000, '2024-03-12 16:24:43', '2024-03-12 16:24:43'),
(5, NULL, 'David Lee', '0987654321', 'david.lee@example.com', NULL, '311098765432', 'United States', 'Los Angeles', '90001', '1234 Elm St', '567 Billing Ave', '890 Shipping Ave', 'active', 0, 1, 0.0000, 0.0000, 0.0000, 0.0000, '2024-03-12 16:24:43', '2024-03-12 16:24:43'),
(6, NULL, 'Sophia Taylor', '0765432109', 'sophia.taylor@example.com', NULL, '214209876543', 'United Kingdom', 'Manchester', 'M1 1AG', '567 Market St', '123 Billing Rd', '789 Shipping Rd', 'active', 1, 0, 0.0000, 0.0000, 14193.8070, 0.0000, '2024-03-12 16:24:43', '2024-03-12 16:24:54'),
(7, NULL, 'James Anderson', '0212345678', 'james.anderson@example.com', NULL, '4323811098765', 'Canada', 'Vancouver', 'V6B 4Y8', '789 Granville St', '456 Billing Ave', '123 Shipping Ave', 'active', 0, 1, 34114.8409, 0.0000, 0.0000, 0.0000, '2024-03-12 16:24:44', '2024-03-12 16:24:49'),
(8, NULL, 'Olivia Garcia', '0456123789', 'olivia.garcia@example.com', NULL, '6543210987864', 'Australia', 'Brisbane', '4000', '123 Queen St', '456 Billing Rd', '789 Shipping Rd', 'active', 1, 0, 0.0000, 0.0000, 0.0000, 0.0000, '2024-03-12 16:24:44', '2024-03-12 16:24:44'),
(9, NULL, 'Liam Martinez', '0897654321', 'liam.martinez@example.com', NULL, '7409654321098', 'United States', 'Chicago', '60601', '123 State St', '456 Billing Ave', '789 Shipping Ave', 'active', 1, 0, 0.0000, 0.0000, 0.0000, 0.0000, '2024-03-12 16:24:44', '2024-03-12 16:24:44'),
(10, NULL, 'Ava Robinson', '0923456389', 'ava.robinson@example.com', NULL, '4321098765097', 'United Kingdom', 'Birmingham', 'B1 1BB', '456 Broad St', '123 Billing Rd', '789 Shipping Rd', 'active', 1, 0, 0.0000, 0.0000, 0.0000, 0.0000, '2024-03-12 16:24:44', '2024-03-12 16:24:44'),
(11, NULL, 'William Taylor', '0856423789', 'william.taylor@example.com', NULL, '9876543210976', 'United States', 'San Francisco', '94105', '123 Mission St', '456 Billing Ave', '789 Shipping Ave', 'active', 0, 1, 21672.9284, 0.0000, 0.0000, 0.0000, '2024-03-12 16:24:44', '2024-03-12 16:24:49'),
(12, NULL, 'Emma Green', '0312345678', 'emma.green@example.com', NULL, '2345678901478', 'Australia', 'Perth', '6000', '456 Murray St', '123 Billing Rd', '789 Shipping Rd', 'active', 1, 0, 0.0000, 0.0000, 0.0000, 0.0000, '2024-03-12 16:24:44', '2024-03-12 16:24:44'),
(13, NULL, 'Noah Turner', '0987612345', 'noah.turner@example.com', NULL, '568327654321098', 'Canada', 'Montreal', 'H3B 4L2', '789 Crescent St', '456 Billing Ave', '123 Shipping Ave', 'active', 1, 0, 0.0000, 0.0000, 0.0000, 0.0000, '2024-03-12 16:24:44', '2024-03-12 16:24:44'),
(14, NULL, 'Isabella Hernandez', '0423456789', 'isabella.hernandez@example.com', NULL, '6543210987985', 'United States', 'Houston', '77002', '123 Main St', '456 Billing Ave', '789 Shipping Ave', 'active', 0, 1, 1873.7500, 0.0000, 0.0000, 0.0000, '2024-03-12 16:24:44', '2024-03-12 16:24:50'),
(15, NULL, 'Mia King', '0321678904', 'mia.king@example.com', NULL, '10987654324007', 'United Kingdom', 'Glasgow', 'G1 1RT', '456 Sauchiehall St', '123 Billing Rd', '789 Shipping Rd', 'active', 1, 0, 0.0000, 0.0000, 4794.1000, 0.0000, '2024-03-12 16:24:44', '2024-03-12 16:24:56'),
(16, NULL, 'Alexander Scott', '0765234198', 'alexander.scott@example.com', NULL, '32109876543755', 'Australia', 'Adelaide', '5000', '123 King William St', '456 Billing Ave', '789 Shipping Ave', 'active', 0, 1, 0.0000, 0.0000, 0.0000, 0.0000, '2024-03-12 16:24:45', '2024-03-12 16:24:45'),
(17, NULL, 'Ella Phillips', '0867432109', 'ella.phillips@example.com', NULL, '4334321098765', 'Canada', 'Calgary', 'T2P 2M5', '789 17 Ave SW', '456 Billing Ave', '123 Shipping Ave', 'active', 1, 0, 0.0000, 0.0000, 0.0000, 0.0000, '2024-03-12 16:24:45', '2024-03-12 16:24:45'),
(18, NULL, 'Daniel Evans', '0923456781', 'daniel.evans@example.com', NULL, '69954321098007', 'United States', 'Miami', '33132', '123 Biscayne Blvd', '456 Billing Ave', '789 Shipping Ave', 'active', 1, 0, 0.0000, 0.0000, 0.0000, 0.0000, '2024-03-12 16:24:45', '2024-03-12 16:24:45'),
(19, NULL, 'Avery Wilson', '0432167890', 'avery.wilson@example.com', NULL, '241098765432', 'United Kingdom', 'Edinburgh', 'EH1 1RE', '456 Royal Mile', '123 Billing Rd', '789 Shipping Rd', 'active', 1, 0, 0.0000, 0.0000, 15678.8070, 0.0000, '2024-03-12 16:24:45', '2024-03-12 16:24:57'),
(20, NULL, 'Sofia Rodriguez', '0709786421', 'sofia.rodriguez@example.com', NULL, '243109876543', 'Australia', 'Sydney', '2000', '123 George St', '456 Billing Ave', '789 Shipping Ave', 'active', 0, 1, 19355.6784, 0.0000, 0.0000, 0.0000, '2024-03-12 16:24:45', '2024-03-12 16:24:51');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `party_id` bigint(20) UNSIGNED NOT NULL,
  `account_id` bigint(20) UNSIGNED DEFAULT NULL,
  `invoice_id` bigint(20) UNSIGNED DEFAULT NULL,
  `invoice_type` varchar(50) DEFAULT NULL,
  `payment_method` varchar(50) NOT NULL,
  `amount` double(20,4) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `party_id`, `account_id`, `invoice_id`, `invoice_type`, `payment_method`, `amount`, `date`, `note`, `created_at`, `updated_at`) VALUES
(1, 20, 1, 1, 'purchase', 'cash', 5602.0000, '2024-03-11', ' ', '2024-03-12 16:24:47', '2024-03-12 16:24:47'),
(2, 7, 1, 2, 'purchase', 'cash', 2094.2500, '2024-03-12', ' ', '2024-03-12 16:24:48', '2024-03-12 16:24:48'),
(3, 7, 2, 3, 'purchase', 'cash', 6000.0000, '2024-03-13', ' ', '2024-03-12 16:24:49', '2024-03-12 16:24:49'),
(4, 14, 1, 5, 'purchase', 'payoneer', 1350.0000, '2024-03-15', ' ', '2024-03-12 16:24:50', '2024-03-12 16:24:50'),
(5, 20, 1, 6, 'purchase', 'payoneer', 4350.0000, '2024-03-16', ' ', '2024-03-12 16:24:51', '2024-03-12 16:24:51'),
(6, 20, 1, 7, 'purchase', 'check', 8000.0000, '2024-03-17', ' ', '2024-03-12 16:24:52', '2024-03-12 16:24:52'),
(7, 1, 1, 8, 'sale', 'cash', 8691.2500, '2024-03-11', ' ', '2024-03-12 16:24:52', '2024-03-12 16:24:52'),
(8, 2, 1, 9, 'sale', 'cash', 6184.5000, '2024-03-12', ' ', '2024-03-12 16:24:53', '2024-03-12 16:24:53'),
(9, 3, 2, 10, 'sale', 'cash', 7000.0000, '2024-03-13', ' ', '2024-03-12 16:24:54', '2024-03-12 16:24:54'),
(10, 13, 1, 12, 'sale', 'payoneer', 5098.0000, '2024-03-15', ' ', '2024-03-12 16:24:55', '2024-03-12 16:24:55'),
(11, 15, 1, 13, 'sale', 'payoneer', 4350.0000, '2024-03-16', ' ', '2024-03-12 16:24:56', '2024-03-12 16:24:56'),
(12, 19, 1, 14, 'sale', 'check', 1600.0000, '2024-03-17', ' ', '2024-03-12 16:24:57', '2024-03-12 16:24:57'),
(13, 14, 1, 15, 'purchase', 'cash', 505.0000, '2024-03-13', '', '2024-03-13 09:00:29', '2024-03-13 09:00:29');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'manage_dashboard', 'web', '2024-03-12 16:24:20', '2024-03-12 16:24:20'),
(2, 'view_dashboard_overview', 'web', '2024-03-12 16:24:20', '2024-03-12 16:24:20'),
(3, 'upload_file', 'web', '2024-03-12 16:24:21', '2024-03-12 16:24:21'),
(4, 'delete_file', 'web', '2024-03-12 16:24:21', '2024-03-12 16:24:21'),
(5, 'create_user', 'web', '2024-03-12 16:24:21', '2024-03-12 16:24:21'),
(6, 'view_user', 'web', '2024-03-12 16:24:21', '2024-03-12 16:24:21'),
(7, 'update_user', 'web', '2024-03-12 16:24:21', '2024-03-12 16:24:21'),
(8, 'delete_user', 'web', '2024-03-12 16:24:22', '2024-03-12 16:24:22'),
(9, 'create_currency', 'web', '2024-03-12 16:24:22', '2024-03-12 16:24:22'),
(10, 'view_currency', 'web', '2024-03-12 16:24:22', '2024-03-12 16:24:22'),
(11, 'update_currency', 'web', '2024-03-12 16:24:22', '2024-03-12 16:24:22'),
(12, 'delete_currency', 'web', '2024-03-12 16:24:23', '2024-03-12 16:24:23'),
(13, 'create_unit', 'web', '2024-03-12 16:24:23', '2024-03-12 16:24:23'),
(14, 'view_unit', 'web', '2024-03-12 16:24:23', '2024-03-12 16:24:23'),
(15, 'update_unit', 'web', '2024-03-12 16:24:23', '2024-03-12 16:24:23'),
(16, 'delete_unit', 'web', '2024-03-12 16:24:23', '2024-03-12 16:24:23'),
(17, 'create_tax', 'web', '2024-03-12 16:24:23', '2024-03-12 16:24:23'),
(18, 'view_tax', 'web', '2024-03-12 16:24:23', '2024-03-12 16:24:23'),
(19, 'update_tax', 'web', '2024-03-12 16:24:24', '2024-03-12 16:24:24'),
(20, 'delete_tax', 'web', '2024-03-12 16:24:24', '2024-03-12 16:24:24'),
(21, 'create_warehouse', 'web', '2024-03-12 16:24:24', '2024-03-12 16:24:24'),
(22, 'view_warehouse', 'web', '2024-03-12 16:24:24', '2024-03-12 16:24:24'),
(23, 'update_warehouse', 'web', '2024-03-12 16:24:24', '2024-03-12 16:24:24'),
(24, 'delete_warehouse', 'web', '2024-03-12 16:24:24', '2024-03-12 16:24:24'),
(25, 'create_brand', 'web', '2024-03-12 16:24:25', '2024-03-12 16:24:25'),
(26, 'view_brand', 'web', '2024-03-12 16:24:25', '2024-03-12 16:24:25'),
(27, 'update_brand', 'web', '2024-03-12 16:24:25', '2024-03-12 16:24:25'),
(28, 'delete_brand', 'web', '2024-03-12 16:24:25', '2024-03-12 16:24:25'),
(29, 'create_product_category', 'web', '2024-03-12 16:24:25', '2024-03-12 16:24:25'),
(30, 'view_product_category', 'web', '2024-03-12 16:24:26', '2024-03-12 16:24:26'),
(31, 'update_product_category', 'web', '2024-03-12 16:24:26', '2024-03-12 16:24:26'),
(32, 'delete_product_category', 'web', '2024-03-12 16:24:26', '2024-03-12 16:24:26'),
(33, 'create_product', 'web', '2024-03-12 16:24:26', '2024-03-12 16:24:26'),
(34, 'view_product', 'web', '2024-03-12 16:24:27', '2024-03-12 16:24:27'),
(35, 'update_product', 'web', '2024-03-12 16:24:27', '2024-03-12 16:24:27'),
(36, 'delete_product', 'web', '2024-03-12 16:24:27', '2024-03-12 16:24:27'),
(37, 'create_customer', 'web', '2024-03-12 16:24:27', '2024-03-12 16:24:27'),
(38, 'view_customer', 'web', '2024-03-12 16:24:27', '2024-03-12 16:24:27'),
(39, 'update_customer', 'web', '2024-03-12 16:24:28', '2024-03-12 16:24:28'),
(40, 'delete_customer', 'web', '2024-03-12 16:24:28', '2024-03-12 16:24:28'),
(41, 'create_supplier', 'web', '2024-03-12 16:24:28', '2024-03-12 16:24:28'),
(42, 'view_supplier', 'web', '2024-03-12 16:24:28', '2024-03-12 16:24:28'),
(43, 'update_supplier', 'web', '2024-03-12 16:24:28', '2024-03-12 16:24:28'),
(44, 'delete_supplier', 'web', '2024-03-12 16:24:28', '2024-03-12 16:24:28'),
(45, 'create_sale', 'web', '2024-03-12 16:24:29', '2024-03-12 16:24:29'),
(46, 'view_sale', 'web', '2024-03-12 16:24:29', '2024-03-12 16:24:29'),
(47, 'update_sale', 'web', '2024-03-12 16:24:29', '2024-03-12 16:24:29'),
(48, 'delete_sale', 'web', '2024-03-12 16:24:29', '2024-03-12 16:24:29'),
(49, 'create_purchase', 'web', '2024-03-12 16:24:29', '2024-03-12 16:24:29'),
(50, 'view_purchase', 'web', '2024-03-12 16:24:30', '2024-03-12 16:24:30'),
(51, 'update_purchase', 'web', '2024-03-12 16:24:30', '2024-03-12 16:24:30'),
(52, 'delete_purchase', 'web', '2024-03-12 16:24:30', '2024-03-12 16:24:30'),
(53, 'create_account', 'web', '2024-03-12 16:24:30', '2024-03-12 16:24:30'),
(54, 'view_account', 'web', '2024-03-12 16:24:30', '2024-03-12 16:24:30'),
(55, 'update_account', 'web', '2024-03-12 16:24:31', '2024-03-12 16:24:31'),
(56, 'delete_account', 'web', '2024-03-12 16:24:31', '2024-03-12 16:24:31'),
(57, 'create_account_adjustment', 'web', '2024-03-12 16:24:31', '2024-03-12 16:24:31'),
(58, 'view_account_adjustment', 'web', '2024-03-12 16:24:31', '2024-03-12 16:24:31'),
(59, 'update_account_adjustment', 'web', '2024-03-12 16:24:31', '2024-03-12 16:24:31'),
(60, 'delete_account_adjustment', 'web', '2024-03-12 16:24:32', '2024-03-12 16:24:32'),
(61, 'create_payment', 'web', '2024-03-12 16:24:32', '2024-03-12 16:24:32'),
(62, 'view_payment', 'web', '2024-03-12 16:24:32', '2024-03-12 16:24:32'),
(63, 'update_payment', 'web', '2024-03-12 16:24:32', '2024-03-12 16:24:32'),
(64, 'delete_payment', 'web', '2024-03-12 16:24:33', '2024-03-12 16:24:33'),
(65, 'create_payment_method', 'web', '2024-03-12 16:24:33', '2024-03-12 16:24:33'),
(66, 'view_payment_method', 'web', '2024-03-12 16:24:33', '2024-03-12 16:24:33'),
(67, 'update_payment_method', 'web', '2024-03-12 16:24:33', '2024-03-12 16:24:33'),
(68, 'delete_payment_method', 'web', '2024-03-12 16:24:34', '2024-03-12 16:24:34'),
(69, 'view_users', 'web', '2024-03-13 09:09:38', '2024-03-13 09:09:38');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `product_type` varchar(20) NOT NULL,
  `barcode_symbology` varchar(60) NOT NULL,
  `stock_quantity` double(20,4) UNSIGNED DEFAULT NULL,
  `stock_alert_quantity` double(20,4) UNSIGNED DEFAULT NULL,
  `purchase_price` double(20,4) UNSIGNED NOT NULL,
  `sale_price` double(20,4) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `unit_id` bigint(20) UNSIGNED NOT NULL,
  `purchase_unit_id` bigint(20) UNSIGNED NOT NULL,
  `sale_unit_id` bigint(20) UNSIGNED NOT NULL,
  `tax_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tax_type` varchar(20) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `code`, `name`, `slug`, `product_type`, `barcode_symbology`, `stock_quantity`, `stock_alert_quantity`, `purchase_price`, `sale_price`, `parent_id`, `brand_id`, `category_id`, `unit_id`, `purchase_unit_id`, `sale_unit_id`, `tax_id`, `tax_type`, `description`, `created_at`, `updated_at`) VALUES
(1, '02381402314', 'Travel Beg', 'man-travel-beg-black-and-white', 'simple', 'CODE128', 6.0000, NULL, 100.0000, 200.0000, NULL, 2, 1, 7, 7, 7, NULL, 'exclusive', NULL, '2024-03-12 16:24:42', '2024-03-12 16:24:42'),
(2, '0901802114', 'Casual Shoe for Man', 'man-casueal-shoe', 'simple', 'CODE128', 6.0000, 25.0000, 500.0000, 1000.0000, NULL, 2, 12, 8, 8, 8, 2, 'exclusive', NULL, '2024-03-12 16:24:42', '2024-03-12 16:24:42'),
(3, '99080532114', 'Smart Phone Samsung A11 Black', 'smart-phone-samsung-a11', 'simple', 'CODE128', 4.0000, 13.0000, 10000.0000, 12000.0000, NULL, 9, 13, 8, 8, 8, 3, 'inclusive', 'Latest Samsung Smart Phone.', '2024-03-12 16:24:43', '2024-03-12 16:24:43'),
(4, '3453452345', 'tena', 'sdfsd', 'single', 'CODE128', 50.0000, 5.0000, 10.0000, 12.0000, NULL, 16, 13, 1, 1, 1, 1, 'exclusive', 'wdfwdf', '2024-03-13 08:59:21', '2024-03-13 08:59:21');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'beg', 'beg', '2024-03-12 16:24:41', '2024-03-12 16:24:41'),
(2, 'camera', 'camera', '2024-03-12 16:24:41', '2024-03-12 16:24:41'),
(3, 'chocolate', 'chocolate', '2024-03-12 16:24:41', '2024-03-12 16:24:41'),
(4, 'drinks', 'drinks', '2024-03-12 16:24:41', '2024-03-12 16:24:41'),
(5, 'fruits', 'fruits', '2024-03-12 16:24:41', '2024-03-12 16:24:41'),
(6, 'furniture', 'furniture', '2024-03-12 16:24:41', '2024-03-12 16:24:41'),
(7, 'glass', 'glass', '2024-03-12 16:24:41', '2024-03-12 16:24:41'),
(8, 'headphone', 'headphone', '2024-03-12 16:24:41', '2024-03-12 16:24:41'),
(9, 'laptop', 'laptop', '2024-03-12 16:24:42', '2024-03-12 16:24:42'),
(10, 'milk powder', 'milk-powder', '2024-03-12 16:24:42', '2024-03-12 16:24:42'),
(11, 'oil', 'oil', '2024-03-12 16:24:42', '2024-03-12 16:24:42'),
(12, 'shoe', 'shoe', '2024-03-12 16:24:42', '2024-03-12 16:24:42'),
(13, 'smart phone', 'smart-phone', '2024-03-12 16:24:42', '2024-03-12 16:24:42'),
(14, 't shirt', 't-shirt', '2024-03-12 16:24:42', '2024-03-12 16:24:42'),
(15, 'tablet', 'tablet', '2024-03-12 16:24:42', '2024-03-12 16:24:42'),
(16, 'toy', 'toy', '2024-03-12 16:24:42', '2024-03-12 16:24:42'),
(17, 'tv', 'tv', '2024-03-12 16:24:42', '2024-03-12 16:24:42'),
(18, 'watch', 'watch', '2024-03-12 16:24:42', '2024-03-12 16:24:42');

-- --------------------------------------------------------

--
-- Table structure for table `product_stocks`
--

CREATE TABLE `product_stocks` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `warehouse_id` bigint(20) UNSIGNED NOT NULL,
  `stock_quantity` double(20,4) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_stocks`
--

INSERT INTO `product_stocks` (`product_id`, `warehouse_id`, `stock_quantity`) VALUES
(1, 1, 4.0000),
(2, 1, 3.0000),
(3, 1, 1.0000),
(2, 2, 3.0000),
(3, 2, 3.0000),
(1, 2, 2.0000),
(4, 2, 50.0000);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'subscriber', 'web', '2024-03-12 16:24:20', '2024-03-12 16:24:20'),
(2, 'super-admin', 'web', '2024-03-12 16:24:20', '2024-03-12 16:24:20');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(64, 2),
(65, 2),
(66, 2),
(67, 2),
(68, 2),
(69, 2);

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `rate` double(6,3) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `rate`, `created_at`, `updated_at`) VALUES
(1, '1%vat', 1.000, '2024-03-12 16:24:37', '2024-03-12 16:24:37'),
(2, '2.55%tax', 2.550, '2024-03-12 16:24:37', '2024-03-12 16:24:37'),
(3, '14.5%localTax', 14.500, '2024-03-12 16:24:38', '2024-03-12 16:24:38'),
(4, 'vat@5%', 5.000, '2024-03-12 16:24:38', '2024-03-12 16:24:38'),
(5, '4% transit tax', 4.000, '2024-03-12 16:24:38', '2024-03-12 16:24:38');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `short_name` varchar(10) NOT NULL,
  `base_unit_id` bigint(20) UNSIGNED DEFAULT NULL,
  `operator` varchar(15) DEFAULT NULL,
  `operation_value` double UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `short_name`, `base_unit_id`, `operator`, `operation_value`, `created_at`, `updated_at`) VALUES
(1, 'Kilogram', 'kg', NULL, NULL, NULL, '2024-03-12 16:24:37', '2024-03-12 16:24:37'),
(2, 'Grams', 'g', 1, 'divide', 1000, '2024-03-12 16:24:37', '2024-03-12 16:24:37'),
(3, 'Meter', 'm', NULL, NULL, NULL, '2024-03-12 16:24:37', '2024-03-12 16:24:37'),
(4, 'Centimeter', 'cm', 3, 'divide', 100, '2024-03-12 16:24:37', '2024-03-12 16:24:37'),
(5, 'Liter', 'l', NULL, NULL, NULL, '2024-03-12 16:24:37', '2024-03-12 16:24:37'),
(6, 'Mili Liter', 'ml', 5, 'divide', 1000, '2024-03-12 16:24:37', '2024-03-12 16:24:37'),
(7, 'Piece', 'pc', NULL, NULL, NULL, '2024-03-12 16:24:37', '2024-03-12 16:24:37'),
(8, 'Box', 'box', NULL, NULL, NULL, '2024-03-12 16:24:37', '2024-03-12 16:24:37');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'super admin', 'superadmin', 'superadmin@invextry.com', NULL, '$2y$10$2AwOJseiqca3ww9pcSvWUOz/kgg8T045flbIW4yH/Q7RmKGxMFlGu', 'M5tEbqeKNzhSydz3nHdNaXt4CVmoMbHVemShvYsZN4Z3TQw6mUNPCV647JXm', '2024-03-12 16:24:34', '2024-03-12 16:24:34');

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'warehouse 1', 'warehouse1@invextry.com', '01900000000', 'Road no 10, sector 5, F block', '2024-03-12 16:24:38', '2024-03-12 16:24:38'),
(2, 'warehouse 2', 'warehouse2@invextry.com', '01800000000', 'Road no 40, sector 10, K block', '2024-03-12 16:24:38', '2024-03-12 16:24:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `account_adjustments`
--
ALTER TABLE `account_adjustments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_name_unique` (`name`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currencies_name_unique` (`name`),
  ADD UNIQUE KEY `currencies_code_unique` (`code`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `invextry_meta`
--
ALTER TABLE `invextry_meta`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `invoices_invoice_ref_unique` (`invoice_ref`),
  ADD KEY `invoices_party_id_foreign` (`party_id`),
  ADD KEY `invoices_created_by_foreign` (`created_by`),
  ADD KEY `invoices_warehouse_id_foreign` (`warehouse_id`);

--
-- Indexes for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_items_invoice_id_foreign` (`invoice_id`),
  ADD KEY `invoice_items_product_id_foreign` (`product_id`),
  ADD KEY `invoice_items_unit_id_foreign` (`unit_id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_disk_directory_filename_extension_unique` (`disk`,`directory`,`filename`,`extension`),
  ADD KEY `media_aggregate_type_index` (`aggregate_type`),
  ADD KEY `original_media_id` (`original_media_id`);

--
-- Indexes for table `mediables`
--
ALTER TABLE `mediables`
  ADD PRIMARY KEY (`media_id`,`mediable_type`,`mediable_id`,`tag`),
  ADD KEY `mediables_mediable_id_mediable_type_index` (`mediable_id`,`mediable_type`),
  ADD KEY `mediables_tag_index` (`tag`),
  ADD KEY `mediables_order_index` (`order`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `parties`
--
ALTER TABLE `parties`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `parties_phone_unique` (`phone`),
  ADD UNIQUE KEY `parties_email_unique` (`email`),
  ADD UNIQUE KEY `parties_tax_number_unique` (`tax_number`),
  ADD KEY `parties_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_party_id_foreign` (`party_id`),
  ADD KEY `payments_account_id_foreign` (`account_id`),
  ADD KEY `payments_invoice_id_foreign` (`invoice_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_methods_name_unique` (`name`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_code_unique` (`code`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_unit_id_foreign` (`unit_id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_tax_id_foreign` (`tax_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_categories_name_unique` (`name`),
  ADD UNIQUE KEY `product_categories_slug_unique` (`slug`);

--
-- Indexes for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD KEY `product_stocks_product_id_foreign` (`product_id`),
  ADD KEY `product_stocks_warehouse_id_foreign` (`warehouse_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `taxes_name_unique` (`name`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `units_name_unique` (`name`),
  ADD UNIQUE KEY `units_short_name_unique` (`short_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `warehouses_name_unique` (`name`),
  ADD UNIQUE KEY `warehouses_email_unique` (`email`),
  ADD UNIQUE KEY `warehouses_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `account_adjustments`
--
ALTER TABLE `account_adjustments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invextry_meta`
--
ALTER TABLE `invextry_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `invoice_items`
--
ALTER TABLE `invoice_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `parties`
--
ALTER TABLE `parties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `invoices_party_id_foreign` FOREIGN KEY (`party_id`) REFERENCES `parties` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `invoices_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `invoice_items`
--
ALTER TABLE `invoice_items`
  ADD CONSTRAINT `invoice_items_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_items_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `original_media_id` FOREIGN KEY (`original_media_id`) REFERENCES `media` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `mediables`
--
ALTER TABLE `mediables`
  ADD CONSTRAINT `mediables_media_id_foreign` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `parties`
--
ALTER TABLE `parties`
  ADD CONSTRAINT `parties_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `payments_party_id_foreign` FOREIGN KEY (`party_id`) REFERENCES `parties` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `product_categories` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `products_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `products_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `product_stocks`
--
ALTER TABLE `product_stocks`
  ADD CONSTRAINT `product_stocks_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `product_stocks_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
