-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 11, 2023 at 07:32 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecom`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `slider` varchar(255) DEFAULT NULL,
  `coupons` varchar(255) DEFAULT NULL,
  `shipping` varchar(255) DEFAULT NULL,
  `blog` varchar(255) DEFAULT NULL,
  `setting` varchar(255) DEFAULT NULL,
  `returnorder` varchar(255) DEFAULT NULL,
  `review` varchar(255) DEFAULT NULL,
  `orders` varchar(255) DEFAULT NULL,
  `stock` varchar(255) DEFAULT NULL,
  `reports` varchar(255) DEFAULT NULL,
  `alluser` varchar(255) DEFAULT NULL,
  `adminuserrole` varchar(255) DEFAULT NULL,
  `type` int(25) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `brand`, `category`, `product`, `slider`, `coupons`, `shipping`, `blog`, `setting`, `returnorder`, `review`, `orders`, `stock`, `reports`, `alluser`, `adminuserrole`, `type`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$tlQgFjh2./dEG2Q3StdZRezw96193Juw3pseiTmcTpIMy/Uh9FQZu', '0776401426', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, NULL, NULL, 'upload/admin_images/1767704409636632.jpeg', NULL, '2023-06-03 14:44:54'),
(9, 'asma', 'asma@gmail.com', NULL, '$2y$10$DIHgGEjrir0YGD7wntwmJ.QePo.EqJAASgL.dAWJ4rzgYga6.50fK', '0797654321', '1', '1', '1', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, 'upload/admin_images/1767704440056148.jpg', '2023-06-03 13:49:32', '2023-06-03 14:45:25');

-- --------------------------------------------------------

--
-- Table structure for table `blog_posts`
--

CREATE TABLE `blog_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `title_en` varchar(255) NOT NULL,
  `title_ar` varchar(255) NOT NULL,
  `title_slug_en` varchar(255) NOT NULL,
  `title_slug_ar` varchar(255) NOT NULL,
  `post_image` varchar(255) NOT NULL,
  `post_details_en` text NOT NULL,
  `post_details_ar` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_post_categories`
--

CREATE TABLE `blog_post_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `blog_category_name_en` varchar(255) NOT NULL,
  `blog_category_name_ar` varchar(255) NOT NULL,
  `blog_category_slug_en` varchar(255) NOT NULL,
  `blog_category_slug_ar` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name_en` varchar(255) NOT NULL,
  `brand_name_ar` varchar(255) NOT NULL,
  `brand_slug_en` varchar(255) NOT NULL,
  `brand_slug_ar` varchar(255) NOT NULL,
  `brand_image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name_en`, `brand_name_ar`, `brand_slug_en`, `brand_slug_ar`, `brand_image`, `created_at`, `updated_at`) VALUES
(1, 'Apple', 'ابل', 'apple', 'ابل', 'upload/brand/1767877392937786.png', NULL, '2023-06-05 12:34:24'),
(2, 'Samsung', 'سامسونج', 'samsung', 'سامسونج', 'upload/brand/1767877288849744.png', NULL, '2023-06-05 12:32:46'),
(3, 'LG', 'ال جي', 'lg', 'ال-جي', 'upload/brand/1767877346627532.png', NULL, '2023-06-05 12:33:40'),
(4, 'Gucci', 'جوتشي', 'gucci', 'جوتشي', 'upload/brand/1767877368961680.png', NULL, '2023-06-05 12:34:01'),
(5, 'Lacost', 'لاكوست', 'lacost', 'لاكوست', 'upload/brand/1767877360818519.png', NULL, '2023-06-05 12:33:53'),
(6, 'American Eagle', 'امركين ايجل', 'american-eagle', 'امركين-ايجل', 'upload/brand/1767877405092039.png', NULL, '2023-06-05 12:34:35'),
(7, 'Adidas', 'اديداس', 'adidas', 'اديداس', 'upload/brand/1767877419154198.png', NULL, '2023-06-05 12:34:49'),
(8, 'Nike', 'نايك', 'nike', 'نايك', 'upload/brand/1767877339095618.png', NULL, '2023-06-05 12:33:32'),
(9, 'Gaming', 'ألعاب', 'gaming', 'ألعاب', 'upload/brand/1767884530009328.webp', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name_en` varchar(255) NOT NULL,
  `category_name_ar` varchar(255) NOT NULL,
  `category_slug_en` varchar(255) NOT NULL,
  `category_slug_ar` varchar(255) NOT NULL,
  `category_icon` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name_en`, `category_name_ar`, `category_slug_en`, `category_slug_ar`, `category_icon`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', 'ألاكترونيات', 'electronics', 'ألاكترونيات', 'fa fa-desktop', NULL, '2023-06-05 13:39:29'),
(2, 'Fashion', 'موضة', 'fashion', 'موضة', 'fa fa-shopping-bag', NULL, NULL),
(3, 'Appliances', 'الأجهزة المنزلية', 'appliances', 'الأجهزة-المنزلية', 'fa fa-home', NULL, '2023-06-05 13:40:51');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(255) NOT NULL,
  `coupon_discount` int(11) NOT NULL,
  `coupon_validity` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon_name`, `coupon_discount`, `coupon_validity`, `status`, `created_at`, `updated_at`) VALUES
(1, 'LAITH', 20, '2025-11-09', 1, '2023-06-08 18:36:46', NULL);

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
-- Table structure for table `item_categories`
--

CREATE TABLE `item_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `item_name_en` varchar(255) NOT NULL,
  `item_name_ar` varchar(255) NOT NULL,
  `item_slug_en` varchar(255) NOT NULL,
  `item_slug_ar` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_categories`
--

