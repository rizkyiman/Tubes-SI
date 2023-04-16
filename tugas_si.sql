-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2023 at 04:21 PM
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
-- Database: `tugas_si`
--

-- --------------------------------------------------------

--
-- Table structure for table `ekspors`
--

CREATE TABLE `ekspors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_petikemas` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `impors`
--

CREATE TABLE `impors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_petikemas` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kapals`
--

CREATE TABLE `kapals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kapal` varchar(255) NOT NULL,
  `tujuan` varchar(255) NOT NULL,
  `gudang_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2023_04_05_161022_create_roles_table', 1),
(5, '2023_04_05_161023_create_users_table', 1),
(6, '2023_04_05_161511_add_roles_to_users', 1),
(7, '2023_04_05_162906_create_perusahaans_table', 1),
(8, '2023_04_05_173712_create_petikemas_table', 1),
(9, '2023_04_05_181203_create_impors_table', 1),
(10, '2023_04_05_181204_create_ekspors_table', 1),
(11, '2023_04_05_181205_create_pergudangans_table', 1),
(12, '2023_04_05_183027_create_kapals_table', 1),
(13, '2023_04_06_052546_create_truckings_table', 1),
(14, '2023_04_06_052841_create_riwayats_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pergudangans`
--

CREATE TABLE `pergudangans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `row` int(11) NOT NULL,
  `cell` int(11) NOT NULL,
  `waktu` date NOT NULL,
  `id_ekspor` bigint(20) UNSIGNED NOT NULL,
  `id_impor` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `perusahaans`
--

CREATE TABLE `perusahaans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_perusahaan` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `petikemas`
--

CREATE TABLE `petikemas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `muatan` varchar(255) NOT NULL,
  `golongan` varchar(255) NOT NULL,
  `warna` varchar(255) NOT NULL,
  `berat_muatan` varchar(255) NOT NULL,
  `catatan` varchar(255) NOT NULL,
  `perusahaan_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwayats`
--

CREATE TABLE `riwayats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` date NOT NULL,
  `kapal_id` bigint(20) UNSIGNED NOT NULL,
  `trucking_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `truckings`
--

CREATE TABLE `truckings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_sopir` varchar(100) NOT NULL,
  `nopol` varchar(100) NOT NULL,
  `tujuan` varchar(100) NOT NULL,
  `keberangkatan` date NOT NULL,
  `gudang_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ekspors`
--
ALTER TABLE `ekspors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ekspors_id_petikemas_foreign` (`id_petikemas`);

--
-- Indexes for table `impors`
--
ALTER TABLE `impors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `impors_id_petikemas_foreign` (`id_petikemas`);

--
-- Indexes for table `kapals`
--
ALTER TABLE `kapals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kapals_gudang_id_foreign` (`gudang_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pergudangans`
--
ALTER TABLE `pergudangans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pergudangans_id_ekspor_foreign` (`id_ekspor`),
  ADD KEY `pergudangans_id_impor_foreign` (`id_impor`);

--
-- Indexes for table `perusahaans`
--
ALTER TABLE `perusahaans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `perusahaans_user_id_foreign` (`user_id`);

--
-- Indexes for table `petikemas`
--
ALTER TABLE `petikemas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `petikemas_perusahaan_id_foreign` (`perusahaan_id`);

--
-- Indexes for table `riwayats`
--
ALTER TABLE `riwayats`
  ADD PRIMARY KEY (`id`),
  ADD KEY `riwayats_kapal_id_foreign` (`kapal_id`),
  ADD KEY `riwayats_trucking_id_foreign` (`trucking_id`),
  ADD KEY `riwayats_user_id_foreign` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `truckings`
--
ALTER TABLE `truckings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `truckings_gudang_id_foreign` (`gudang_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ekspors`
--
ALTER TABLE `ekspors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `impors`
--
ALTER TABLE `impors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kapals`
--
ALTER TABLE `kapals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pergudangans`
--
ALTER TABLE `pergudangans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `perusahaans`
--
ALTER TABLE `perusahaans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `petikemas`
--
ALTER TABLE `petikemas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `riwayats`
--
ALTER TABLE `riwayats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `truckings`
--
ALTER TABLE `truckings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ekspors`
--
ALTER TABLE `ekspors`
  ADD CONSTRAINT `ekspors_id_petikemas_foreign` FOREIGN KEY (`id_petikemas`) REFERENCES `petikemas` (`id`);

--
-- Constraints for table `impors`
--
ALTER TABLE `impors`
  ADD CONSTRAINT `impors_id_petikemas_foreign` FOREIGN KEY (`id_petikemas`) REFERENCES `petikemas` (`id`);

--
-- Constraints for table `kapals`
--
ALTER TABLE `kapals`
  ADD CONSTRAINT `kapals_gudang_id_foreign` FOREIGN KEY (`gudang_id`) REFERENCES `pergudangans` (`id`);

--
-- Constraints for table `pergudangans`
--
ALTER TABLE `pergudangans`
  ADD CONSTRAINT `pergudangans_id_ekspor_foreign` FOREIGN KEY (`id_ekspor`) REFERENCES `ekspors` (`id`),
  ADD CONSTRAINT `pergudangans_id_impor_foreign` FOREIGN KEY (`id_impor`) REFERENCES `impors` (`id`);

--
-- Constraints for table `perusahaans`
--
ALTER TABLE `perusahaans`
  ADD CONSTRAINT `perusahaans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `petikemas`
--
ALTER TABLE `petikemas`
  ADD CONSTRAINT `petikemas_perusahaan_id_foreign` FOREIGN KEY (`perusahaan_id`) REFERENCES `perusahaans` (`id`);

--
-- Constraints for table `riwayats`
--
ALTER TABLE `riwayats`
  ADD CONSTRAINT `riwayats_kapal_id_foreign` FOREIGN KEY (`kapal_id`) REFERENCES `kapals` (`id`),
  ADD CONSTRAINT `riwayats_trucking_id_foreign` FOREIGN KEY (`trucking_id`) REFERENCES `truckings` (`id`),
  ADD CONSTRAINT `riwayats_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `truckings`
--
ALTER TABLE `truckings`
  ADD CONSTRAINT `truckings_gudang_id_foreign` FOREIGN KEY (`gudang_id`) REFERENCES `pergudangans` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
