-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 28, 2023 at 06:33 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wassel_delivery_website`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'main food'),
(2, 'sweets'),
(3, 'drinks');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meals`
--

CREATE TABLE `meals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meals`
--

INSERT INTO `meals` (`id`, `menu_id`, `name`, `image`, `price`) VALUES
(3, 2, 'Shawarma', '1666518775.jfif', '5.00'),
(5, 6, 'mindi', '1666521098.jpg', '15.00'),
(6, 6, 'biryani', '1666521133.jpg', '25.00'),
(7, 6, 'Kabsa', '1666521177.jpg', '13.00'),
(8, 5, 'mushkil', '1666521429.jpg', '30.00'),
(9, 5, 'waffle', '1666521524.jpg', '6.00'),
(11, 3, 'preheated pizza', '1666521803.jfif', '15.00'),
(12, 3, 'pepperoni', '1666521948.jfif', '10.00'),
(13, 3, 'vegetable pizza', '1666521992.jfif', '30.00'),
(14, 3, 'cheese pizza', '1666522033.jfif', '14.00'),
(15, 7, 'Shawarma sandwich', '1666522548.jpg', '1.50'),
(16, 7, 'Shawarma meal', '1666522593.jpg', '13.00'),
(17, 7, 'Shawarma Double', '1666522624.jpg', '16.00'),
(19, 7, 'Toast', '1666683341.png', '10.00'),
(22, 5, 'Lazy Cake', '1666791497.jpg', '15.00'),
(23, 5, 'Stuffed Gateau', '1666791562.jpg', '20.00'),
(24, 2, 'Crispy Chicken', '1666791719.jpg', '6.00'),
(25, 2, 'Shish Taooq', '1666791851.jpg', '8.00'),
(26, 2, 'Broasted', '1666791926.jfif', '18.00'),
(27, 4, 'Shawerma', '1666792157.jpg', '5.00'),
(28, 4, 'Broasted', '1666792195.jpg', '20.00'),
(29, 4, 'Shish Taooq', '1666792257.jpg', '7.00'),
(30, 4, 'Grilled Chicken', '1666792370.jpg', '15.00');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `restaurant_id`) VALUES
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2022_10_20_120525_create_categories_table', 1),
(5, '2022_10_20_123006_create_restaurants_table', 1),
(6, '2022_10_20_124100_create_users_table', 1),
(7, '2022_10_20_130311_create_menus_table', 1),
(8, '2022_10_20_131003_create_meals_table', 1),
(9, '2022_10_20_131533_create_order_details_table', 1),
(10, '2022_10_20_131840_create_order_items_table', 1),
(11, '2022_10_23_080048_create_contacts_table', 1),
(12, '2014_10_12_100000_create_password_resets_table', 1),
(13, '2019_08_19_000000_create_failed_jobs_table', 1),
(14, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(15, '2022_10_20_120525_create_categories_table', 1),
(16, '2022_10_20_123006_create_restaurants_table', 1),
(17, '2022_10_20_124100_create_users_table', 1),
(18, '2022_10_20_130311_create_menus_table', 1),
(19, '2022_10_20_131003_create_meals_table', 1),
(20, '2022_10_20_131533_create_order_details_table', 1),
(21, '2022_10_20_131840_create_order_items_table', 1),
(22, '2022_10_23_080048_create_contacts_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `restaurant_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `status` enum('Pending','Preparing','on the way','delivered') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `restaurant_id`, `user_id`, `total`, `status`, `note`, `address`, `phone`, `created_at`, `updated_at`) VALUES
(39, 2, 18, '132.00', 'Preparing', 'salt', 'add cheese', '0790152544', '2022-10-31 07:22:40', '2022-10-31 07:24:13'),
(40, 3, 18, '44.00', 'Pending', 'gg', 'gg', '0790152544', '2023-01-03 13:06:04', '2023-01-03 13:06:04');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_details_id` bigint(20) UNSIGNED NOT NULL,
  `meal_id` bigint(20) UNSIGNED NOT NULL,
  `amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_details_id`, `meal_id`, `amount`) VALUES
(49, 39, 26, 1),
(50, 39, 25, 1),
(51, 39, 24, 4),
(52, 40, 13, 1),
(53, 40, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `latitude` double(10,6) NOT NULL DEFAULT 0.000000,
  `longitude` double(10,6) NOT NULL DEFAULT 0.000000,
  `delivery_fee` decimal(8,2) NOT NULL DEFAULT 0.00,
  `status` enum('Available','Closed','Busy') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Available',
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `image`, `location`, `phone`, `latitude`, `longitude`, `delivery_fee`, `status`, `category_id`, `created_at`, `updated_at`) VALUES
(2, 'Golden Meal', '20221026115453.jpg', 'salt', '079057222', 32.058662, 35.746959, '4.00', 'Available', 1, NULL, '2022-10-26 08:54:53'),
(3, 'Qaysar Pizza', '20221026120710.jpg', 'Dababneh Tunnel, Salt', '0655422389', 32.059692, 35.746317, '4.00', 'Available', 1, NULL, '2022-10-26 09:07:10'),
(4, 'Fahim Wa Lahim', '20221026120907.jpg', ' Al Yarmouk, As-Salt', '06554223898', 32.035493, 35.728815, '2.00', 'Available', 1, NULL, '2022-10-26 09:09:07'),
(5, 'halwayat akhu dunya', '20221026121242.jpg', 'Q. Rania St., As-Salt', '06522422389', 32.046128, 35.742309, '3.00', 'Available', 2, NULL, '2022-10-26 09:12:42'),
(6, 'bayt alruz', '20221026124928.jpg', 'As-Salt', '0652387922', 32.036620, 35.739696, '4.00', 'Available', 1, NULL, '2022-10-26 09:49:28'),
(7, 'AlMousalli', '20221026124208.jpg', 'Amman Medical City Street', '0655422389', 31.963364, 35.856258, '8.00', 'Available', 1, NULL, '2022-10-26 09:42:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '20221026132709.png',
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `restaurant_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `image`, `email`, `email_verified_at`, `phone`, `password`, `type`, `restaurant_id`, `created_at`, `updated_at`) VALUES
(1, 'bara', '20221026132709.png', 'barafabusaleem@gmail.com', NULL, '0790152556', '$2y$10$Y17NZAuQCJYMrXFf9DKAbuCO35TI.te8VMpcParQl9uL4lIIWo2N6', 'admin', 3, '2022-10-23 03:40:07', '2022-10-26 10:27:09'),
(4, 'Ahmad', '20221026132709.png', 'ahmad@yahoo.com', NULL, '0', '$2y$10$B9Mv5NUNSTyjOwFhaTcdRupBLB2kSPZEhd4Z.qa9vXmQBcNQ7oNUC', 'owner', 6, '2022-10-23 04:28:33', '2022-10-23 04:28:33'),
(5, 'yazan', '', 'yaxan@yahoo.com', NULL, '0', '$2y$10$LdIS7tqW3jxa.0zi3unJQ.a68M/lokGT/UVYEp3U6PvaE0wMyS8Hm', 'owner', 5, '2022-10-23 04:34:56', '2022-10-23 04:34:56'),
(6, 'hala', '', 'hala@yahoo.com', NULL, '0', '$2y$10$TWYR4f0EUpVokQWCAaPik./waOR0HIkXWLHKURBvWIIE0Fbyt4ywO', 'owner', 7, '2022-10-23 04:41:47', '2022-10-23 04:41:47'),
(7, 'majd', '', 'majd@yahoo.com', NULL, '0', '$2y$10$o1510jAFYkCaa5eK7SLqse60EQQs1ZkbkUFKcQgZbowTswZ1Xcf32', 'owner', 2, '2022-10-23 04:49:01', '2022-10-23 04:49:01'),
(17, 'hamza', '20221026132709.png', 'hamza@yahoo.com', NULL, '0790152556', '$2y$10$4maFEEV3hlRpGwpKTyRN1ujYDWCVggJ2yKiYjevKRHA3bUjCH4ayK', 'admin', NULL, '2022-10-26 10:30:04', '2022-10-30 19:42:59'),
(18, 'muna', '20221030213344.png', 'muna@yahoo.com', NULL, '0790152544', '$2y$10$4I88cWC1v6Xary68efnrLek49KlI8BY3P3NhCoJhF921l9dYfGlq2', 'user', 4, '2022-10-26 10:31:25', '2022-10-30 19:33:44'),
(19, 'omar', '20221026132709.png', 'omar@yahoo.com', NULL, '0790152556', '12345678', 'owner', NULL, '2022-10-30 19:58:52', '2022-10-30 19:58:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meals_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menus_restaurant_id_foreign` (`restaurant_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_restaurant_id_foreign` (`restaurant_id`),
  ADD KEY `order_details_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_details_id_foreign` (`order_details_id`),
  ADD KEY `order_items_meal_id_foreign` (`meal_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `restaurants_category_id_foreign` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_restaurant_id_foreign` (`restaurant_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meals`
--
ALTER TABLE `meals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `meals`
--
ALTER TABLE `meals`
  ADD CONSTRAINT `meals_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_meal_id_foreign` FOREIGN KEY (`meal_id`) REFERENCES `meals` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_items_order_details_id_foreign` FOREIGN KEY (`order_details_id`) REFERENCES `order_details` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_restaurant_id_foreign` FOREIGN KEY (`restaurant_id`) REFERENCES `restaurants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