INSERT INTO `item_categories` (`id`, `category_id`, `subcategory_id`, `item_name_en`, `item_name_ar`, `item_slug_en`, `item_slug_ar`, `created_at`, `updated_at`) VALUES
(1, 3, 3, 'Glass Door Refrigerator', 'ثلاجة باب زجاجي', 'glass-door-refrigerator', 'ثلاجة-باب-زجاجي', NULL, NULL),
(2, 3, 3, 'Chest Freezer', 'فريزر', 'chest-freezer', 'فريزر', NULL, NULL),
(3, 3, 3, 'Triple Door Refrigerators', 'ثلاجات ثلاثية الأبواب', 'triple-door-refrigerators', 'ثلاجات-ثلاثية-الأبواب', NULL, NULL),
(4, 3, 1, 'Samsung', 'سامسونج', 'samsung', 'سامسونج', NULL, NULL),
(5, 3, 1, 'Sony', 'سوني', 'sony', 'سوني', NULL, NULL),
(6, 3, 1, 'LG', 'ال جي', 'lg', 'ال-جي', NULL, NULL),
(7, 3, 2, 'Fully Automatic', 'اوتوماتيك كليا', 'fully-automatic', 'اوتوماتيك-كليا', NULL, NULL),
(8, 3, 2, 'Semi Automatic', 'نصف أوتوماتيكي', 'semi-automatic', 'نصف-أوتوماتيكي', NULL, NULL),
(9, 3, 2, 'Top Load Washing Machine', 'غسالة ذات فتحة علوية', 'top-load-washing-machine', 'غسالة-ذات-فتحة-علوية', NULL, NULL),
(10, 1, 8, 'Mouse', 'الفأر', 'mouse', 'الفأر', NULL, NULL),
(11, 1, 8, 'Keyboards', 'لوحات المفاتيح', 'keyboards', 'لوحات-المفاتيح', NULL, NULL),
(12, 1, 8, 'Gaming Consoles', 'لعب لوحات المفاتيح', 'gaming-consoles', 'لعب-لوحات-المفاتيح', NULL, NULL),
(13, 1, 9, 'Gaming Laptops', 'أجهزة الكمبيوتر المحمولة المخصصة للألعاب', 'gaming-laptops', 'أجهزة-الكمبيوتر-المحمولة-المخصصة-للألعاب', NULL, NULL),
(14, 1, 9, 'Desktop PCs', 'أجهزة كمبيوتر سطح المكتب', 'desktop-pcs', 'أجهزة-كمبيوتر-سطح-المكتب', NULL, NULL),
(15, 1, 9, 'Mini PCs', 'أجهزة كمبيوتر صغيرة', 'mini-pcs', 'أجهزة-كمبيوتر-صغيرة', NULL, NULL),
(16, 1, 7, 'Apple', 'ابل', 'apple', 'ابل', NULL, NULL),
(17, 1, 7, 'Samsung', 'سامسونج', 'samsung', 'سامسونج', NULL, NULL),
(18, 1, 7, 'Hawaii', 'هواوي', 'hawaii', 'هواوي', NULL, NULL),
(19, 2, 6, 'girls\' dresses', 'فساتين البنات', 'girls\'-dresses', 'فساتين-البنات', NULL, NULL),
(20, 2, 6, 'T-Shirts', 'تي شيرت', 't-shirts', 'تي-شيرت', NULL, NULL),
(21, 2, 6, 'Kids\' Jeans', 'جينز الاطفال', 'kids\'-jeans', 'جينز-الاطفال', NULL, NULL),
(22, 2, 4, 'Men\'s T Shirts', 'قمصان رجالية', 'men\'s-t-shirts', 'قمصان-رجالية', NULL, NULL),
(23, 2, 4, 'Men\'s Jeans', 'جينز رجالي', 'men\'s-jeans', 'جينز-رجالي', NULL, NULL),
(24, 2, 4, 'Men\'s Footwear', 'أحذية رجالية', 'men\'s-footwear', 'أحذية-رجالية', NULL, NULL),
(25, 2, 5, 'Women\'s Dresses', 'فساتين نسائية', 'women\'s-dresses', 'فساتين-نسائية', NULL, NULL),
(26, 2, 5, 'Women\'s Track Pants', 'سروال رياضي نسائي', 'women\'s-track-pants', 'سروال-رياضي-نسائي', NULL, NULL),
(27, 2, 5, 'Sports Shoes', 'حذاء رياضي', 'sports-shoes', 'حذاء-رياضي', NULL, NULL);

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_05_16_143414_create_sessions_table', 1),
(7, '2023_05_16_145611_create_admins_table', 1),
(8, '2023_05_17_120545_create_brands_table', 1),
(9, '2023_05_17_131235_create_categories_table', 1),
(10, '2023_05_17_134608_create_sub_categories_table', 1),
(11, '2023_05_17_144912_create_item_categories_table', 1),
(12, '2023_05_17_162234_create_products_table', 1),
(13, '2023_05_17_163331_create_multi_imgs_table', 1),
(14, '2023_05_18_184608_create_sliders_table', 2),
(15, '2023_05_21_123334_create_wishlists_table', 3),
(16, '2023_05_21_174833_create_coupons_table', 4),
(17, '2023_05_21_184749_create_ship_divisions_table', 5),
(18, '2023_05_21_192348_create_ship_districts_table', 6),
(19, '2023_05_21_200642_create_ship_states_table', 7),
(20, '2023_05_22_172039_create_shippings_table', 8),
(21, '2023_05_23_150703_create_orders_table', 9),
(22, '2023_05_23_150749_create_order_items_table', 9),
(23, '2023_05_25_134001_create_blog_post_categories_table', 10),
(24, '2023_05_25_140800_create_blog_posts_table', 11),
(25, '2023_05_25_174706_create_site_sittings_table', 12),
(26, '2023_05_25_182925_create_seos_table', 13),
(27, '2023_05_28_141054_create_reviews_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `multi_imgs`
--

CREATE TABLE `multi_imgs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `photo_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_imgs`
--

INSERT INTO `multi_imgs` (`id`, `product_id`, `photo_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'upload/products/multi-image/1767888928750569.webp', '2023-06-05 15:37:45', NULL),
(2, 1, 'upload/products/multi-image/1767888928977447.webp', '2023-06-05 15:37:46', NULL),
(3, 1, 'upload/products/multi-image/1767888929258712.webp', '2023-06-05 15:37:46', NULL),
(4, 1, 'upload/products/multi-image/1767888929474101.webp', '2023-06-05 15:37:46', NULL),
(5, 2, 'upload/products/multi-image/1767890314033525.webp', '2023-06-05 15:59:46', NULL),
(6, 2, 'upload/products/multi-image/1767890314236214.webp', '2023-06-05 15:59:47', NULL),
(7, 2, 'upload/products/multi-image/1767890314467958.webp', '2023-06-05 15:59:47', NULL),
(8, 2, 'upload/products/multi-image/1767890314639237.webp', '2023-06-05 15:59:47', NULL),
(9, 3, 'upload/products/multi-image/1767890532078128.webp', '2023-06-05 16:03:14', NULL),
(10, 3, 'upload/products/multi-image/1767890532253028.webp', '2023-06-05 16:03:15', NULL),
(11, 4, 'upload/products/multi-image/1767890844645673.webp', '2023-06-05 16:08:12', NULL),
(12, 4, 'upload/products/multi-image/1767890844836190.webp', '2023-06-05 16:08:13', NULL),
(13, 4, 'upload/products/multi-image/1767890845079480.webp', '2023-06-05 16:08:13', NULL),
(14, 4, 'upload/products/multi-image/1767890845300725.webp', '2023-06-05 16:08:13', NULL),
(15, 4, 'upload/products/multi-image/1767890845485621.webp', '2023-06-05 16:08:13', NULL),
(16, 5, 'upload/products/multi-image/1767891186751628.webp', '2023-06-05 16:13:39', NULL),
(17, 5, 'upload/products/multi-image/1767891186936760.webp', '2023-06-05 16:13:39', NULL),
(18, 5, 'upload/products/multi-image/1767891187136816.webp', '2023-06-05 16:13:39', NULL),
(19, 5, 'upload/products/multi-image/1767891187323645.webp', '2023-06-05 16:13:39', NULL),
(20, 5, 'upload/products/multi-image/1767891187507313.webp', '2023-06-05 16:13:39', NULL),
(21, 6, 'upload/products/multi-image/1767891797359225.webp', '2023-06-05 16:23:21', NULL),
(22, 6, 'upload/products/multi-image/1767891797538875.webp', '2023-06-05 16:23:21', NULL),
(23, 6, 'upload/products/multi-image/1767891797718186.webp', '2023-06-05 16:23:21', NULL),
(24, 6, 'upload/products/multi-image/1767891797892308.webp', '2023-06-05 16:23:22', NULL),
(25, 6, 'upload/products/multi-image/1767891798116202.webp', '2023-06-05 16:23:22', NULL),
(26, 7, 'upload/products/multi-image/1767892000626247.webp', '2023-06-05 16:26:35', NULL),
(27, 7, 'upload/products/multi-image/1767892000801645.webp', '2023-06-05 16:26:35', NULL),
(28, 7, 'upload/products/multi-image/1767892000980042.webp', '2023-06-05 16:26:35', NULL),
(29, 7, 'upload/products/multi-image/1767892001180248.webp', '2023-06-05 16:26:35', NULL),
(30, 8, 'upload/products/multi-image/1767892186613944.webp', '2023-06-05 16:29:32', NULL),
(31, 8, 'upload/products/multi-image/1767892186804895.webp', '2023-06-05 16:29:32', NULL),
(32, 8, 'upload/products/multi-image/1767892186993887.webp', '2023-06-05 16:29:33', NULL),
(33, 8, 'upload/products/multi-image/1767892187229512.webp', '2023-06-05 16:29:33', NULL),
(34, 9, 'upload/products/multi-image/1767892344473001.webp', '2023-06-05 16:32:03', NULL),
(35, 9, 'upload/products/multi-image/1767892344646526.webp', '2023-06-05 16:32:03', NULL),
(36, 9, 'upload/products/multi-image/1767892344831479.webp', '2023-06-05 16:32:03', NULL),
(37, 9, 'upload/products/multi-image/1767892345012573.webp', '2023-06-05 16:32:03', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `post_code` int(11) NOT NULL,
  `notes` text NOT NULL,
  `payment_type` varchar(255) NOT NULL,
  `payment_method` varchar(255) DEFAULT NULL,
  `transaction_id` varchar(255) DEFAULT NULL,
  `currency` varchar(255) NOT NULL,
  `amount` double(8,2) NOT NULL,
  `order_number` varchar(255) DEFAULT NULL,
  `invoice_no` varchar(255) NOT NULL,
  `order_date` varchar(255) NOT NULL,
  `order_month` varchar(255) NOT NULL,
  `order_year` varchar(255) NOT NULL,
  `confirmed_date` varchar(255) DEFAULT NULL,
  `processing_date` varchar(255) DEFAULT NULL,
  `picked_date` varchar(255) DEFAULT NULL,
  `shipped_date` varchar(255) DEFAULT NULL,
  `delivered_date` varchar(255) DEFAULT NULL,
  `cancel_date` varchar(255) DEFAULT NULL,
  `return_date` varchar(255) DEFAULT NULL,
  `return_order` varchar(255) DEFAULT '0',
  `return_reason` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `division_id`, `district_id`, `state_id`, `name`, `phone`, `email`, `post_code`, `notes`, `payment_type`, `payment_method`, `transaction_id`, `currency`, `amount`, `order_number`, `invoice_no`, `order_date`, `order_month`, `order_year`, `confirmed_date`, `processing_date`, `picked_date`, `shipped_date`, `delivered_date`, `cancel_date`, `return_date`, `return_order`, `return_reason`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1, 1, 'laith', '+1 (439) 327-6821', 'laith@gmail.com', 111223, 'laith laithlaithlaithlaithlaith', 'card_1NGqv5ElEb3nWEN8C7PVdzFs', 'Stripe', 'txn_3NGqv6ElEb3nWEN80nAjOOx5', 'usd', 128.00, '64824fea95048', 'EOS91690046', '08 June 2023', 'June', '2023', NULL, NULL, NULL, NULL, NULL, NULL, '2023 June 2023', '2', 'wrong product', 'delivered', '2023-06-08 19:02:21', '2023-06-08 19:08:46'),
(2, 2, 1, 1, 1, 'laith', '+1 (439) 327-6821', 'laith@gmail.com', 12121, 'wqdadasd', 'Cash On Delivery', 'Cash On Delivery', NULL, 'USD', 65.00, NULL, 'EOS43975358', '08 June 2023', 'June', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, 'confirmed', '2023-06-08 19:09:51', '2023-06-08 19:10:15'),
(3, 1, 1, 1, 1, 'user', '0781234567', 'user@gmail.com', 111223, 'wrasdfversd', 'card_1NIyNxElEb3nWEN8rvqGpejI', 'Stripe', 'txn_3NIyNzElEb3nWEN807GV5ISY', 'usd', 130.00, '648a05f5d06a2', 'EOS23834325', '14 June 2023', 'June', '2023', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, 'pending', '2023-06-14 15:24:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `size` varchar(255) DEFAULT NULL,
  `qty` varchar(255) NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `color`, `size`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, 1, 9, 'Empty', 'Empty', '4', 40.00, '2023-06-08 19:02:25', NULL),
(2, 2, 8, 'Empty', 'Empty', '1', 65.00, '2023-06-08 19:09:54', NULL),
(3, 3, 8, 'Empty', 'Empty', '2', 65.00, '2023-06-14 15:25:03', NULL);

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
  `brand_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) NOT NULL,
  `subsubcategory_id` int(11) NOT NULL,
  `product_name_en` varchar(255) NOT NULL,
  `product_name_ar` varchar(255) NOT NULL,
  `product_slug_en` varchar(255) NOT NULL,
  `product_slug_ar` varchar(255) NOT NULL,
  `product_code` varchar(255) NOT NULL,
  `product_quantity` varchar(255) NOT NULL,
  `product_tags_en` varchar(255) DEFAULT NULL,
  `product_tags_ar` varchar(255) DEFAULT NULL,
  `product_size_en` varchar(255) DEFAULT NULL,
  `product_size_ar` varchar(255) DEFAULT NULL,
  `product_color_en` varchar(255) DEFAULT NULL,
  `product_color_ar` varchar(255) DEFAULT NULL,
  `selling_price` varchar(255) NOT NULL,
  `discount_price` varchar(255) DEFAULT NULL,
  `short_descp_en` varchar(255) NOT NULL,
  `short_descp_ar` varchar(255) NOT NULL,
  `long_descp_en` text NOT NULL,
  `long_descp_ar` text NOT NULL,
  `product_thambnail` varchar(255) NOT NULL,
  `hot_deals` int(11) DEFAULT NULL,
  `featured` int(11) DEFAULT NULL,
  `special_offer` int(11) DEFAULT NULL,
  `special_deals` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `digital_file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `category_id`, `subcategory_id`, `subsubcategory_id`, `product_name_en`, `product_name_ar`, `product_slug_en`, `product_slug_ar`, `product_code`, `product_quantity`, `product_tags_en`, `product_tags_ar`, `product_size_en`, `product_size_ar`, `product_color_en`, `product_color_ar`, `selling_price`, `discount_price`, `short_descp_en`, `short_descp_ar`, `long_descp_en`, `long_descp_ar`, `product_thambnail`, `hot_deals`, `featured`, `special_offer`, `special_deals`, `status`, `created_at`, `updated_at`, `digital_file`) VALUES
(1, 9, 1, 8, 12, 'RFV1 Classic Sup 400 with Remote LCD Screen', 'RFV1 Classic Sup 400 مع شاشة LCD عن بعد', 'rfv1-classic-sup-400-with-remote-lcd-screen', 'RFV1-Classic-Sup-400-مع-شاشة-LCD-عن-بعد', '00001', '40', 'Gaming', 'Gaming', 'null', 'null', 'null', 'null', '40', '30', '1 SUP game console, 1 instruction manual, 1 gamepad', '1 وحدة تحكم ألعاب SUP ، 1 دليل تعليمات ، 1 لوحة ألعاب', '<p>(tm)Classic Sup 400 in 1 Game with Remote LCD Screen with USB Rechargeable TV Output with Mario and Other 400 Games Compatible with All Devices (Red)<br />\r\n&nbsp;</p>', '<p>(tm) لعبة Classic Sup 400 في 1 مع شاشة LCD عن بعد مع مخرج تلفاز USB قابل لإعادة الشحن مع Mario و 400 لعبة أخرى متوافقة مع جميع الأجهزة (أحمر)</p>', 'upload/products/thambnail/1767889946318533.webp', NULL, 1, NULL, NULL, 1, '2023-06-05 15:37:45', '2023-06-05 15:53:56', NULL),
(2, 9, 1, 8, 12, 'Xbox Series S', 'أجهزة إكس بوكس إس', 'xbox-series-s', 'أجهزة-إكس-بوكس-إس', '00002', '50', 'Gaming', 'Gaming', 'Empty', 'Empty', 'Empty', 'Empty', '60', '50', 'Throw down with the Xbox Series S – Gilded Hunter Bundle featuring nine in-game cosmetics and virtual currency for Fortnite, Rocket League, and Fall Guys. Ready to play?', 'تخلص من مجموعة Xbox Series S - Gilded Hunter Bundle التي تضم تسعة مستحضرات تجميل داخل اللعبة وعملة افتراضية لـ Fortnite و Rocket League و Fall Guys. مستعد للعب؟', '<p>Throw down with the Xbox Series S &ndash; Gilded Hunter Bundle featuring nine in-game cosmetics and virtual currency for Fortnite, Rocket League, and Fall Guys. Ready to play? Since you can download and play Fortnite, Rocket League, and Fall Guys for free with Xbox, you can get right to the action. Go all digital and experience next-gen speed and performance at a great price.?Make the most of every gaming minute with Quick Resume, lightning-fast load times, and gameplay of up to 120 FPS&mdash;all powered by Xbox Velocity Architecture. Enjoy digital games from four generations of Xbox, with hundreds of optimized titles that look and play better than ever.<br />\r\n&nbsp;</p>', '<p>تخلص من مجموعة Xbox Series S - Gilded Hunter Bundle التي تضم تسعة مستحضرات تجميل داخل اللعبة وعملة افتراضية لـ Fortnite و Rocket League و Fall Guys. مستعد للعب؟ نظرًا لأنه يمكنك تنزيل Fortnite و Rocket League و Fall Guys ولعبها مجانًا مع Xbox ، يمكنك الانطلاق مباشرة في الحدث. انطلق بكل الوسائل الرقمية واختبر أداء وسرعة الجيل التالي بسعر رائع. حقق أقصى استفادة من كل دقيقة لعب مع Quick Resume وأوقات تحميل فائقة السرعة وتشغيل ألعاب يصل إلى 120 إطارًا في الثانية - جميعها مدعومة من Xbox Velocity Architecture. استمتع بالألعاب الرقمية من أربعة أجيال من Xbox ، مع مئات العناوين المحسّنة التي تبدو وتعمل بشكل أفضل من أي وقت مضى.</p>', 'upload/products/thambnail/1767890313819100.webp', NULL, 1, NULL, NULL, 1, '2023-06-05 15:59:46', NULL, NULL),
(3, 9, 1, 8, 12, 'Playstation 4 Slim Console', 'بلاي ستيشن 4 سليم', 'playstation-4-slim-console', 'بلاي-ستيشن-4-سليم', '0003', '50', 'Gaming', 'Gaming', 'empty', 'empty', 'empty', 'empty', '30', '17', '4 Slim Console', '4 وحدة تحكم رفيعة', '<p>4 Slim Console,Console,Gaming Console,Console, Gamepad, Accessories</p>', '<p>4 وحدة تحكم رفيعة ، وحدة تحكم ، وحدة تحكم ألعاب ، وحدة تحكم ، Gamepad ، ملحقات</p>', 'upload/products/thambnail/1767890531889984.webp', NULL, NULL, 1, NULL, 1, '2023-06-05 16:03:14', NULL, NULL),
(4, 9, 1, 8, 11, 'Aula F3287 Mechanical Wired USB Gaming Keyboard', 'لوحة مفاتيح الألعاب الميكانيكية السلكية Aula F3287', 'aula-f3287-mechanical-wired-usb-gaming-keyboard', 'لوحة-مفاتيح-الألعاب-الميكانيكية-السلكية-Aula-F3287', '00004', '50', 'Gaming', 'Gaming', 'Empty', 'Empty', 'Empty', 'Empty', '60', '55', 'You can improve your overall gaming experience and performance with the Aula F3287 Mechanical Wired USB Gaming Keyboard. Its tenkeyless (TKL) layout is well-suited for compact and minimalist desk arrangements.', 'يمكنك تحسين تجربة اللعب والأداء بشكل عام مع لوحة مفاتيح الألعاب السلكية Aula F3287 الميكانيكية. تصميمه بدون مفاتيح (TKL) مناسب تمامًا للترتيبات المكتبية المدمجة والبسيطة', '<p>You can improve your overall gaming experience and performance with the Aula F3287 Mechanical Wired USB Gaming Keyboard. Its tenkeyless (TKL) layout is well-suited for compact and minimalist desk arrangements. Additionally, this keyboard provides FPS gamers with an ample platform to demonstrate their skills. Employing a standard two-colour injection moulding technique, this keyboard ensures that its fonts remain durable and resistant to both wear and fading. Furthermore, it incorporates high-frequency percussion and clear transmittance to deliver optimal performance.</p>', '<p>يمكنك تحسين تجربة اللعب والأداء بشكل عام مع لوحة مفاتيح الألعاب السلكية Aula F3287 الميكانيكية. تصميمه بدون مفاتيح (TKL) مناسب تمامًا للترتيبات المكتبية المدمجة والبسيطة. بالإضافة إلى ذلك ، توفر لوحة المفاتيح هذه للاعبين من منظور الشخص الأول منصة واسعة لإظهار مهاراتهم. باستخدام تقنية قولبة بالحقن ثنائية اللون ، تضمن لوحة المفاتيح هذه أن تظل خطوطها متينة ومقاومة للتآكل والبهت. علاوة على ذلك ، فهو يشتمل على إيقاع عالي التردد ونفاذية واضحة لتقديم الأداء الأمثل.</p>', 'upload/products/thambnail/1767890844446559.webp', NULL, NULL, NULL, NULL, 1, '2023-06-05 16:08:12', NULL, NULL),
(5, 9, 1, 8, 11, 'Aula F2023 Wired USB Gaming Keyboard  (Black)', 'لوحة مفاتيح USB سلكية للألعاب من Aula F2023 (أسود)', 'aula-f2023-wired-usb-gaming-keyboard--(black)', 'لوحة-مفاتيح-USB-سلكية-للألعاب-من-Aula-F2023-(أسود)', '00005', '100', 'Gaming', 'Gaming', 'empty', 'empty', 'empty', 'empty', '55', '40', 'You can elevate your overall gaming and computing experience with the Aula F2023 Gaming Keyboard.', 'يمكنك رفع مستوى تجربة الألعاب والحوسبة بشكل عام باستخدام لوحة مفاتيح الألعاب Aula F2023.', '<p>You can elevate your overall gaming and computing experience with the Aula F2023 Gaming Keyboard. It provides you with the freedom to enjoy gaming sessions and complete your tasks efficiently. And, featuring highly responsive keys with a delightful tactile feel, this gaming keyboard ensures a seamless and enjoyable typing experience. And, the keys are designed to withstand extensive use, offering long-lasting durability. Moreover, this keyboard offers the choice of mixed colour or monochrome lighting, adding a touch of style and convenient functionality.</p>', '<p>يمكنك رفع مستوى تجربة الألعاب والحوسبة بشكل عام باستخدام لوحة مفاتيح الألعاب Aula F2023. يوفر لك حرية الاستمتاع بجلسات اللعب وإكمال مهامك بكفاءة. وبتميزها بمفاتيح عالية الاستجابة مع إحساس ملموس مبهج ، تضمن لوحة مفاتيح الألعاب هذه تجربة كتابة سلسة وممتعة. كما تم تصميم المفاتيح لتحمل الاستخدام المكثف ، مما يوفر متانة طويلة الأمد. علاوة على ذلك ، توفر لوحة المفاتيح هذه الاختيار بين الألوان المختلطة أو الإضاءة أحادية اللون ، مما يضيف لمسة من الأناقة والوظائف المريحة.</p>', 'upload/products/thambnail/1767891186509458.webp', NULL, 1, NULL, NULL, 1, '2023-06-05 16:13:39', NULL, NULL),
(6, 9, 1, 8, 11, 'HP K300 Wired USB Gaming Keyboard  (Black)', 'لوحة مفاتيح الألعاب السلكية HP K300 USB (أسود)', 'hp-k300-wired-usb-gaming-keyboard--(black)', 'لوحة-مفاتيح-الألعاب-السلكية-HP-K300-USB-(أسود)', '00006', '30', 'Gaming', 'Gaming', 'empty', 'empty', 'empty', 'empty', '80', '75', 'The HP K300 wired gaming keyboard features rainbow backlight.', 'تتميز لوحة مفاتيح الألعاب السلكية HP K300 بإضاءة خلفية بألوان قوس قزح.', '<p>The HP K300 wired gaming keyboard features rainbow backlight. The multicoloured backlit keyboard is easy to work on and looks impressive in the dark. With a stepped-key layout, this keyboard is comfortable to type on. It also features a foldable tripod design that helps adjust the height of the keyboard.</p>', '<p>تتميز لوحة مفاتيح الألعاب السلكية HP K300 بإضاءة خلفية بألوان قوس قزح. يسهل العمل على لوحة المفاتيح ذات الإضاءة الخلفية متعددة الألوان وتبدو رائعة في الظلام. مع تخطيط المفتاح المتدرج ، فإن لوحة المفاتيح هذه مريحة للكتابة عليها. كما أنه يتميز بتصميم ثلاثي القوائم قابل للطي يساعد على ضبط ارتفاع لوحة المفاتيح.</p>', 'upload/products/thambnail/1767891797166489.webp', NULL, 1, NULL, NULL, 1, '2023-06-05 16:23:21', NULL, NULL),
(7, 9, 1, 8, 10, 'Arctic Fox Wired USB Gaming Mouse with Breathing Lights', 'ماوس ألعاب سلكي USB من Arctic Fox مزود بمصابيح التنفس', 'arctic-fox-wired-usb-gaming-mouse-with-breathing-lights', 'ماوس-ألعاب-سلكي-USB-من-Arctic-Fox-مزود-بمصابيح-التنفس', '00007', '40', 'Gaming', 'Gaming', 'Empty', 'Empty', 'Empty', 'Empty', '80', '50', '\"Your rivals? Time to bring them down! Get ready for the ultimate battle with the all-new gaming mouse from Arctic Fox', '\"خصومك؟ حان الوقت لإسقاطهم! استعد للمعركة النهائية باستخدام فأرة الألعاب الجديدة كليًا من Arctic Fox', '<p>&quot;Your rivals? Time to bring them down! Get ready for the ultimate battle with the all-new gaming mouse from Arctic Fox, with a precise, fast-tracking sensor and a grip that makes you feel like it is molded to your hand. Let&#39;s hit the combat zone!&quot; &quot;Tact switch, DPI, Scroll wheel Switch life - 3 million clicks&quot; &quot;1_ Breathing LED light 2_ Up to 3600 DPI tracking 3_ Rubber soft surface grip 4_ Ergonomic Design 5_ Works on most surfaces 6_Hand orientation: Ambidextrous&quot;</p>', '<p>&quot;خصومك؟ حان الوقت لإسقاطهم! استعد للمعركة النهائية مع فأرة الألعاب الجديدة كليًا من Arctic Fox ، مع مستشعر دقيق وسريع التتبع وقبضة تجعلك تشعر وكأنها مصبوبة في يدك. لنضرب منطقة القتال! &quot; &quot;مفتاح اللمس ، DPI ، عجلة التمرير ، عمر التبديل - 3 ملايين نقرة&quot; &quot;1_ مصباح LED للتنفس 2_ تتبع حتى 3600 نقطة في البوصة 3_ قبضة سطح مطاطية ناعمة 4_ تصميم مريح 5_ يعمل على معظم الأسطح 6_ اتجاه اليد: مضبوط&quot;</p>', 'upload/products/thambnail/1767892000391615.webp', 1, 1, NULL, NULL, 1, '2023-06-05 16:26:35', NULL, NULL),
(8, 9, 1, 8, 10, 'Aula Gaming Wired Mouse Ultra-Lightweight Honeycomb Computer', 'ماوس ألعاب Aula سلكي خفيف الوزن للغاية على شكل قرص العسل', 'aula-gaming-wired-mouse-ultra-lightweight-honeycomb-computer', 'ماوس-ألعاب-Aula-سلكي-خفيف-الوزن-للغاية-على-شكل-قرص-العسل', '00008', '100', 'Gaming', 'Gaming', 'Empty', 'Empty', 'Empty', 'Empty', '70', '65', 'You can enjoy an enhanced gaming experience with the Aula Gaming Mouse, which is designed to optimise your gameplay.', 'يمكنك الاستمتاع بتجربة ألعاب محسّنة مع ماوس ألعاب Aula ، المصمم لتحسين أسلوب اللعب الخاص بك.', '<p>You can enjoy an enhanced gaming experience with the Aula Gaming Mouse, which is designed to optimise your gameplay. Weighing less than 80 g, this mouse enhances your tactile sensations, allowing for improved control and precision. And, crafted from high-quality materials, this gaming mouse ensures durability and strength that will withstand the demands of intense gaming sessions. Furthermore, the ergonomic shape of this gaming mouse is carefully designed to provide a comfortable and precise fit for your hands, eliminating any discomfort or strain that may arise during extended gaming sessions.</p>', '<p>يمكنك الاستمتاع بتجربة ألعاب محسّنة مع ماوس ألعاب Aula ، المصمم لتحسين أسلوب اللعب الخاص بك. يزن هذا الماوس أقل من 80 جرامًا ، ويعزز أحاسيسك اللمسية ، مما يسمح بتحسين التحكم والدقة. ومصنوع من مواد عالية الجودة ، يضمن ماوس الألعاب هذا المتانة والقوة التي ستتحمل متطلبات جلسات الألعاب المكثفة. علاوة على ذلك ، تم تصميم الشكل المريح لماوس الألعاب هذا بعناية لتوفير ملاءمة مريحة ودقيقة ليديك ، والقضاء على أي إزعاج أو إجهاد قد ينشأ أثناء جلسات اللعب الممتدة.</p>', 'upload/products/thambnail/1767892186418459.webp', NULL, 1, NULL, 1, 1, '2023-06-05 16:29:32', NULL, NULL),
(9, 9, 1, 8, 10, 'RPM Euro Games Wireless Gaming Mouse | Rechargeable Battery', 'ماوس الألعاب اللاسلكي RPM Euro Games | بطارية قابلة لإعادة الشحن', 'rpm-euro-games-wireless-gaming-mouse-|-rechargeable-battery', 'ماوس-الألعاب-اللاسلكي-RPM-Euro-Games-|-بطارية-قابلة-لإعادة-الشحن', '00009', '96', 'Gaming', 'Empty', 'Empty', 'Empty', 'Empty', 'Empty', '50', '40', '• RECHARGEABLE & PORTABLE - Built-in 500mAh rechargeable battery, easy charging by included USB cable.', '• قابلة لإعادة الشحن وقابلة للحمل - بطارية مدمجة 500 مللي أمبير قابلة لإعادة الشحن ، سهلة الشحن عن طريق كابل USB المرفق.', '<p>&bull; RECHARGEABLE &amp; PORTABLE - Built-in 500mAh rechargeable battery, easy charging by included USB cable. Adopt intelligent energy-saving design, standby time is long with auto sleep mode. &bull; Upto 2400 DPI- It gives you multiple choices to set the sensitivity parameters suiting your style in best way from 800-1600-2400 DPI. &bull; 6-COLOR LED LIGHT?6 different colors LED light that changes while in use, makes your mouse multi-colored and cool colorful.(Note: LED lights change colors automatically, and will not stay in one color, it will change regularly with 6 colors. &bull; NO EXTERNAL BATTERY?- RPM Euro Games wireless mouse has an in-built Rechargeable Li-ion battery and does not require any external battery. Once the battery drains you can play it in wired connection simultaneously charging the mouse, hence there is no wait time for charging it differently or waiting to get new batteries. Plug &amp; play with Auto-Sleep Feature : Integrated time-sensing technology will automatically place your mouse in sleep mode if it is left idle. &bull; DUAL GAMING MODE?- Advanced gaming grade 2.4 Wireless connection or micro usb cord wired connection experience zero delay between your thoughts and actions.</p>', '<p>&bull; قابلة لإعادة الشحن وقابلة للحمل - بطارية مدمجة 500 مللي أمبير قابلة لإعادة الشحن ، سهلة الشحن عن طريق كابل USB المرفق. اعتماد تصميم ذكي موفر للطاقة ، وقت الانتظار طويل مع وضع السكون التلقائي. &bull; حتى 2400 نقطة في البوصة - يمنحك خيارات متعددة لتعيين معلمات الحساسية التي تناسب أسلوبك بأفضل طريقة تتراوح من 800-1600-2400 نقطة في البوصة. &bull; مصباح LED 6 ألوان - 6 ألوان مختلفة ضوء LED يتغير أثناء الاستخدام ، يجعل الماوس متعدد الألوان ولونًا رائعًا. (ملاحظة: مصابيح LED تغير الألوان تلقائيًا ، ولن تبقى في لون واحد ، ستتغير بانتظام مع 6 ألوان. &bull; لا توجد بطارية خارجية؟ - يحتوي الماوس اللاسلكي RPM Euro Games على بطارية Li-ion مدمجة قابلة لإعادة الشحن ولا تتطلب أي بطارية خارجية. بمجرد نفاد البطارية ، يمكنك تشغيلها في اتصال سلكي في نفس الوقت لشحن الماوس ، ومن هنا لا يوجد وقت انتظار لشحنه بشكل مختلف أو انتظار الحصول على بطاريات جديدة. قم بالتوصيل والتشغيل باستخدام ميزة السكون التلقائي: ستعمل تقنية استشعار الوقت المدمجة على وضع الماوس تلقائيًا في وضع السكون إذا ترك في وضع الخمول. &bull; وضع اللعب المزدوج؟ - متقدم تجربة اتصال لاسلكي من الدرجة 2.4 للألعاب أو اتصال سلكي بسلك USB صغير لا يوجد تأخير بين أفكارك وأفعالك.</p>', 'upload/products/thambnail/1767892344231024.webp', NULL, 1, NULL, 1, 1, '2023-06-05 16:32:03', '2023-06-08 19:04:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `comment` text NOT NULL,
  `summary` varchar(255) NOT NULL,
  `rating` int(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `user_id`, `comment`, `summary`, `rating`, `status`, `created_at`, `updated_at`) VALUES
(1, 8, 2, 'nice product', 'nice', 4, '1', '2023-06-08 19:12:25', '2023-06-08 19:12:37');

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_author` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `google_analytics` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `meta_title`, `meta_author`, `meta_keyword`, `meta_description`, `google_analytics`, `created_at`, `updated_at`) VALUES
(1, 'Online Shop', 'Ecommerce', 'bast online shop , best ecommerce site , best ecommerce product', 'Laith Ashraf Ali Abu Shanab', 'window.dataLayer = window.dataLayer || [];\r\n  function gtag() { dataLayer.push(arguments); }\r\n  gtag(\'js\', new Data());\r\n  gtag(\'config\', \'UA-84816806-1\');', NULL, '2023-05-25 15:45:43');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('5ZnOjaXKTzkhyXTIau6LjKhwV9R1x4iLjzwEyMrh', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36 Edg/114.0.1823.51', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiN0RRZjI2T2FrMUlxVmFRem43dUxkaEhKcUkzeWYxVU1jM1UyUTJ0aCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9teWNhcnQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUyOiJsb2dpbl9hZG1pbl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxOToicGFzc3dvcmRfaGFzaF9hZG1pbiI7czo2MDoiJDJ5JDEwJHRsUWdGamgyLi9kRUcyUTNTdGRaUmV6dzk2MTkzSnV3M3BzZWlUbWNUcElNeS9VaDlGUVp1IjtzOjQ6ImNhcnQiO2E6MTp7czo3OiJkZWZhdWx0IjtPOjI5OiJJbGx1bWluYXRlXFN1cHBvcnRcQ29sbGVjdGlvbiI6Mjp7czo4OiIAKgBpdGVtcyI7YToxOntzOjMyOiIxNWUxMDg3N2NhZDM1YWM0NzZkYjU3YTRjZmFiMzYyYyI7TzozMjoiR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0iOjk6e3M6NToicm93SWQiO3M6MzI6IjE1ZTEwODc3Y2FkMzVhYzQ3NmRiNTdhNGNmYWIzNjJjIjtzOjI6ImlkIjtzOjE6IjgiO3M6MzoicXR5IjtpOjE7czo0OiJuYW1lIjtzOjYwOiJBdWxhIEdhbWluZyBXaXJlZCBNb3VzZSBVbHRyYS1MaWdodHdlaWdodCBIb25leWNvbWIgQ29tcHV0ZXIiO3M6NToicHJpY2UiO2Q6NjU7czo3OiJvcHRpb25zIjtPOjM5OiJHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbU9wdGlvbnMiOjI6e3M6ODoiACoAaXRlbXMiO2E6NDp7czo1OiJpbWFnZSI7czo0NzoidXBsb2FkL3Byb2R1Y3RzL3RoYW1ibmFpbC8xNzY3ODkyMTg2NDE4NDU5LndlYnAiO3M6NDoic2l6ZSI7czoxMzoiLUNob29zZSBTaXplLSI7czo1OiJjb2xvciI7czoxNDoiLUNob29zZSBDb2xvci0iO3M6NzoicHJvZHVjdCI7czo2MDoiYXVsYS1nYW1pbmctd2lyZWQtbW91c2UtdWx0cmEtbGlnaHR3ZWlnaHQtaG9uZXljb21iLWNvbXB1dGVyIjt9czoyODoiACoAZXNjYXBlV2hlbkNhc3RpbmdUb1N0cmluZyI7YjowO31zOjQ5OiIAR2xvdWRlbWFuc1xTaG9wcGluZ2NhcnRcQ2FydEl0ZW0AYXNzb2NpYXRlZE1vZGVsIjtOO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQB0YXhSYXRlIjtpOjIxO3M6NDE6IgBHbG91ZGVtYW5zXFNob3BwaW5nY2FydFxDYXJ0SXRlbQBpc1NhdmVkIjtiOjA7fX1zOjI4OiIAKgBlc2NhcGVXaGVuQ2FzdGluZ1RvU3RyaW5nIjtiOjA7fX19', 1687347448);

-- --------------------------------------------------------

--
-- Table structure for table `ship_districts`
--

CREATE TABLE `ship_districts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `districts_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_districts`
--

INSERT INTO `ship_districts` (`id`, `division_id`, `districts_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'laith', '2023-06-08 18:38:06', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ship_divisions`
--

CREATE TABLE `ship_divisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_divisions`
--

INSERT INTO `ship_divisions` (`id`, `division_name`, `created_at`, `updated_at`) VALUES
(1, 'laith', '2023-06-08 18:38:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ship_states`
--

CREATE TABLE `ship_states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `division_id` bigint(20) UNSIGNED NOT NULL,
  `district_id` bigint(20) UNSIGNED NOT NULL,
  `state_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ship_states`
--

INSERT INTO `ship_states` (`id`, `division_id`, `district_id`, `state_name`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'laith', '2023-06-08 18:38:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_sittings`
--

CREATE TABLE `site_sittings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `phone_one` varchar(255) DEFAULT NULL,
  `phone_two` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `company_address` varchar(255) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `linkedin` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site_sittings`
--

INSERT INTO `site_sittings` (`id`, `logo`, `phone_one`, `phone_two`, `email`, `company_name`, `company_address`, `facebook`, `twitter`, `linkedin`, `youtube`, `created_at`, `updated_at`) VALUES
(1, 'upload/logo/1766890907710692.png', '0791234567', '0781234567', 'admin@gmail.com', 'Ecommerce Online Shop', 'Jordan', 'https://www.facebook.com/', 'https://twitter.com/home', 'https://www.linkedin.com/jobs/', 'https://www.youtube.com/', NULL, '2023-05-25 15:14:38');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `desc` text DEFAULT NULL,
  `slider_image` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `desc`, `slider_image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'NEW COLLECTION', 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit', 'upload/slider/1766327853045883.jpg', 1, NULL, '2023-05-19 12:57:00'),
(4, 'WOMEN FASHION', 'Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit', 'upload/slider/1766261120123167.jpg', 1, NULL, '2023-05-19 12:56:58'),
(5, 'test', 'test', 'upload/slider/1766327714260098.jpg', 0, NULL, '2023-05-19 12:56:44');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name_en` varchar(255) NOT NULL,
  `subcategory_name_ar` varchar(255) NOT NULL,
  `subcategory_slug_en` varchar(255) NOT NULL,
  `subcategory_slug_ar` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `category_id`, `subcategory_name_en`, `subcategory_name_ar`, `subcategory_slug_en`, `subcategory_slug_ar`, `created_at`, `updated_at`) VALUES
(1, 3, 'Televisions', 'شاشات عرض', 'televisions', 'شاشات-عرض', NULL, NULL),
(2, 3, 'Washing Machines', 'غسالة ملابس', 'washing-machines', 'غسالة-ملابس', NULL, NULL),
(3, 3, 'Refrigerators', 'ثلاجات', 'refrigerators', 'ثلاجات', NULL, NULL),
(4, 2, 'Men', 'رجالي', 'men', 'رجالي', NULL, NULL),
(5, 2, 'Women', 'نسائي', 'women', 'نسائي', NULL, NULL),
(6, 2, 'Kids', 'ولادي', 'kids', 'ولادي', NULL, NULL),
(7, 1, 'Mobile', 'هواتف', 'mobile', 'هواتف', NULL, NULL),
(8, 1, 'Gaming', 'الألعاب', 'gaming', 'الألعاب', NULL, NULL),
(9, 1, 'LapTop And Pc', 'لاب توب و اجهزة كمبيوتر', 'laptop-and-pc', 'لاب-توب-و-اجهزة-كمبيوتر', NULL, '2023-06-05 13:17:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `last_seen` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `last_seen`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@gmail.com', '0781234567', '2023-06-18 10:10:22', NULL, '$2y$10$NWa7Ey2vrJLPYwTbv9m3AuQP8Up./dKihrRchEjyXNvBFTHVLTQP.', NULL, NULL, NULL, NULL, NULL, '202305182042categories-phone.jpeg', '2023-05-18 10:22:09', '2023-06-18 07:10:22'),
(2, 'laith', 'laith@gmail.com', '+1 (439) 327-6821', '2023-06-08 22:17:58', NULL, '$2y$10$MmNlwqo/Yshm0pS8mPuRbOHTjsAFVRtio7ANMpe8vy.rnk2L1FZ1u', NULL, NULL, NULL, NULL, NULL, '202306082135categories-heqoja@mailinator.com.jpeg', '2023-05-27 12:18:11', '2023-06-08 19:17:58'),
(3, 'Test', 'Test@gmail.com', '12313123', '2023-06-04 14:31:36', NULL, '$2y$10$JQUyo25RGMV1Hbj8WLGWKehphDCmpwVhFjkkY44OStkUEWzdqdH1e', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-04 11:31:23', '2023-06-04 11:31:36'),
(4, 'Laith Ashraf', 'ashraf@gmail.com', '0791234567', NULL, NULL, '$2y$10$WMWusACDfeuKsvEwCP7B6OLwKZn3AcUlOP.iNb5.fRpeQYflD1Kg2', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-04 11:33:00', '2023-06-04 11:33:00'),
(5, 'ahmad', 'ahmad@gmail.com', '0987654332', '2023-06-04 14:34:49', NULL, '$2y$10$FzxikV/xkpQx7uaoCrJ/u.9dkkFDZWo2RSGn7um.PLrppl15fTlti', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-04 11:34:48', '2023-06-04 11:34:49');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 2, 9, '2023-06-08 18:30:03', NULL),
(2, 1, 6, '2023-06-18 07:10:25', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `blog_posts`
--
ALTER TABLE `blog_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_post_categories`
--
ALTER TABLE `blog_post_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `item_categories`
--
ALTER TABLE `item_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `ship_districts`
--
ALTER TABLE `ship_districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_divisions`
--
ALTER TABLE `ship_divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ship_states`
--
ALTER TABLE `ship_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site_sittings`
--
ALTER TABLE `site_sittings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `blog_posts`
--
ALTER TABLE `blog_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_post_categories`
--
ALTER TABLE `blog_post_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_categories`
--
ALTER TABLE `item_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `multi_imgs`
--
ALTER TABLE `multi_imgs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ship_districts`
--
ALTER TABLE `ship_districts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ship_divisions`
--
ALTER TABLE `ship_divisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ship_states`
--
ALTER TABLE `ship_states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `site_sittings`
--
ALTER TABLE `site_sittings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
