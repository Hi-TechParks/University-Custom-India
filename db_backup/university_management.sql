-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 18, 2025 at 01:48 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `university_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us`
--

DROP TABLE IF EXISTS `about_us`;
CREATE TABLE IF NOT EXISTS `about_us` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `language_id` int UNSIGNED NOT NULL,
  `label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `features` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attach` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `video_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mission_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mission_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `mission_icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mission_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vision_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vision_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vision_icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vision_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

DROP TABLE IF EXISTS `applications`;
CREATE TABLE IF NOT EXISTS `applications` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `registration_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `batch_id` int UNSIGNED DEFAULT NULL,
  `program_id` int UNSIGNED DEFAULT NULL,
  `apply_date` date DEFAULT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_occupation` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_occupation` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `mother_photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_province` int UNSIGNED DEFAULT NULL,
  `present_district` int UNSIGNED DEFAULT NULL,
  `present_village` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `present_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `permanent_province` int UNSIGNED DEFAULT NULL,
  `permanent_district` int UNSIGNED DEFAULT NULL,
  `permanent_village` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `permanent_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `gender` tinyint NOT NULL COMMENT '1 Male, 2 Female & 3 Other',
  `dob` date NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion_id` int UNSIGNED DEFAULT NULL,
  `category_id` int UNSIGNED DEFAULT NULL,
  `caste_id` int UNSIGNED DEFAULT NULL,
  `mother_tongue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` tinyint DEFAULT NULL,
  `blood_group` tinyint DEFAULT NULL,
  `nationality` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `school_exam_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_graduation_field` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_graduation_year` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_graduation_point` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_transcript` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_certificate` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collage_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `collage_exam_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collage_graduation_field` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collage_graduation_year` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collage_graduation_point` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collage_transcript` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collage_certificate` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `signature` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fee_amount` double(10,2) DEFAULT NULL,
  `pay_status` tinyint NOT NULL DEFAULT '0' COMMENT '0 Unpaid, 1 Paid, 2 Cancel',
  `payment_method` int DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0 Rejected, 1 Pending, 2 Approve',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `applications_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `registration_no`, `batch_id`, `program_id`, `apply_date`, `first_name`, `last_name`, `father_name`, `mother_name`, `father_occupation`, `mother_occupation`, `father_photo`, `mother_photo`, `country`, `present_province`, `present_district`, `present_village`, `present_address`, `permanent_province`, `permanent_district`, `permanent_village`, `permanent_address`, `gender`, `dob`, `email`, `phone`, `emergency_phone`, `religion_id`, `category_id`, `caste_id`, `mother_tongue`, `marital_status`, `blood_group`, `nationality`, `national_id`, `passport_no`, `school_name`, `school_exam_id`, `school_graduation_field`, `school_graduation_year`, `school_graduation_point`, `school_transcript`, `school_certificate`, `collage_name`, `collage_exam_id`, `collage_graduation_field`, `collage_graduation_year`, `collage_graduation_point`, `collage_transcript`, `collage_certificate`, `photo`, `signature`, `fee_amount`, `pay_status`, `payment_method`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '10000001', NULL, 1, '2025-08-14', 'Fahim Mahtab', 'Hasan', 'ddd', 'Mst Renuka Begum', NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 2, '2025-08-14', 'ahmedripu1314@gmail.com', '0165489547', NULL, 1, 1, 1, NULL, 2, 3, NULL, NULL, NULL, 'eww3r', 'eee', NULL, 'eree', 'dfee', 'IMG_20250614_WA0015_1753595595(2)_1755151263.jpg', 'IMG_20250501_114228_1753611807_1755151263.jpg', 'wee', 'eeee', NULL, 'eee', 'edee', 'IMG_20250501_114228_1755151263.jpg', 'IMG_20250614_WA0015_1753595595(2)_1755151263.jpg', 'IMG_20250614_WA0015_1753595595(2)_1755151263.jpg', 'IMG_20250501_114228_1753611807_1755151263.jpg', NULL, 0, NULL, 2, NULL, 1, '2025-08-14 00:01:03', '2025-08-14 00:30:42');

-- --------------------------------------------------------

--
-- Table structure for table `application_settings`
--

DROP TABLE IF EXISTS `application_settings`;
CREATE TABLE IF NOT EXISTS `application_settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `header_left` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `header_center` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `header_right` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `footer_left` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `footer_center` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `footer_right` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `logo_left` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `logo_right` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `background` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `fee_amount` double(10,2) DEFAULT NULL,
  `pay_online` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0 No, 1 Yes',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `application_settings_slug_unique` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assignments`
--

DROP TABLE IF EXISTS `assignments`;
CREATE TABLE IF NOT EXISTS `assignments` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `faculty_id` int UNSIGNED DEFAULT NULL,
  `program_id` int UNSIGNED DEFAULT NULL,
  `session_id` int UNSIGNED DEFAULT NULL,
  `semester_id` int UNSIGNED DEFAULT NULL,
  `section_id` int UNSIGNED DEFAULT NULL,
  `subject_id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `total_marks` decimal(5,2) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `attach` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `assign_by` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `assignments_subject_id_foreign` (`subject_id`),
  KEY `assignments_assign_by_foreign` (`assign_by`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

DROP TABLE IF EXISTS `batches`;
CREATE TABLE IF NOT EXISTS `batches` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `batches_title_unique` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`id`, `title`, `start_date`, `status`, `created_at`, `updated_at`) VALUES
(1, '44th', '2025-08-13', 1, '2025-08-14 00:29:12', '2025-08-18 07:16:37');

-- --------------------------------------------------------

--
-- Table structure for table `batch_program`
--

DROP TABLE IF EXISTS `batch_program`;
CREATE TABLE IF NOT EXISTS `batch_program` (
  `batch_id` int UNSIGNED NOT NULL,
  `program_id` int UNSIGNED NOT NULL,
  KEY `batch_program_batch_id_foreign` (`batch_id`),
  KEY `batch_program_program_id_foreign` (`program_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `batch_program`
--

INSERT INTO `batch_program` (`batch_id`, `program_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 5),
(1, 4),
(1, 6),
(1, 7),
(1, 12),
(1, 9),
(1, 8),
(1, 10),
(1, 11),
(1, 13);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `isbn` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publisher` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edition` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_year` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `section` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `column` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `row` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attach` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0 Lost, 1 Available, 2 Damage',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `books_isbn_unique` (`isbn`),
  UNIQUE KEY `books_code_unique` (`code`),
  KEY `books_category_id_foreign` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_categories`
--

DROP TABLE IF EXISTS `book_categories`;
CREATE TABLE IF NOT EXISTS `book_categories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `book_categories_title_unique` (`title`),
  UNIQUE KEY `book_categories_slug_unique` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book_requests`
--

DROP TABLE IF EXISTS `book_requests`;
CREATE TABLE IF NOT EXISTS `book_requests` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `isbn` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publisher` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `edition` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publish_year` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `request_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attach` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0 Rejected, 1 Pending, 2 Progress, 3 Approved',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `book_requests_category_id_foreign` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `call_to_actions`
--

DROP TABLE IF EXISTS `call_to_actions`;
CREATE TABLE IF NOT EXISTS `call_to_actions` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `language_id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bg_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `button_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `castes`
--

DROP TABLE IF EXISTS `castes`;
CREATE TABLE IF NOT EXISTS `castes` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `castes_title_unique` (`title`),
  UNIQUE KEY `castes_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `castes`
--

INSERT INTO `castes` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Donate A Tablet', 'donate-a-tablet', NULL, 1, '2025-08-14 00:22:49', '2025-08-14 00:22:49'),
(2, 'Brahmin', 'brahmin', NULL, 1, '2025-08-16 23:56:15', '2025-08-16 23:56:15'),
(3, 'Kshatriya', 'kshatriya', NULL, 1, '2025-08-16 23:56:57', '2025-08-16 23:56:57'),
(4, 'Vaishya', 'vaishya', NULL, 1, '2025-08-16 23:57:09', '2025-08-16 23:57:09'),
(5, 'Shudra', 'shudra', NULL, 1, '2025-08-16 23:57:21', '2025-08-16 23:57:21');

-- --------------------------------------------------------

--
-- Table structure for table `certificates`
--

DROP TABLE IF EXISTS `certificates`;
CREATE TABLE IF NOT EXISTS `certificates` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `template_id` int UNSIGNED NOT NULL,
  `student_id` bigint UNSIGNED NOT NULL,
  `serial_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `starting_year` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ending_year` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credits` decimal(5,2) NOT NULL,
  `point` decimal(5,2) NOT NULL,
  `barcode` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `certificates_template_id_foreign` (`template_id`),
  KEY `certificates_student_id_foreign` (`student_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `certificate_templates`
--

DROP TABLE IF EXISTS `certificate_templates`;
CREATE TABLE IF NOT EXISTS `certificate_templates` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_left` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `header_center` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `header_right` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `footer_left` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `footer_center` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `footer_right` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `logo_left` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `logo_right` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `background` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `width` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'auto',
  `height` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'auto',
  `student_photo` tinyint(1) NOT NULL DEFAULT '0',
  `barcode` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `certificate_templates_title_unique` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `class_rooms`
--

DROP TABLE IF EXISTS `class_rooms`;
CREATE TABLE IF NOT EXISTS `class_rooms` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `floor` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacity` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class_rooms_title_unique` (`title`),
  UNIQUE KEY `class_rooms_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_rooms`
--

INSERT INTO `class_rooms` (`id`, `title`, `slug`, `floor`, `capacity`, `type`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, '1001', '1001', '22dw', '34', '22', NULL, 1, '2025-08-17 00:29:07', '2025-08-17 00:29:07');

-- --------------------------------------------------------

--
-- Table structure for table `class_routines`
--

DROP TABLE IF EXISTS `class_routines`;
CREATE TABLE IF NOT EXISTS `class_routines` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `teacher_id` bigint UNSIGNED NOT NULL,
  `subject_id` bigint UNSIGNED NOT NULL,
  `room_id` int UNSIGNED NOT NULL,
  `session_id` int UNSIGNED NOT NULL,
  `program_id` int UNSIGNED NOT NULL,
  `semester_id` int UNSIGNED NOT NULL,
  `section_id` int UNSIGNED NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `day` tinyint NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_routines_teacher_id_foreign` (`teacher_id`),
  KEY `class_routines_subject_id_foreign` (`subject_id`),
  KEY `class_routines_room_id_foreign` (`room_id`),
  KEY `class_routines_session_id_foreign` (`session_id`),
  KEY `class_routines_program_id_foreign` (`program_id`),
  KEY `class_routines_semester_id_foreign` (`semester_id`),
  KEY `class_routines_section_id_foreign` (`section_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `class_routines`
--

INSERT INTO `class_routines` (`id`, `teacher_id`, `subject_id`, `room_id`, `session_id`, `program_id`, `semester_id`, `section_id`, `start_time`, `end_time`, `day`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 2, 1, 2, 11, 1, 1, '12:29:00', '18:29:00', 1, 1, '2025-08-17 00:29:56', '2025-08-17 00:29:56'),
(2, 2, 2, 1, 2, 11, 1, 1, '12:30:00', '18:30:00', 2, 1, '2025-08-17 00:30:11', '2025-08-17 00:30:11'),
(3, 2, 2, 1, 2, 11, 1, 1, '12:30:00', '17:30:00', 3, 1, '2025-08-17 00:30:25', '2025-08-17 00:30:25'),
(4, 2, 2, 1, 2, 11, 1, 1, '12:30:00', '12:30:00', 4, 1, '2025-08-17 00:30:40', '2025-08-17 00:30:40'),
(5, 2, 2, 1, 2, 11, 1, 1, '12:30:00', '12:30:00', 5, 1, '2025-08-17 00:30:55', '2025-08-17 00:30:55'),
(6, 2, 2, 1, 2, 11, 1, 1, '12:31:00', '12:31:00', 6, 1, '2025-08-17 00:31:09', '2025-08-17 00:31:09'),
(7, 2, 2, 1, 2, 11, 1, 1, '12:31:00', '12:31:00', 7, 1, '2025-08-17 00:31:23', '2025-08-17 00:31:23');

-- --------------------------------------------------------

--
-- Table structure for table `complains`
--

DROP TABLE IF EXISTS `complains`;
CREATE TABLE IF NOT EXISTS `complains` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_id` int UNSIGNED NOT NULL,
  `source_id` int UNSIGNED DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `action_taken` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `assigned` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `issue` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attach` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0 Rejected, 1 Pending, 2 Progress, 3 Resolved',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `complains_type_id_foreign` (`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complain_sources`
--

DROP TABLE IF EXISTS `complain_sources`;
CREATE TABLE IF NOT EXISTS `complain_sources` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `complain_sources_title_unique` (`title`),
  UNIQUE KEY `complain_sources_slug_unique` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `complain_types`
--

DROP TABLE IF EXISTS `complain_types`;
CREATE TABLE IF NOT EXISTS `complain_types` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `complain_types_title_unique` (`title`),
  UNIQUE KEY `complain_types_slug_unique` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contentables`
--

DROP TABLE IF EXISTS `contentables`;
CREATE TABLE IF NOT EXISTS `contentables` (
  `content_id` bigint NOT NULL,
  `contentable_id` bigint NOT NULL,
  `contentable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

DROP TABLE IF EXISTS `contents`;
CREATE TABLE IF NOT EXISTS `contents` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `faculty_id` int UNSIGNED DEFAULT NULL,
  `program_id` int UNSIGNED DEFAULT NULL,
  `session_id` int UNSIGNED DEFAULT NULL,
  `semester_id` int UNSIGNED DEFAULT NULL,
  `section_id` int UNSIGNED DEFAULT NULL,
  `type_id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `date` date NOT NULL,
  `url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attach` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contents_type_id_foreign` (`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `content_types`
--

DROP TABLE IF EXISTS `content_types`;
CREATE TABLE IF NOT EXISTS `content_types` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_types_title_unique` (`title`),
  UNIQUE KEY `content_types_slug_unique` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE IF NOT EXISTS `courses` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `language_id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `faculty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `semesters` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credits` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `courses` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fee` double(10,2) DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attach` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `courses_title_unique` (`title`),
  UNIQUE KEY `courses_slug_unique` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
CREATE TABLE IF NOT EXISTS `departments` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `departments_title_unique` (`title`),
  UNIQUE KEY `departments_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Law', 'law', NULL, 1, '2025-08-17 00:25:08', '2025-08-17 00:25:08'),
(2, 'EEE', 'eee', NULL, 1, '2025-08-17 00:25:14', '2025-08-17 00:25:14'),
(3, 'CSE', 'cse', NULL, 1, '2025-08-17 00:25:22', '2025-08-17 00:25:22');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

DROP TABLE IF EXISTS `designations`;
CREATE TABLE IF NOT EXISTS `designations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `designations_title_unique` (`title`),
  UNIQUE KEY `designations_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'HR', 'hr', NULL, 1, '2025-08-17 00:25:35', '2025-08-17 00:25:35'),
(2, 'Captain', 'captain', NULL, 1, '2025-08-17 00:25:47', '2025-08-17 00:25:47');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

DROP TABLE IF EXISTS `districts`;
CREATE TABLE IF NOT EXISTS `districts` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `province_id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `districts_province_id_foreign` (`province_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `docables`
--

DROP TABLE IF EXISTS `docables`;
CREATE TABLE IF NOT EXISTS `docables` (
  `document_id` bigint UNSIGNED NOT NULL,
  `docable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `docable_id` bigint UNSIGNED NOT NULL,
  UNIQUE KEY `docables_document_id_docable_id_docable_type_unique` (`document_id`,`docable_id`,`docable_type`),
  KEY `docables_docable_type_docable_id_index` (`docable_type`,`docable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `documents`
--

DROP TABLE IF EXISTS `documents`;
CREATE TABLE IF NOT EXISTS `documents` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attach` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_notifies`
--

DROP TABLE IF EXISTS `email_notifies`;
CREATE TABLE IF NOT EXISTS `email_notifies` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `faculty_id` int UNSIGNED DEFAULT NULL,
  `program_id` int UNSIGNED DEFAULT NULL,
  `session_id` int UNSIGNED DEFAULT NULL,
  `semester_id` int UNSIGNED DEFAULT NULL,
  `section_id` int UNSIGNED DEFAULT NULL,
  `subject` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `receive_count` int DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

DROP TABLE IF EXISTS `enquiries`;
CREATE TABLE IF NOT EXISTS `enquiries` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `reference_id` int UNSIGNED DEFAULT NULL,
  `source_id` int UNSIGNED DEFAULT NULL,
  `program_id` int UNSIGNED DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `purpose` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `date` date NOT NULL,
  `follow_up_date` date DEFAULT NULL,
  `assigned` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_students` int NOT NULL DEFAULT '1',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0 Closed, 1 Pending, 2 Progress, 3 Resolved',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_references`
--

DROP TABLE IF EXISTS `enquiry_references`;
CREATE TABLE IF NOT EXISTS `enquiry_references` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `enquiry_references_title_unique` (`title`),
  UNIQUE KEY `enquiry_references_slug_unique` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enquiry_sources`
--

DROP TABLE IF EXISTS `enquiry_sources`;
CREATE TABLE IF NOT EXISTS `enquiry_sources` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `enquiry_sources_title_unique` (`title`),
  UNIQUE KEY `enquiry_sources_slug_unique` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `enroll_subjects`
--

DROP TABLE IF EXISTS `enroll_subjects`;
CREATE TABLE IF NOT EXISTS `enroll_subjects` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `program_id` int UNSIGNED NOT NULL,
  `semester_id` int UNSIGNED NOT NULL,
  `section_id` int UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `enroll_subjects_program_id_foreign` (`program_id`),
  KEY `enroll_subjects_semester_id_foreign` (`semester_id`),
  KEY `enroll_subjects_section_id_foreign` (`section_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enroll_subjects`
--

INSERT INTO `enroll_subjects` (`id`, `program_id`, `semester_id`, `section_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 9, 1, 1, 1, '2025-08-17 00:21:59', '2025-08-17 00:21:59'),
(2, 11, 1, 1, 1, '2025-08-17 00:22:15', '2025-08-17 00:22:15'),
(3, 1, 1, 1, 1, '2025-08-17 00:22:29', '2025-08-17 00:22:29'),
(4, 7, 1, 1, 1, '2025-08-17 00:22:42', '2025-08-17 00:22:42');

-- --------------------------------------------------------

--
-- Table structure for table `enroll_subject_subject`
--

DROP TABLE IF EXISTS `enroll_subject_subject`;
CREATE TABLE IF NOT EXISTS `enroll_subject_subject` (
  `enroll_subject_id` bigint UNSIGNED NOT NULL,
  `subject_id` bigint UNSIGNED NOT NULL,
  KEY `enroll_subject_subject_enroll_subject_id_foreign` (`enroll_subject_id`),
  KEY `enroll_subject_subject_subject_id_foreign` (`subject_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `enroll_subject_subject`
--

INSERT INTO `enroll_subject_subject` (`enroll_subject_id`, `subject_id`) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 1),
(4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

DROP TABLE IF EXISTS `exams`;
CREATE TABLE IF NOT EXISTS `exams` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_enroll_id` bigint UNSIGNED NOT NULL,
  `subject_id` bigint UNSIGNED NOT NULL,
  `exam_type_id` int UNSIGNED DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `attendance` tinyint NOT NULL DEFAULT '2' COMMENT '1-Present, 2-Absent',
  `marks` decimal(5,2) DEFAULT NULL,
  `achieve_marks` decimal(5,2) DEFAULT NULL,
  `contribution` decimal(5,2) NOT NULL DEFAULT '0.00',
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exams_student_enroll_id_foreign` (`student_enroll_id`),
  KEY `exams_subject_id_foreign` (`subject_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_routines`
--

DROP TABLE IF EXISTS `exam_routines`;
CREATE TABLE IF NOT EXISTS `exam_routines` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `exam_type_id` int UNSIGNED NOT NULL,
  `session_id` int UNSIGNED NOT NULL,
  `program_id` int UNSIGNED NOT NULL,
  `semester_id` int UNSIGNED NOT NULL,
  `section_id` int UNSIGNED NOT NULL,
  `subject_id` bigint UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exam_routines_exam_type_id_foreign` (`exam_type_id`),
  KEY `exam_routines_session_id_foreign` (`session_id`),
  KEY `exam_routines_program_id_foreign` (`program_id`),
  KEY `exam_routines_semester_id_foreign` (`semester_id`),
  KEY `exam_routines_section_id_foreign` (`section_id`),
  KEY `exam_routines_subject_id_foreign` (`subject_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_routine_room`
--

DROP TABLE IF EXISTS `exam_routine_room`;
CREATE TABLE IF NOT EXISTS `exam_routine_room` (
  `exam_routine_id` bigint UNSIGNED NOT NULL,
  `room_id` int UNSIGNED NOT NULL,
  KEY `exam_routine_room_exam_routine_id_foreign` (`exam_routine_id`),
  KEY `exam_routine_room_room_id_foreign` (`room_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_routine_user`
--

DROP TABLE IF EXISTS `exam_routine_user`;
CREATE TABLE IF NOT EXISTS `exam_routine_user` (
  `exam_routine_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  KEY `exam_routine_user_exam_routine_id_foreign` (`exam_routine_id`),
  KEY `exam_routine_user_user_id_foreign` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `exam_types`
--

DROP TABLE IF EXISTS `exam_types`;
CREATE TABLE IF NOT EXISTS `exam_types` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `marks` decimal(5,2) NOT NULL,
  `contribution` decimal(5,2) NOT NULL DEFAULT '0.00',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `exam_types_title_unique` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exam_types`
--

INSERT INTO `exam_types` (`id`, `title`, `marks`, `contribution`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Final Exam', 100.00, 50.00, NULL, 1, NULL, NULL),
(2, 'Midterm Exam', 50.00, 20.00, NULL, 1, NULL, NULL),
(3, 'Test Exam', 20.00, 0.00, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
CREATE TABLE IF NOT EXISTS `expenses` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `date` date NOT NULL,
  `reference` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` int DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attach` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `expenses_category_id_foreign` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

DROP TABLE IF EXISTS `expense_categories`;
CREATE TABLE IF NOT EXISTS `expense_categories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `expense_categories_title_unique` (`title`),
  UNIQUE KEY `expense_categories_slug_unique` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

DROP TABLE IF EXISTS `faculties`;
CREATE TABLE IF NOT EXISTS `faculties` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shortcode` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `faculties_title_unique` (`title`),
  UNIQUE KEY `faculties_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `title`, `slug`, `shortcode`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Cse', 'cse', 'Cse', 1, '2025-08-14 00:28:51', '2025-08-18 05:39:46'),
(2, 'EEE', 'eee', 'EEE', 1, '2025-08-16 04:50:15', '2025-08-18 05:39:52'),
(3, 'Law', 'law', 'Law', 1, '2025-08-16 22:40:35', '2025-08-18 05:39:58'),
(4, 'Mbbs', 'mbbs', 'Mbbs', 1, '2025-08-16 22:41:10', '2025-08-18 05:40:05'),
(5, 'Botany', 'botany', 'Botany', 1, '2025-08-16 23:29:22', '2025-08-18 05:39:33'),
(6, 'Chemistry', 'chemistry', 'Chemistry', 1, '2025-08-16 23:29:38', '2025-08-18 05:39:40'),
(7, 'Physics', 'physics', 'Physics', 1, '2025-08-16 23:29:50', '2025-08-18 05:40:11');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

DROP TABLE IF EXISTS `faqs`;
CREATE TABLE IF NOT EXISTS `faqs` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `language_id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `faqs_title_unique` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

DROP TABLE IF EXISTS `features`;
CREATE TABLE IF NOT EXISTS `features` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `language_id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attach` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `features_title_unique` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

DROP TABLE IF EXISTS `fees`;
CREATE TABLE IF NOT EXISTS `fees` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_enroll_id` bigint UNSIGNED NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `fee_amount` double(10,2) NOT NULL,
  `fine_amount` double(10,2) NOT NULL DEFAULT '0.00',
  `discount_amount` double(10,2) NOT NULL DEFAULT '0.00',
  `paid_amount` double(10,2) NOT NULL,
  `assign_date` date NOT NULL,
  `due_date` date NOT NULL,
  `pay_date` date DEFAULT NULL,
  `payment_method` int DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0 Unpaid, 1 Paid, 2 Cancel',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `student_enroll_id`, `category_id`, `fee_amount`, `fine_amount`, `discount_amount`, `paid_amount`, `assign_date`, `due_date`, `pay_date`, `payment_method`, `note`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 10000.00, 0.00, 0.00, 10000.00, '2025-08-16', '2025-08-16', '2025-08-16', 2, 'fdddfsdsr', 1, NULL, 1, '2025-08-16 04:39:44', '2025-08-16 04:39:44'),
(2, 3, 3, 1222.00, 0.00, 0.00, 1222.00, '2025-08-16', '2025-08-16', '2025-08-16', 3, NULL, 1, NULL, 1, '2025-08-16 04:40:05', '2025-08-16 04:40:05'),
(3, 2, 3, 100.00, 20.00, 0.00, 120.00, '2025-08-16', '2025-08-16', '2025-08-16', 4, NULL, 1, NULL, 1, '2025-08-16 04:41:57', '2025-08-16 04:41:57'),
(4, 2, 2, 44333.00, 0.00, 0.00, 44333.00, '2025-08-16', '2025-08-16', '2025-08-17', 2, NULL, 1, 1, 1, '2025-08-16 05:01:37', '2025-08-16 23:04:13'),
(5, 6, 3, 12000.00, 0.00, 0.00, 12000.00, '2025-08-16', '2025-08-16', '2025-08-17', 3, NULL, 1, 1, 1, '2025-08-16 05:42:46', '2025-08-16 22:59:52'),
(6, 4, 3, 25588.00, 0.00, 0.00, 0.00, '2025-08-17', '2025-08-17', NULL, NULL, NULL, 0, 1, NULL, '2025-08-16 22:55:51', '2025-08-16 22:55:51'),
(7, 5, 3, 25588.00, 0.00, 0.00, 25588.00, '2025-08-17', '2025-08-17', '2025-08-17', 3, NULL, 1, 1, 1, '2025-08-16 22:55:51', '2025-08-16 23:04:23'),
(8, 3, 3, 25588.00, 0.00, 0.00, 0.00, '2025-08-17', '2025-08-17', NULL, NULL, NULL, 0, 1, NULL, '2025-08-16 22:55:51', '2025-08-16 22:55:51'),
(9, 2, 3, 25588.00, 0.00, 0.00, 0.00, '2025-08-17', '2025-08-17', NULL, NULL, NULL, 0, 1, NULL, '2025-08-16 22:55:51', '2025-08-16 22:55:51'),
(10, 1, 3, 25588.00, 0.00, 0.00, 25588.00, '2025-08-17', '2025-08-17', '2025-08-17', 3, NULL, 1, 1, 1, '2025-08-16 22:55:51', '2025-08-16 23:04:02'),
(11, 7, 3, 434242.00, 0.00, 0.00, 434242.00, '2025-08-17', '2025-08-17', '2025-08-17', 2, NULL, 1, 1, 1, '2025-08-16 22:57:11', '2025-08-16 23:08:25'),
(12, 6, 2, 43346.00, 0.00, 0.00, 43346.00, '2025-08-17', '2025-08-17', '2025-08-17', 2, NULL, 1, 1, 1, '2025-08-16 22:57:59', '2025-08-16 23:03:39'),
(13, 9, 2, 4541212.00, 0.00, 0.00, 4541212.00, '2025-08-17', '2025-08-17', '2025-08-17', 2, NULL, 1, 1, 1, '2025-08-16 22:58:32', '2025-08-16 23:12:16'),
(14, 6, 3, 45355.00, 0.00, 0.00, 45355.00, '2025-08-17', '2025-08-17', '2025-08-17', 2, NULL, 1, 1, 1, '2025-08-16 22:59:00', '2025-08-16 22:59:42'),
(15, 7, 3, 25888.00, 0.00, 0.00, 25888.00, '2025-08-17', '2025-08-17', '2025-08-17', 2, NULL, 1, 1, 1, '2025-08-16 23:00:16', '2025-08-16 23:08:13'),
(16, 9, 2, 21558.00, 0.00, 0.00, 21558.00, '2025-08-17', '2025-08-17', '2025-08-17', 2, NULL, 1, 1, 1, '2025-08-16 23:00:34', '2025-08-16 23:11:03'),
(17, 8, 3, 25455.00, 0.00, 0.00, 25455.00, '2025-08-17', '2025-08-17', '2025-08-17', 4, NULL, 1, NULL, 1, '2025-08-16 23:01:02', '2025-08-16 23:01:02'),
(18, 3, 2, 155.00, 0.00, 0.00, 0.00, '2025-08-17', '2025-08-17', NULL, NULL, NULL, 0, 1, NULL, '2025-08-16 23:04:45', '2025-08-16 23:04:45'),
(19, 2, 3, 32.00, 0.00, 0.00, 0.00, '2025-08-17', '2025-08-17', NULL, NULL, NULL, 0, 1, NULL, '2025-08-16 23:05:51', '2025-08-16 23:05:51'),
(20, 9, 3, 258525.00, 0.00, 0.00, 0.00, '2025-08-17', '2025-08-17', NULL, NULL, NULL, 0, 1, NULL, '2025-08-16 23:13:27', '2025-08-16 23:13:27'),
(21, 9, 3, 2582546.00, 0.00, 0.00, 0.00, '2025-08-17', '2025-08-17', NULL, NULL, NULL, 0, 1, NULL, '2025-08-16 23:14:49', '2025-08-16 23:14:49'),
(22, 7, 2, 2584695.00, 0.00, 0.00, 0.00, '2025-08-17', '2025-08-17', NULL, NULL, NULL, 0, 1, NULL, '2025-08-16 23:16:06', '2025-08-16 23:16:06'),
(23, 5, 2, 2587963.00, 0.00, 0.00, 0.00, '2025-08-17', '2025-08-17', NULL, NULL, NULL, 0, 1, NULL, '2025-08-16 23:17:22', '2025-08-16 23:17:22'),
(24, 4, 2, 3263632.00, 0.00, 87565.00, 3176067.00, '2025-08-17', '2025-08-17', '2025-08-17', 3, NULL, 1, NULL, 1, '2025-08-16 23:19:18', '2025-08-16 23:19:18'),
(25, 5, 3, 0.00, 0.00, 0.00, 0.00, '2025-08-17', '2025-08-17', NULL, NULL, NULL, 0, 1, NULL, '2025-08-16 23:20:26', '2025-08-16 23:20:26'),
(26, 6, 1, 6587963.00, 0.00, 0.00, 0.00, '2025-08-17', '2025-08-17', NULL, NULL, NULL, 0, 1, NULL, '2025-08-16 23:22:06', '2025-08-16 23:22:06'),
(27, 6, 2, 5693214.00, 0.00, 0.00, 5693214.00, '2025-08-17', '2025-08-17', '2025-08-17', 2, NULL, 1, 1, 1, '2025-08-16 23:22:26', '2025-08-16 23:23:19'),
(28, 8, 2, 1236549.00, 0.00, 0.00, 1236549.00, '2025-08-17', '2025-08-17', '2025-08-17', 3, NULL, 1, 1, 1, '2025-08-16 23:26:47', '2025-08-16 23:27:33'),
(29, 8, 3, 2136547.00, 0.00, 0.00, 0.00, '2025-08-17', '2025-08-17', NULL, NULL, NULL, 0, 1, NULL, '2025-08-16 23:27:06', '2025-08-16 23:27:06'),
(30, 10, 1, 1479632.00, 0.00, 0.00, 0.00, '2025-08-17', '2025-08-17', NULL, NULL, NULL, 0, 1, NULL, '2025-08-16 23:42:08', '2025-08-16 23:42:08'),
(31, 10, 3, 6523147.00, 0.00, 0.00, 6523147.00, '2025-08-17', '2025-08-17', '2025-08-17', 2, NULL, 1, 1, 1, '2025-08-16 23:42:29', '2025-08-16 23:43:02'),
(32, 11, 1, 4123658.00, 0.00, 0.00, 0.00, '2025-08-17', '2025-08-17', NULL, NULL, NULL, 0, 1, NULL, '2025-08-16 23:44:31', '2025-08-16 23:44:31'),
(33, 11, 3, 6541239.00, 0.00, 0.00, 6541239.00, '2025-08-17', '2025-08-17', '2025-08-17', 2, NULL, 1, 1, 1, '2025-08-16 23:45:07', '2025-08-16 23:45:46'),
(34, 12, 1, 5463219.00, 0.00, 0.00, 0.00, '2025-08-17', '2025-08-17', NULL, NULL, NULL, 0, 1, NULL, '2025-08-16 23:47:03', '2025-08-16 23:47:03'),
(35, 13, 1, 5463219.00, 0.00, 0.00, 0.00, '2025-08-17', '2025-08-17', NULL, NULL, NULL, 0, 1, NULL, '2025-08-16 23:47:03', '2025-08-16 23:47:03'),
(36, 12, 1, 7896321.00, 0.00, 0.00, 7896321.00, '2025-08-17', '2025-08-17', '2025-08-17', 2, NULL, 1, 1, 1, '2025-08-16 23:47:44', '2025-08-16 23:48:30'),
(37, 13, 1, 7896321.00, 0.00, 0.00, 7896321.00, '2025-08-17', '2025-08-17', '2025-08-17', 2, NULL, 1, 1, 1, '2025-08-16 23:47:44', '2025-08-16 23:48:19'),
(38, 14, 1, 1236548.00, 0.00, 0.00, 1236548.00, '2025-08-17', '2025-08-17', '2025-08-17', 1, NULL, 1, 1, 1, '2025-08-16 23:49:06', '2025-08-16 23:50:09'),
(39, 14, 1, 3214567.00, 0.00, 0.00, 0.00, '2025-08-17', '2025-08-17', NULL, NULL, NULL, 0, 1, NULL, '2025-08-16 23:49:39', '2025-08-16 23:49:39');

-- --------------------------------------------------------

--
-- Table structure for table `fees_categories`
--

DROP TABLE IF EXISTS `fees_categories`;
CREATE TABLE IF NOT EXISTS `fees_categories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fees_categories_title_unique` (`title`),
  UNIQUE KEY `fees_categories_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees_categories`
--

INSERT INTO `fees_categories` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Admission Fees', 'admission-fees', NULL, 1, NULL, NULL),
(2, 'Semester Fees', 'semester-fees', NULL, 1, NULL, NULL),
(3, 'Exam Fees', 'exam-fees', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fees_category_fees_discount`
--

DROP TABLE IF EXISTS `fees_category_fees_discount`;
CREATE TABLE IF NOT EXISTS `fees_category_fees_discount` (
  `fees_category_id` int UNSIGNED NOT NULL,
  `fees_discount_id` int UNSIGNED NOT NULL,
  KEY `fees_category_fees_discount_fees_category_id_foreign` (`fees_category_id`),
  KEY `fees_category_fees_discount_fees_discount_id_foreign` (`fees_discount_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees_category_fees_fine`
--

DROP TABLE IF EXISTS `fees_category_fees_fine`;
CREATE TABLE IF NOT EXISTS `fees_category_fees_fine` (
  `fees_category_id` int UNSIGNED NOT NULL,
  `fees_fine_id` int UNSIGNED NOT NULL,
  KEY `fees_category_fees_fine_fees_category_id_foreign` (`fees_category_id`),
  KEY `fees_category_fees_fine_fees_fine_id_foreign` (`fees_fine_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees_discounts`
--

DROP TABLE IF EXISTS `fees_discounts`;
CREATE TABLE IF NOT EXISTS `fees_discounts` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `type` tinyint NOT NULL DEFAULT '1' COMMENT '1 Fixed & 2 Percentange',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees_discount_status_type`
--

DROP TABLE IF EXISTS `fees_discount_status_type`;
CREATE TABLE IF NOT EXISTS `fees_discount_status_type` (
  `fees_discount_id` int UNSIGNED NOT NULL,
  `status_type_id` int UNSIGNED NOT NULL,
  KEY `fees_discount_status_type_fees_discount_id_foreign` (`fees_discount_id`),
  KEY `fees_discount_status_type_status_type_id_foreign` (`status_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees_fines`
--

DROP TABLE IF EXISTS `fees_fines`;
CREATE TABLE IF NOT EXISTS `fees_fines` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `start_day` int NOT NULL,
  `end_day` int NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `type` tinyint NOT NULL DEFAULT '1' COMMENT '1 Fixed, 2 Percentage',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fees_masters`
--

DROP TABLE IF EXISTS `fees_masters`;
CREATE TABLE IF NOT EXISTS `fees_masters` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int UNSIGNED NOT NULL,
  `faculty_id` int UNSIGNED DEFAULT NULL,
  `program_id` int UNSIGNED DEFAULT NULL,
  `session_id` int UNSIGNED DEFAULT NULL,
  `semester_id` int UNSIGNED DEFAULT NULL,
  `section_id` int UNSIGNED DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `type` tinyint NOT NULL DEFAULT '1' COMMENT '1 Fixed, 2 Per Credit',
  `assign_date` date NOT NULL,
  `due_date` date NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees_masters`
--

INSERT INTO `fees_masters` (`id`, `category_id`, `faculty_id`, `program_id`, `session_id`, `semester_id`, `section_id`, `amount`, `type`, `assign_date`, `due_date`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 1, 2, 1, 1, 25588.00, 1, '2025-08-17', '2025-08-17', 1, 1, NULL, '2025-08-16 22:55:51', '2025-08-16 22:55:51'),
(2, 3, 4, 0, 0, 0, 0, 434242.00, 1, '2025-08-17', '2025-08-17', 1, 1, NULL, '2025-08-16 22:57:11', '2025-08-16 22:57:11'),
(3, 2, 1, 0, 0, 0, 0, 43346.00, 1, '2025-08-17', '2025-08-17', 1, 1, NULL, '2025-08-16 22:57:59', '2025-08-16 22:57:59'),
(4, 2, 3, 0, 0, 0, 0, 4541212.00, 1, '2025-08-17', '2025-08-17', 1, 1, NULL, '2025-08-16 22:58:32', '2025-08-16 22:58:32'),
(5, 3, 1, 0, 0, 0, 0, 45355.00, 1, '2025-08-17', '2025-08-17', 1, 1, NULL, '2025-08-16 22:59:00', '2025-08-16 22:59:00'),
(6, 1, 5, 9, 0, 0, 0, 4123658.00, 1, '2025-08-17', '2025-08-17', 1, 1, NULL, '2025-08-16 23:44:31', '2025-08-16 23:44:31'),
(7, 3, 5, 9, 0, 0, 0, 6541239.00, 1, '2025-08-17', '2025-08-17', 1, 1, NULL, '2025-08-16 23:45:07', '2025-08-16 23:45:07'),
(8, 1, 6, 0, 0, 0, 0, 5463219.00, 1, '2025-08-17', '2025-08-17', 1, 1, NULL, '2025-08-16 23:47:03', '2025-08-16 23:47:03'),
(9, 1, 6, 0, 0, 0, 0, 7896321.00, 1, '2025-08-17', '2025-08-17', 1, 1, NULL, '2025-08-16 23:47:44', '2025-08-16 23:47:44'),
(10, 1, 7, 0, 0, 0, 0, 1236548.00, 1, '2025-08-17', '2025-08-17', 1, 1, NULL, '2025-08-16 23:49:06', '2025-08-16 23:49:06'),
(11, 1, 7, 0, 0, 0, 0, 3214567.00, 1, '2025-08-17', '2025-08-17', 1, 1, NULL, '2025-08-16 23:49:39', '2025-08-16 23:49:39');

-- --------------------------------------------------------

--
-- Table structure for table `fees_master_student_enroll`
--

DROP TABLE IF EXISTS `fees_master_student_enroll`;
CREATE TABLE IF NOT EXISTS `fees_master_student_enroll` (
  `fees_master_id` bigint UNSIGNED NOT NULL,
  `student_enroll_id` bigint UNSIGNED NOT NULL,
  KEY `fees_master_student_enroll_fees_master_id_foreign` (`fees_master_id`),
  KEY `fees_master_student_enroll_student_enroll_id_foreign` (`student_enroll_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fees_master_student_enroll`
--

INSERT INTO `fees_master_student_enroll` (`fees_master_id`, `student_enroll_id`) VALUES
(1, 4),
(1, 5),
(1, 3),
(1, 2),
(1, 1),
(2, 7),
(3, 6),
(4, 9),
(5, 6),
(6, 11),
(7, 11),
(8, 12),
(8, 13),
(9, 12),
(9, 13),
(10, 14),
(11, 14);

-- --------------------------------------------------------

--
-- Table structure for table `fields`
--

DROP TABLE IF EXISTS `fields`;
CREATE TABLE IF NOT EXISTS `fields` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `fields_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fields`
--

INSERT INTO `fields` (`id`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'user_father_name', 1, NULL, NULL),
(2, 'user_mother_name', 1, NULL, NULL),
(3, 'user_joining_date', 1, NULL, NULL),
(4, 'user_ending_date', 1, NULL, NULL),
(5, 'user_emergency_phone', 1, NULL, NULL),
(6, 'user_religion', 0, NULL, NULL),
(7, 'user_caste', 0, NULL, NULL),
(8, 'user_mother_tongue', 0, NULL, NULL),
(9, 'user_nationality', 0, NULL, NULL),
(10, 'user_marital_status', 1, NULL, NULL),
(11, 'user_blood_group', 1, NULL, NULL),
(12, 'user_national_id', 1, NULL, NULL),
(13, 'user_passport_no', 1, NULL, NULL),
(14, 'user_address', 1, NULL, NULL),
(15, 'user_education', 1, NULL, NULL),
(16, 'user_epf_no', 1, NULL, NULL),
(17, 'user_bank_account', 1, NULL, NULL),
(18, 'user_signature', 1, NULL, NULL),
(19, 'user_resume', 1, NULL, NULL),
(20, 'user_joining_letter', 1, NULL, NULL),
(21, 'user_documents', 1, NULL, NULL),
(22, 'student_father_name', 1, NULL, NULL),
(23, 'student_mother_name', 1, NULL, NULL),
(24, 'student_father_occupation', 1, NULL, NULL),
(25, 'student_mother_occupation', 1, NULL, NULL),
(26, 'student_emergency_phone', 1, NULL, NULL),
(27, 'student_religion', 1, NULL, NULL),
(28, 'student_caste', 1, NULL, '2025-08-14 00:16:28'),
(29, 'student_mother_tongue', 1, NULL, '2025-08-14 00:16:28'),
(30, 'student_nationality', 1, NULL, '2025-08-14 00:16:28'),
(31, 'student_marital_status', 1, NULL, NULL),
(32, 'student_blood_group', 1, NULL, NULL),
(33, 'student_national_id', 1, NULL, NULL),
(34, 'student_passport_no', 1, NULL, NULL),
(35, 'student_address', 1, NULL, NULL),
(36, 'student_school_info', 1, NULL, NULL),
(37, 'student_collage_info', 1, NULL, NULL),
(38, 'student_relatives', 1, NULL, NULL),
(39, 'student_school_transcript', 1, NULL, NULL),
(40, 'student_school_certificate', 1, NULL, NULL),
(41, 'student_collage_transcript', 1, NULL, NULL),
(42, 'student_collage_certificate', 1, NULL, NULL),
(43, 'student_photo', 1, NULL, NULL),
(44, 'student_signature', 1, NULL, NULL),
(45, 'student_documents', 1, NULL, NULL),
(46, 'application_father_name', 1, NULL, NULL),
(47, 'application_mother_name', 1, NULL, NULL),
(48, 'application_father_occupation', 1, NULL, NULL),
(49, 'application_mother_occupation', 1, NULL, NULL),
(50, 'application_emergency_phone', 1, NULL, '2025-08-14 00:24:13'),
(51, 'application_religion', 1, NULL, '2025-08-14 00:24:13'),
(52, 'application_caste', 1, NULL, '2025-08-14 00:24:13'),
(53, 'application_mother_tongue', 1, NULL, '2025-08-14 00:24:13'),
(54, 'application_nationality', 1, NULL, '2025-08-14 00:24:13'),
(55, 'application_marital_status', 1, NULL, NULL),
(56, 'application_blood_group', 1, NULL, NULL),
(57, 'application_national_id', 1, NULL, NULL),
(58, 'application_passport_no', 1, NULL, NULL),
(59, 'application_address', 1, NULL, NULL),
(60, 'application_school_info', 1, NULL, NULL),
(61, 'application_collage_info', 1, NULL, NULL),
(62, 'application_school_transcript', 1, NULL, NULL),
(63, 'application_school_certificate', 1, NULL, NULL),
(64, 'application_collage_transcript', 1, NULL, NULL),
(65, 'application_collage_certificate', 1, NULL, NULL),
(66, 'application_photo', 1, NULL, NULL),
(67, 'application_signature', 1, NULL, NULL),
(68, 'panel_class_routine', 1, NULL, NULL),
(69, 'panel_exam_routine', 1, NULL, NULL),
(70, 'panel_attendance', 1, NULL, NULL),
(71, 'panel_leave', 1, NULL, NULL),
(72, 'panel_fees_report', 1, NULL, NULL),
(73, 'panel_online_exam', 1, NULL, NULL),
(74, 'panel_library', 1, NULL, NULL),
(75, 'panel_notice', 1, NULL, NULL),
(76, 'panel_assignment', 1, NULL, NULL),
(77, 'panel_syllabus', 1, NULL, NULL),
(78, 'panel_download', 1, NULL, NULL),
(79, 'panel_tutorial', 1, NULL, NULL),
(80, 'panel_transcript', 1, NULL, NULL),
(81, 'panel_profile', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
CREATE TABLE IF NOT EXISTS `galleries` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `language_id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attach` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
CREATE TABLE IF NOT EXISTS `grades` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `point` decimal(5,2) NOT NULL,
  `min_mark` decimal(5,2) NOT NULL,
  `max_mark` decimal(5,2) NOT NULL,
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `grades_title_unique` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `title`, `point`, `min_mark`, `max_mark`, `remark`, `status`, `created_at`, `updated_at`) VALUES
(1, 'A', 5.00, 80.00, 100.00, NULL, 1, NULL, NULL),
(2, 'B', 4.00, 70.00, 79.99, NULL, 1, NULL, NULL),
(3, 'C', 3.00, 60.00, 69.99, NULL, 1, NULL, NULL),
(4, 'D', 2.00, 50.00, 59.99, NULL, 1, NULL, NULL),
(5, 'E', 1.00, 40.00, 49.99, NULL, 1, NULL, NULL),
(6, 'F', 0.00, 0.00, 39.99, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hostels`
--

DROP TABLE IF EXISTS `hostels`;
CREATE TABLE IF NOT EXISTS `hostels` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint NOT NULL DEFAULT '0' COMMENT '1 Boys, 2 Girls, 3 Staff, 4 Combain',
  `capacity` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warden_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `warden_contact` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hostels_name_unique` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hostel_members`
--

DROP TABLE IF EXISTS `hostel_members`;
CREATE TABLE IF NOT EXISTS `hostel_members` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `hostelable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hostelable_id` bigint UNSIGNED NOT NULL,
  `hostel_room_id` int UNSIGNED NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0 Inactive, 1 Active',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hostel_members_hostelable_type_hostelable_id_index` (`hostelable_type`,`hostelable_id`),
  KEY `hostel_members_hostel_room_id_foreign` (`hostel_room_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hostel_rooms`
--

DROP TABLE IF EXISTS `hostel_rooms`;
CREATE TABLE IF NOT EXISTS `hostel_rooms` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hostel_id` int UNSIGNED NOT NULL,
  `room_type_id` int UNSIGNED NOT NULL,
  `bed` int NOT NULL DEFAULT '1',
  `fee` double(10,2) DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `hostel_rooms_hostel_id_foreign` (`hostel_id`),
  KEY `hostel_rooms_room_type_id_foreign` (`room_type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hostel_room_types`
--

DROP TABLE IF EXISTS `hostel_room_types`;
CREATE TABLE IF NOT EXISTS `hostel_room_types` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee` double(10,2) DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `hostel_room_types_title_unique` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `id_card_settings`
--

DROP TABLE IF EXISTS `id_card_settings`;
CREATE TABLE IF NOT EXISTS `id_card_settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `background` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `website_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `validity` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `prefix` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_photo` tinyint(1) NOT NULL DEFAULT '0',
  `signature` tinyint(1) NOT NULL DEFAULT '0',
  `barcode` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_card_settings_slug_unique` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `incomes`
--

DROP TABLE IF EXISTS `incomes`;
CREATE TABLE IF NOT EXISTS `incomes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `date` date NOT NULL,
  `reference` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` int DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attach` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `incomes_category_id_foreign` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `income_categories`
--

DROP TABLE IF EXISTS `income_categories`;
CREATE TABLE IF NOT EXISTS `income_categories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `income_categories_title_unique` (`title`),
  UNIQUE KEY `income_categories_slug_unique` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `issue_returns`
--

DROP TABLE IF EXISTS `issue_returns`;
CREATE TABLE IF NOT EXISTS `issue_returns` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `member_id` bigint UNSIGNED NOT NULL,
  `book_id` bigint UNSIGNED NOT NULL,
  `issue_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `penalty` double(10,2) DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0 Lost, 1 Issued, 2 Returned',
  `issued_by` bigint UNSIGNED DEFAULT NULL,
  `received_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `issue_returns_member_id_foreign` (`member_id`),
  KEY `issue_returns_book_id_foreign` (`book_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `unit` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attach` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `items_name_unique` (`name`),
  KEY `items_category_id_foreign` (`category_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `category_id`, `unit`, `serial_number`, `quantity`, `description`, `attach`, `status`, `created_at`, `updated_at`) VALUES
(1, 'wwqeweqewq', 1, 'wq3wq', NULL, 0, 'ewweweq', NULL, 1, '2025-08-17 00:08:25', '2025-08-17 00:08:25'),
(2, 'Napa Extra', 2, NULL, NULL, 0, NULL, NULL, 1, '2025-08-17 00:11:34', '2025-08-17 00:11:34'),
(3, 'Roger Jones', 1, NULL, NULL, 0, NULL, NULL, 1, '2025-08-17 00:12:08', '2025-08-17 00:12:08'),
(4, 'Food Panda', 3, NULL, NULL, 0, NULL, NULL, 1, '2025-08-17 00:12:55', '2025-08-17 00:12:55');

-- --------------------------------------------------------

--
-- Table structure for table `item_categories`
--

DROP TABLE IF EXISTS `item_categories`;
CREATE TABLE IF NOT EXISTS `item_categories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_categories_title_unique` (`title`),
  UNIQUE KEY `item_categories_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_categories`
--

INSERT INTO `item_categories` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Grocery', 'grocery', NULL, 1, '2025-08-17 00:08:10', '2025-08-17 00:11:05'),
(2, 'Fruits & Vegetables', 'fruits-vegetables', NULL, 1, '2025-08-17 00:11:16', '2025-08-17 00:11:16'),
(3, 'Personal Care', 'personal-care', NULL, 1, '2025-08-17 00:12:40', '2025-08-17 00:12:40');

-- --------------------------------------------------------

--
-- Table structure for table `item_issues`
--

DROP TABLE IF EXISTS `item_issues`;
CREATE TABLE IF NOT EXISTS `item_issues` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_id` int UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `issue_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `penalty` double(10,2) DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attach` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0 Lost, 1 Issued, 2 Returned',
  `issued_by` bigint UNSIGNED DEFAULT NULL,
  `received_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_issues_item_id_foreign` (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_stocks`
--

DROP TABLE IF EXISTS `item_stocks`;
CREATE TABLE IF NOT EXISTS `item_stocks` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_id` int UNSIGNED NOT NULL,
  `supplier_id` int UNSIGNED NOT NULL,
  `store_id` int UNSIGNED NOT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `price` decimal(10,2) DEFAULT NULL,
  `date` date NOT NULL,
  `reference` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` int DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attach` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_stocks_item_id_foreign` (`item_id`),
  KEY `item_stocks_store_id_foreign` (`store_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_stocks`
--

INSERT INTO `item_stocks` (`id`, `item_id`, `supplier_id`, `store_id`, `quantity`, `price`, `date`, `reference`, `payment_method`, `description`, `attach`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 132, 3222.00, '2025-08-17', NULL, 2, NULL, NULL, 1, 1, NULL, '2025-08-17 00:09:44', '2025-08-17 00:09:44');

-- --------------------------------------------------------

--
-- Table structure for table `item_stores`
--

DROP TABLE IF EXISTS `item_stores`;
CREATE TABLE IF NOT EXISTS `item_stores` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_stores_title_unique` (`title`),
  UNIQUE KEY `item_stores_store_no_unique` (`store_no`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_stores`
--

INSERT INTO `item_stores` (`id`, `title`, `store_no`, `in_charge`, `email`, `phone`, `address`, `status`, `created_at`, `updated_at`) VALUES
(1, 'rff', 'dfsdfdsf', NULL, 'jahangir3423@gmail.com', '01581094334', NULL, 1, '2025-08-17 00:08:44', '2025-08-17 00:08:44');

-- --------------------------------------------------------

--
-- Table structure for table `item_suppliers`
--

DROP TABLE IF EXISTS `item_suppliers`;
CREATE TABLE IF NOT EXISTS `item_suppliers` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `contact_person` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_person_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_suppliers_title_unique` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_suppliers`
--

INSERT INTO `item_suppliers` (`id`, `title`, `email`, `phone`, `address`, `contact_person`, `designation`, `contact_person_email`, `contact_person_phone`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Biochemistry', NULL, NULL, NULL, 'Hello', NULL, NULL, NULL, NULL, 1, '2025-08-17 00:09:04', '2025-08-17 00:09:04');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `direction` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 LTR, 1 RTL',
  `default` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 Not Default, 1 Default',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `languages_name_unique` (`name`),
  UNIQUE KEY `languages_code_unique` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `code`, `description`, `direction`, `default`, `status`, `created_at`, `updated_at`) VALUES
(1, 'English', 'en', NULL, 0, 1, 1, '2025-08-14 00:00:50', '2025-08-14 00:00:50');

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

DROP TABLE IF EXISTS `leaves`;
CREATE TABLE IF NOT EXISTS `leaves` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_id` int UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `review_by` bigint UNSIGNED DEFAULT NULL,
  `apply_date` date NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attach` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pay_type` tinyint NOT NULL DEFAULT '1' COMMENT '1 Paid & 2 Unpaid',
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0 Pending, 1 Approved and 2 Rejected',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `leaves_type_id_foreign` (`type_id`),
  KEY `leaves_user_id_foreign` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

DROP TABLE IF EXISTS `leave_types`;
CREATE TABLE IF NOT EXISTS `leave_types` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `limit` int NOT NULL DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `leave_types_title_unique` (`title`),
  UNIQUE KEY `leave_types_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_types`
--

INSERT INTO `leave_types` (`id`, `title`, `slug`, `limit`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Casual Leave', 'casual-leave', 0, NULL, 1, NULL, NULL),
(2, 'Sick Leave', 'sick-leave', 0, NULL, 1, NULL, NULL),
(3, 'Maternity Leave', 'maternity-leave', 0, NULL, 1, NULL, NULL),
(4, 'Marriage Leave', 'marriage-leave', 0, NULL, 1, NULL, NULL),
(5, 'Bereavement Leave', 'bereavement-leave', 0, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `library_members`
--

DROP TABLE IF EXISTS `library_members`;
CREATE TABLE IF NOT EXISTS `library_members` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `memberable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `memberable_id` bigint UNSIGNED NOT NULL,
  `library_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0 Inactive, 1 Active',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `library_members_memberable_type_memberable_id_index` (`memberable_type`,`memberable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mail_settings`
--

DROP TABLE IF EXISTS `mail_settings`;
CREATE TABLE IF NOT EXISTS `mail_settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `driver` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `host` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `port` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `encryption` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reply_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mail_settings`
--

INSERT INTO `mail_settings` (`id`, `driver`, `host`, `port`, `username`, `password`, `encryption`, `sender_email`, `sender_name`, `reply_email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'smtp', 'smtp.mailtrap.io', '2525', '5b1c119ce5a400', 'e177cd2e8894b5', 'tls', 'info@mail.com', 'Info Company', 'info@mail.com', 1, '2025-08-14 00:00:50', '2025-08-14 00:00:50');

-- --------------------------------------------------------

--
-- Table structure for table `marksheet_settings`
--

DROP TABLE IF EXISTS `marksheet_settings`;
CREATE TABLE IF NOT EXISTS `marksheet_settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_left` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `header_center` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `header_right` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `footer_left` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `footer_center` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `footer_right` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `logo_left` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `logo_right` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `background` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `width` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'auto',
  `height` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'auto',
  `student_photo` tinyint(1) NOT NULL DEFAULT '0',
  `barcode` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `marksheet_settings_title_unique` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meeting_schedules`
--

DROP TABLE IF EXISTS `meeting_schedules`;
CREATE TABLE IF NOT EXISTS `meeting_schedules` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_id` int UNSIGNED NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `purpose` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `id_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `in_time` time DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `persons` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attach` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0 Canceled, 1 Pending, 2 Progress, 3 Finished',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meeting_schedules_type_id_foreign` (`type_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meeting_types`
--

DROP TABLE IF EXISTS `meeting_types`;
CREATE TABLE IF NOT EXISTS `meeting_types` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `meeting_types_title_unique` (`title`),
  UNIQUE KEY `meeting_types_slug_unique` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2021_06_04_092405_create_faculties_table', 1),
(5, '2021_06_04_102314_create_programs_table', 1),
(6, '2021_06_04_114619_create_batches_table', 1),
(7, '2021_06_04_120154_create_sessions_table', 1),
(8, '2021_06_04_131456_create_semesters_table', 1),
(9, '2021_06_04_132856_create_sections_table', 1),
(10, '2021_06_04_141432_create_class_rooms_table', 1),
(11, '2021_06_05_121933_create_income_categories_table', 1),
(12, '2021_06_05_125236_create_incomes_table', 1),
(13, '2021_06_05_144224_create_expense_categories_table', 1),
(14, '2021_06_05_150317_create_expenses_table', 1),
(15, '2021_06_07_152605_create_subjects_table', 1),
(16, '2021_06_07_155306_create_enroll_subjects_table', 1),
(17, '2021_06_07_160042_create_enroll_subject_subject_table', 1),
(18, '2021_06_08_102053_create_program_subject_table', 1),
(19, '2021_06_08_105550_create_batch_program_table', 1),
(20, '2021_06_08_125338_create_program_semester_table', 1),
(21, '2021_06_08_125531_create_program_class_room_table', 1),
(22, '2021_06_08_180439_create_program_session_table', 1),
(23, '2021_06_08_182844_create_program_semester_sections_table', 1),
(24, '2021_06_09_133442_create_class_routines_table', 1),
(25, '2021_06_12_153215_create_departments_table', 1),
(26, '2021_06_12_155411_create_designations_table', 1),
(27, '2021_06_13_075755_create_leave_types_table', 1),
(28, '2021_06_13_125451_create_leaves_table', 1),
(29, '2021_06_13_173512_create_work_shift_types_table', 1),
(30, '2021_06_13_175400_create_tax_settings_table', 1),
(31, '2021_06_13_193417_create_user_program_table', 1),
(32, '2021_06_15_184223_create_staff_attendances_table', 1),
(33, '2021_06_16_180912_create_staff_hourly_attendances_table', 1),
(34, '2021_06_17_083411_create_payrolls_table', 1),
(35, '2021_06_17_183706_create_payroll_details_table', 1),
(36, '2021_06_22_185503_create_jobs_table', 1),
(37, '2021_07_04_172713_create_application_settings_table', 1),
(38, '2021_07_06_121630_create_applications_table', 1),
(39, '2021_07_07_081616_create_students_table', 1),
(40, '2021_07_07_182329_create_student_relatives_table', 1),
(41, '2021_07_07_190034_create_documents_table', 1),
(42, '2021_07_07_192727_create_docables_table', 1),
(43, '2021_07_08_054948_create_student_enrolls_table', 1),
(44, '2021_07_08_172152_create_student_transfers_table', 1),
(45, '2021_07_08_195650_create_transfer_creadits_table', 1),
(46, '2021_07_09_061940_create_status_types_table', 1),
(47, '2021_07_09_092958_create_status_type_student_table', 1),
(48, '2021_07_09_163443_create_student_enroll_subject_table', 1),
(49, '2021_07_09_173413_create_student_leaves_table', 1),
(50, '2021_07_09_194126_create_student_attendances_table', 1),
(51, '2021_07_17_160726_create_events_table', 1),
(52, '2021_07_18_074323_create_notice_categories_table', 1),
(53, '2021_07_18_080209_create_notices_table', 1),
(54, '2021_07_18_105550_create_noticeables_table', 1),
(55, '2021_07_19_182908_create_email_notifies_table', 1),
(56, '2021_07_19_200327_create_s_m_s_notifies_table', 1),
(57, '2021_09_01_070002_create_exam_types_table', 1),
(58, '2021_09_01_071547_create_result_contributions_table', 1),
(59, '2021_09_01_084615_create_grades_table', 1),
(60, '2021_09_02_184433_create_exams_table', 1),
(61, '2021_09_04_101915_create_subject_markings_table', 1),
(62, '2021_09_27_183257_create_certificate_templates_table', 1),
(63, '2021_10_01_163600_create_certificates_table', 1),
(64, '2021_10_15_182241_create_marksheet_settings_table', 1),
(65, '2022_01_21_142336_create_print_settings_table', 1),
(66, '2022_01_21_170648_create_visit_purposes_table', 1),
(67, '2022_01_21_171901_create_visitors_table', 1),
(68, '2022_01_21_185105_create_postal_exchange_types_table', 1),
(69, '2022_01_21_185152_create_postal_exchanges_table', 1),
(70, '2022_01_21_185201_create_phone_logs_table', 1),
(71, '2022_01_22_103339_create_complain_types_table', 1),
(72, '2022_01_22_103551_create_complain_sources_table', 1),
(73, '2022_01_22_103657_create_complains_table', 1),
(74, '2022_01_23_103439_create_enquiry_sources_table', 1),
(75, '2022_01_23_110653_create_enquiry_references_table', 1),
(76, '2022_01_23_114509_create_enquiries_table', 1),
(77, '2022_01_23_192650_create_meeting_types_table', 1),
(78, '2022_01_23_202252_create_meeting_schedules_table', 1),
(79, '2022_01_24_174515_create_assignments_table', 1),
(80, '2022_01_24_179252_create_student_assignments_table', 1),
(81, '2022_01_24_181419_create_content_types_table', 1),
(82, '2022_01_25_165931_create_contents_table', 1),
(83, '2022_01_26_105511_create_contentables_table', 1),
(84, '2022_01_27_100200_create_notifications_table', 1),
(85, '2022_01_28_131433_create_book_categories_table', 1),
(86, '2022_01_28_173902_create_books_table', 1),
(87, '2022_01_28_195224_create_book_requests_table', 1),
(88, '2022_01_29_045003_create_outside_users_table', 1),
(89, '2022_01_29_045120_create_library_members_table', 1),
(90, '2022_01_29_093915_create_issue_returns_table', 1),
(91, '2022_01_31_061950_create_notes_table', 1),
(92, '2022_02_15_173515_create_fees_categories_table', 1),
(93, '2022_02_15_182124_create_fees_masters_table', 1),
(94, '2022_02_16_100327_create_fees_master_student_enroll', 1),
(95, '2022_02_26_184930_create_fees_fines_table', 1),
(96, '2022_02_26_191642_create_fees_category_fees_fine_table', 1),
(97, '2022_03_04_172257_create_fees_discounts_table', 1),
(98, '2022_03_05_132058_create_fees_category_fees_discount_table', 1),
(99, '2022_03_05_132541_create_fees_discount_status_type_table', 1),
(100, '2022_03_05_195051_create_fees_table', 1),
(101, '2022_03_05_203440_create_transactions_table', 1),
(102, '2022_03_10_131324_create_exam_routines_table', 1),
(103, '2022_03_10_131936_create_exam_routine_user_table', 1),
(104, '2022_03_10_132124_create_exam_routine_room_table', 1),
(105, '2022_03_31_074913_create_id_card_settings_table', 1),
(106, '2022_04_01_125726_create_settings_table', 1),
(107, '2022_04_01_210417_create_languages_table', 1),
(108, '2022_04_02_144303_create_permission_tables', 1),
(109, '2022_04_03_103141_create_mail_settings_table', 1),
(110, '2022_04_03_173021_create_s_m_s_settings_table', 1),
(111, '2022_04_03_174009_create_schedule_settings_table', 1),
(112, '2022_04_04_123222_create_provinces_table', 1),
(113, '2022_04_04_173222_create_districts_table', 1),
(114, '2022_11_20_171503_create_item_categories_table', 1),
(115, '2022_11_20_182303_create_item_stores_table', 1),
(116, '2022_11_20_185841_create_item_suppliers_table', 1),
(117, '2022_11_21_190954_create_items_table', 1),
(118, '2022_11_21_194218_create_item_stocks_table', 1),
(119, '2022_11_21_200834_create_item_issues_table', 1),
(120, '2022_12_08_140339_create_hostel_room_types_table', 1),
(121, '2022_12_08_193208_create_hostels_table', 1),
(122, '2022_12_10_203126_create_hostel_rooms_table', 1),
(123, '2022_12_14_181050_create_hostel_members_table', 1),
(124, '2022_12_22_112935_create_transport_routes_table', 1),
(125, '2022_12_23_110116_create_transport_vehicles_table', 1),
(126, '2022_12_23_112400_create_transport_route_transport_vehicle_table', 1),
(127, '2022_12_24_121402_create_transport_members_table', 1),
(128, '2022_12_29_173356_add_fields_to_tables', 1),
(129, '2023_08_12_153552_add_fields_v3_to_table', 1),
(130, '2023_08_12_174813_create_fields_table', 1),
(131, '2023_08_15_010030_create_topbar_settings_table', 1),
(132, '2023_08_15_010553_create_social_settings_table', 1),
(133, '2023_08_15_025440_create_sliders_table', 1),
(134, '2023_08_15_034340_create_features_table', 1),
(135, '2023_08_15_043734_create_about_us_table', 1),
(136, '2023_08_15_112651_create_faqs_table', 1),
(137, '2023_08_15_115731_create_testimonials_table', 1),
(138, '2023_08_15_121544_create_call_to_actions_table', 1),
(139, '2023_08_16_172019_create_galleries_table', 1),
(140, '2023_08_16_172620_create_courses_table', 1),
(141, '2023_08_16_173224_create_web_events_table', 1),
(142, '2023_08_16_173331_create_news_table', 1),
(143, '2023_08_23_142818_create_pages_table', 1),
(144, '2024_07_12_150232_create_failed_jobs_table', 1),
(145, '2024_08_29_170852_add_fields_v4_to_table', 1),
(146, '2025_08_13_090142_create_student_categories_table', 1),
(147, '2025_08_13_093815_create_religions_table', 1),
(148, '2025_08_13_114235_create_castes_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(6, 'App\\User', 2);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `language_id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attach` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
CREATE TABLE IF NOT EXISTS `notes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `noteable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `noteable_id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attach` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notes_noteable_type_noteable_id_index` (`noteable_type`,`noteable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `noticeables`
--

DROP TABLE IF EXISTS `noticeables`;
CREATE TABLE IF NOT EXISTS `noticeables` (
  `notice_id` bigint NOT NULL,
  `noticeable_id` bigint NOT NULL,
  `noticeable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

DROP TABLE IF EXISTS `notices`;
CREATE TABLE IF NOT EXISTS `notices` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `faculty_id` int UNSIGNED DEFAULT NULL,
  `program_id` int UNSIGNED DEFAULT NULL,
  `session_id` int UNSIGNED DEFAULT NULL,
  `semester_id` int UNSIGNED DEFAULT NULL,
  `section_id` int UNSIGNED DEFAULT NULL,
  `category_id` int UNSIGNED NOT NULL,
  `notice_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `date` date NOT NULL,
  `attach` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `notices_notice_no_unique` (`notice_no`),
  KEY `notices_category_id_foreign` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notice_categories`
--

DROP TABLE IF EXISTS `notice_categories`;
CREATE TABLE IF NOT EXISTS `notice_categories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `notice_categories_title_unique` (`title`),
  UNIQUE KEY `notice_categories_slug_unique` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `outside_users`
--

DROP TABLE IF EXISTS `outside_users`;
CREATE TABLE IF NOT EXISTS `outside_users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_occupation` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_occupation` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `mother_photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_province` int UNSIGNED DEFAULT NULL,
  `present_district` int UNSIGNED DEFAULT NULL,
  `present_village` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `present_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `permanent_province` int UNSIGNED DEFAULT NULL,
  `permanent_district` int UNSIGNED DEFAULT NULL,
  `permanent_village` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `permanent_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `education_level` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` tinyint NOT NULL COMMENT '1 Male, 2 Female & 3 Other',
  `dob` date NOT NULL,
  `religion` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caste` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_tongue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` tinyint DEFAULT NULL,
  `blood_group` tinyint DEFAULT NULL,
  `nationality` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `signature` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0 Inactive, 1 Active',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `outside_users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `language_id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attach` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pages_title_unique` (`title`),
  UNIQUE KEY `pages_slug_unique` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payrolls`
--

DROP TABLE IF EXISTS `payrolls`;
CREATE TABLE IF NOT EXISTS `payrolls` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `basic_salary` double(10,2) NOT NULL DEFAULT '0.00',
  `salary_type` tinyint NOT NULL DEFAULT '1' COMMENT '1 Fixed & 2 Hourly',
  `total_earning` double(10,2) NOT NULL,
  `total_allowance` double(10,2) NOT NULL DEFAULT '0.00',
  `bonus` double(10,2) NOT NULL DEFAULT '0.00',
  `total_deduction` double(10,2) NOT NULL DEFAULT '0.00',
  `gross_salary` double(10,2) NOT NULL,
  `tax` double(10,2) NOT NULL DEFAULT '0.00',
  `net_salary` double(10,2) NOT NULL,
  `salary_month` date NOT NULL,
  `pay_date` date DEFAULT NULL,
  `payment_method` int DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0 Unpaid, 1 Paid',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payroll_details`
--

DROP TABLE IF EXISTS `payroll_details`;
CREATE TABLE IF NOT EXISTS `payroll_details` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `payroll_id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0 Deduction, 1 Allowance',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payroll_details_payroll_id_foreign` (`payroll_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `group` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=456 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `group`, `title`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'application-view', 'Application', 'View', 'web', NULL, NULL),
(2, 'application-create', 'Application', 'Admission', 'web', NULL, NULL),
(3, 'application-edit', 'Application', 'Action', 'web', NULL, NULL),
(4, 'application-delete', 'Application', 'Delete', 'web', NULL, NULL),
(5, 'student-view', 'Student', 'View', 'web', NULL, NULL),
(6, 'student-create', 'Student', 'Create', 'web', NULL, NULL),
(7, 'student-edit', 'Student', 'Edit', 'web', NULL, NULL),
(8, 'student-delete', 'Student', 'Delete', 'web', NULL, NULL),
(9, 'student-import', 'Student', 'Import', 'web', NULL, NULL),
(10, 'student-password-print', 'Student', 'Password Print', 'web', NULL, NULL),
(11, 'student-password-change', 'Student', 'Password Change', 'web', NULL, NULL),
(12, 'student-card', 'Student', 'ID Card', 'web', NULL, NULL),
(13, 'id-card-setting-view', 'ID Card', 'Setting', 'web', NULL, NULL),
(14, 'student-category-view', 'Student Category', 'View', 'web', NULL, NULL),
(15, 'student-category-create', 'Student Category', 'Create', 'web', NULL, NULL),
(16, 'student-category-edit', 'Student Category', 'Edit', 'web', NULL, NULL),
(17, 'student-category-delete', 'Student Category', 'Delete', 'web', NULL, NULL),
(18, 'student-transfer-in-view', 'Transfer In', 'View', 'web', NULL, NULL),
(19, 'student-transfer-in-create', 'Transfer In', 'Transfer', 'web', NULL, NULL),
(20, 'student-transfer-in-edit', 'Transfer In', 'Edit', 'web', NULL, NULL),
(21, 'student-transfer-out-view', 'Transfer Out', 'View', 'web', NULL, NULL),
(22, 'student-transfer-out-create', 'Transfer Out', 'Transfer', 'web', NULL, NULL),
(23, 'student-transfer-out-edit', 'Transfer Out', 'Edit', 'web', NULL, NULL),
(24, 'status-type-view', 'Status Type', 'View', 'web', NULL, NULL),
(25, 'status-type-create', 'Status Type', 'Create', 'web', NULL, NULL),
(26, 'status-type-edit', 'Status Type', 'Edit', 'web', NULL, NULL),
(27, 'status-type-delete', 'Status Type', 'Delete', 'web', NULL, NULL),
(28, 'student-attendance-action', 'Student Attendance', 'Manage', 'web', NULL, NULL),
(29, 'student-attendance-report', 'Student Attendance', 'Report', 'web', NULL, NULL),
(30, 'student-attendance-import', 'Student Attendance', 'Import', 'web', NULL, NULL),
(31, 'student-leave-manage-view', 'Student Leave', 'View', 'web', NULL, NULL),
(32, 'student-leave-manage-edit', 'Student Leave', 'Action', 'web', NULL, NULL),
(33, 'student-leave-manage-delete', 'Student Leave', 'Delete', 'web', NULL, NULL),
(34, 'student-note-view', 'Student Note', 'View', 'web', NULL, NULL),
(35, 'student-note-create', 'Student Note', 'Create', 'web', NULL, NULL),
(36, 'student-note-edit', 'Student Note', 'Edit', 'web', NULL, NULL),
(37, 'student-note-delete', 'Student Note', 'Delete', 'web', NULL, NULL),
(38, 'student-enroll-single', 'Enrollments', 'Single Enroll', 'web', NULL, NULL),
(39, 'student-enroll-group', 'Enrollments', 'Group Enroll', 'web', NULL, NULL),
(40, 'student-enroll-adddrop', 'Enrollments', 'Course Add Drop', 'web', NULL, NULL),
(41, 'student-enroll-complete', 'Enrollments', 'Course Graduation', 'web', NULL, NULL),
(42, 'student-enroll-alumni', 'Enrollments', 'Alumni List', 'web', NULL, NULL),
(43, 'faculty-view', 'Faculty', 'View', 'web', NULL, NULL),
(44, 'faculty-create', 'Faculty', 'Create', 'web', NULL, NULL),
(45, 'faculty-edit', 'Faculty', 'Edit', 'web', NULL, NULL),
(46, 'faculty-delete', 'Faculty', 'Delete', 'web', NULL, NULL),
(47, 'program-view', 'Program', 'View', 'web', NULL, NULL),
(48, 'program-create', 'Program', 'Create', 'web', NULL, NULL),
(49, 'program-edit', 'Program', 'Edit', 'web', NULL, NULL),
(50, 'program-delete', 'Program', 'Delete', 'web', NULL, NULL),
(51, 'batch-view', 'Batch', 'View', 'web', NULL, NULL),
(52, 'batch-create', 'Batch', 'Create', 'web', NULL, NULL),
(53, 'batch-edit', 'Batch', 'Edit', 'web', NULL, NULL),
(54, 'batch-delete', 'Batch', 'Delete', 'web', NULL, NULL),
(55, 'session-view', 'Session', 'View', 'web', NULL, NULL),
(56, 'session-create', 'Session', 'Create', 'web', NULL, NULL),
(57, 'session-edit', 'Session', 'Edit', 'web', NULL, NULL),
(58, 'session-delete', 'Session', 'Delete', 'web', NULL, NULL),
(59, 'semester-view', 'Semester', 'View', 'web', NULL, NULL),
(60, 'semester-create', 'Semester', 'Create', 'web', NULL, NULL),
(61, 'semester-edit', 'Semester', 'Edit', 'web', NULL, NULL),
(62, 'semester-delete', 'Semester', 'Delete', 'web', NULL, NULL),
(63, 'section-view', 'Section', 'View', 'web', NULL, NULL),
(64, 'section-create', 'Section', 'Create', 'web', NULL, NULL),
(65, 'section-edit', 'Section', 'Edit', 'web', NULL, NULL),
(66, 'section-delete', 'Section', 'Delete', 'web', NULL, NULL),
(67, 'class-room-view', 'Class Room', 'View', 'web', NULL, NULL),
(68, 'class-room-create', 'Class Room', 'Create', 'web', NULL, NULL),
(69, 'class-room-edit', 'Class Room', 'Edit', 'web', NULL, NULL),
(70, 'class-room-delete', 'Class Room', 'Delete', 'web', NULL, NULL),
(71, 'subject-view', 'Course', 'View', 'web', NULL, NULL),
(72, 'subject-create', 'Course', 'Create', 'web', NULL, NULL),
(73, 'subject-edit', 'Course', 'Edit', 'web', NULL, NULL),
(74, 'subject-delete', 'Course', 'Delete', 'web', NULL, NULL),
(75, 'subject-import', 'Course', 'Import', 'web', NULL, NULL),
(76, 'enroll-subject-view', 'Enroll Course', 'View', 'web', NULL, NULL),
(77, 'enroll-subject-create', 'Enroll Course', 'Create', 'web', NULL, NULL),
(78, 'enroll-subject-edit', 'Enroll Course', 'Edit', 'web', NULL, NULL),
(79, 'enroll-subject-delete', 'Enroll Course', 'Delete', 'web', NULL, NULL),
(80, 'class-routine-view', 'Class Routine', 'View', 'web', NULL, NULL),
(81, 'class-routine-create', 'Class Routine', 'Manage', 'web', NULL, NULL),
(82, 'class-routine-print', 'Class Routine', 'Print', 'web', NULL, NULL),
(83, 'class-routine-teacher', 'Class Routine', 'Teacher', 'web', NULL, NULL),
(84, 'exam-routine-view', 'Exam Routine', 'View', 'web', NULL, NULL),
(85, 'exam-routine-create', 'Exam Routine', 'Manage', 'web', NULL, NULL),
(86, 'exam-routine-edit', 'Exam Routine', 'Edit', 'web', NULL, NULL),
(87, 'exam-routine-delete', 'Exam Routine', 'Delete', 'web', NULL, NULL),
(88, 'exam-routine-print', 'Exam Routine', 'Print', 'web', NULL, NULL),
(89, 'routine-setting-class', 'Routine Setting', 'Class Routine', 'web', NULL, NULL),
(90, 'routine-setting-exam', 'Routine Setting', 'Exam Routine', 'web', NULL, NULL),
(91, 'exam-attendance', 'Exam', 'Attendance', 'web', NULL, NULL),
(92, 'exam-marking', 'Exam', 'Mark Ledger', 'web', NULL, NULL),
(93, 'exam-result', 'Exam', 'Result', 'web', NULL, NULL),
(94, 'exam-import', 'Exam', 'Import', 'web', NULL, NULL),
(95, 'subject-marking', 'Course Final', 'Mark Ledger', 'web', NULL, NULL),
(96, 'subject-result', 'Course Final', 'Result', 'web', NULL, NULL),
(97, 'grade-view', 'Grading System', 'View', 'web', NULL, NULL),
(98, 'grade-create', 'Grading System', 'Create', 'web', NULL, NULL),
(99, 'grade-edit', 'Grading System', 'Edit', 'web', NULL, NULL),
(100, 'grade-delete', 'Grading System', 'Delete', 'web', NULL, NULL),
(101, 'exam-type-view', 'Exam Type', 'View', 'web', NULL, NULL),
(102, 'exam-type-create', 'Exam Type', 'Create', 'web', NULL, NULL),
(103, 'exam-type-edit', 'Exam Type', 'Edit', 'web', NULL, NULL),
(104, 'exam-type-delete', 'Exam Type', 'Delete', 'web', NULL, NULL),
(105, 'admit-card-view', 'Admit Card', 'View', 'web', NULL, NULL),
(106, 'admit-card-print', 'Admit Card', 'Print', 'web', NULL, NULL),
(107, 'admit-card-download', 'Admit Card', 'Download', 'web', NULL, NULL),
(108, 'admit-setting-view', 'Admit Card', 'Setting', 'web', NULL, NULL),
(109, 'result-contribution-view', 'Mark Distribution', 'Setting', 'web', NULL, NULL),
(110, 'assignment-view', 'Assignment', 'View', 'web', NULL, NULL),
(111, 'assignment-create', 'Assignment', 'Create', 'web', NULL, NULL),
(112, 'assignment-edit', 'Assignment', 'Edit', 'web', NULL, NULL),
(113, 'assignment-delete', 'Assignment', 'Delete', 'web', NULL, NULL),
(114, 'assignment-marking', 'Assignment', 'Mark Ledger', 'web', NULL, NULL),
(115, 'content-view', 'Content', 'View', 'web', NULL, NULL),
(116, 'content-create', 'Content', 'Create', 'web', NULL, NULL),
(117, 'content-edit', 'Content', 'Edit', 'web', NULL, NULL),
(118, 'content-delete', 'Content', 'Delete', 'web', NULL, NULL),
(119, 'content-type-view', 'Content Type', 'View', 'web', NULL, NULL),
(120, 'content-type-create', 'Content Type', 'Create', 'web', NULL, NULL),
(121, 'content-type-edit', 'Content Type', 'Edit', 'web', NULL, NULL),
(122, 'content-type-delete', 'Content Type', 'Delete', 'web', NULL, NULL),
(123, 'fees-student-due', 'Student Fees', 'Fees Due', 'web', NULL, NULL),
(124, 'fees-student-quick-assign', 'Student Fees', 'Quick Assign', 'web', NULL, NULL),
(125, 'fees-student-quick-received', 'Student Fees', 'Quick Received', 'web', NULL, NULL),
(126, 'fees-student-report', 'Student Fees', 'Report', 'web', NULL, NULL),
(127, 'fees-student-action', 'Student Fees', 'Action', 'web', NULL, NULL),
(128, 'fees-student-print', 'Student Fees', 'Print', 'web', NULL, NULL),
(129, 'fees-receipt-view', 'Fees Receipt', 'Setting', 'web', NULL, NULL),
(130, 'fees-master-create', 'Assign Fees', 'Manage', 'web', NULL, NULL),
(131, 'fees-master-view', 'Assign Fees', 'Report', 'web', NULL, NULL),
(132, 'fees-category-view', 'Fees Type', 'View', 'web', NULL, NULL),
(133, 'fees-category-create', 'Fees Type', 'Create', 'web', NULL, NULL),
(134, 'fees-category-edit', 'Fees Type', 'Edit', 'web', NULL, NULL),
(135, 'fees-category-delete', 'Fees Type', 'Delete', 'web', NULL, NULL),
(136, 'fees-discount-view', 'Fees Discount', 'View', 'web', NULL, NULL),
(137, 'fees-discount-create', 'Fees Discount', 'Create', 'web', NULL, NULL),
(138, 'fees-discount-edit', 'Fees Discount', 'Edit', 'web', NULL, NULL),
(139, 'fees-discount-delete', 'Fees Discount', 'Delete', 'web', NULL, NULL),
(140, 'fees-fine-view', 'Fees Fine', 'View', 'web', NULL, NULL),
(141, 'fees-fine-create', 'Fees Fine', 'Create', 'web', NULL, NULL),
(142, 'fees-fine-edit', 'Fees Fine', 'Edit', 'web', NULL, NULL),
(143, 'fees-fine-delete', 'Fees Fine', 'Delete', 'web', NULL, NULL),
(144, 'user-view', 'Staff List', 'View', 'web', NULL, NULL),
(145, 'user-create', 'Staff List', 'Create', 'web', NULL, NULL),
(146, 'user-edit', 'Staff List', 'Edit', 'web', NULL, NULL),
(147, 'user-delete', 'Staff List', 'Delete', 'web', NULL, NULL),
(148, 'user-import', 'Staff List', 'Import', 'web', NULL, NULL),
(149, 'user-password-change', 'Staff List', 'Password Change', 'web', NULL, NULL),
(150, 'staff-note-view', 'Staff Note', 'View', 'web', NULL, NULL),
(151, 'staff-note-create', 'Staff Note', 'Create', 'web', NULL, NULL),
(152, 'staff-note-edit', 'Staff Note', 'Edit', 'web', NULL, NULL),
(153, 'staff-note-delete', 'Staff Note', 'Delete', 'web', NULL, NULL),
(154, 'payroll-view', 'Payroll', 'View', 'web', NULL, NULL),
(155, 'payroll-action', 'Payroll', 'Action', 'web', NULL, NULL),
(156, 'payroll-report', 'Payroll', 'Report', 'web', NULL, NULL),
(157, 'payroll-print', 'Payroll', 'Print', 'web', NULL, NULL),
(158, 'pay-slip-setting-view', 'Pay Slip', 'Setting', 'web', NULL, NULL),
(159, 'work-shift-type-view', 'Work Shift Type', 'View', 'web', NULL, NULL),
(160, 'work-shift-type-create', 'Work Shift Type', 'Create', 'web', NULL, NULL),
(161, 'work-shift-type-edit', 'Work Shift Type', 'Edit', 'web', NULL, NULL),
(162, 'work-shift-type-delete', 'Work Shift Type', 'Delete', 'web', NULL, NULL),
(163, 'tax-setting-view', 'Tax Setting', 'View', 'web', NULL, NULL),
(164, 'tax-setting-create', 'Tax Setting', 'Create', 'web', NULL, NULL),
(165, 'tax-setting-edit', 'Tax Setting', 'Edit', 'web', NULL, NULL),
(166, 'tax-setting-delete', 'Tax Setting', 'Delete', 'web', NULL, NULL),
(167, 'designation-view', 'Designation', 'View', 'web', NULL, NULL),
(168, 'designation-create', 'Designation', 'Create', 'web', NULL, NULL),
(169, 'designation-edit', 'Designation', 'Edit', 'web', NULL, NULL),
(170, 'designation-delete', 'Designation', 'Delete', 'web', NULL, NULL),
(171, 'department-view', 'Department', 'View', 'web', NULL, NULL),
(172, 'department-create', 'Department', 'Create', 'web', NULL, NULL),
(173, 'department-edit', 'Department', 'Edit', 'web', NULL, NULL),
(174, 'department-delete', 'Department', 'Delete', 'web', NULL, NULL),
(175, 'staff-daily-attendance-action', 'Staff Daily Attendance', 'Manage', 'web', NULL, NULL),
(176, 'staff-daily-attendance-report', 'Staff Daily Attendance', 'Report', 'web', NULL, NULL),
(177, 'staff-hourly-attendance-action', 'Staff Hourly Attendance', 'Manage', 'web', NULL, NULL),
(178, 'staff-hourly-attendance-report', 'Staff Hourly Attendance', 'Report', 'web', NULL, NULL),
(179, 'staff-leave-view', 'Staff Apply Leave', 'View', 'web', NULL, NULL),
(180, 'staff-leave-create', 'Staff Apply Leave', 'Apply', 'web', NULL, NULL),
(181, 'staff-leave-delete', 'Staff Apply Leave', 'Delete', 'web', NULL, NULL),
(182, 'leave-type-view', 'Leave Type', 'View', 'web', NULL, NULL),
(183, 'leave-type-create', 'Leave Type', 'Create', 'web', NULL, NULL),
(184, 'leave-type-edit', 'Leave Type', 'Edit', 'web', NULL, NULL),
(185, 'leave-type-delete', 'Leave Type', 'Delete', 'web', NULL, NULL),
(186, 'staff-leave-manage-view', 'Staff Leave Manage', 'View', 'web', NULL, NULL),
(187, 'staff-leave-manage-edit', 'Staff Leave Manage', 'Action', 'web', NULL, NULL),
(188, 'staff-leave-manage-delete', 'Staff Leave Manage', 'Delete', 'web', NULL, NULL),
(189, 'income-view', 'Income', 'View', 'web', NULL, NULL),
(190, 'income-create', 'Income', 'Create', 'web', NULL, NULL),
(191, 'income-edit', 'Income', 'Edit', 'web', NULL, NULL),
(192, 'income-delete', 'Income', 'Delete', 'web', NULL, NULL),
(193, 'income-category-view', 'Income Category', 'View', 'web', NULL, NULL),
(194, 'income-category-create', 'Income Category', 'Create', 'web', NULL, NULL),
(195, 'income-category-edit', 'Income Category', 'Edit', 'web', NULL, NULL),
(196, 'income-category-delete', 'Income Category', 'Delete', 'web', NULL, NULL),
(197, 'expense-view', 'Expense', 'View', 'web', NULL, NULL),
(198, 'expense-create', 'Expense', 'Create', 'web', NULL, NULL),
(199, 'expense-edit', 'Expense', 'Edit', 'web', NULL, NULL),
(200, 'expense-delete', 'Expense', 'Delete', 'web', NULL, NULL),
(201, 'expense-category-view', 'Expense Category', 'View', 'web', NULL, NULL),
(202, 'expense-category-create', 'Expense Category', 'Create', 'web', NULL, NULL),
(203, 'expense-category-edit', 'Expense Category', 'Edit', 'web', NULL, NULL),
(204, 'expense-category-delete', 'Expense Category', 'Delete', 'web', NULL, NULL),
(205, 'outcome-view', 'Outcome Overview', 'View', 'web', NULL, NULL),
(206, 'email-notify-view', 'Send Email', 'View', 'web', NULL, NULL),
(207, 'email-notify-create', 'Send Email', 'Send', 'web', NULL, NULL),
(208, 'email-notify-delete', 'Send Email', 'Delete', 'web', NULL, NULL),
(209, 'sms-notify-view', 'Send SMS', 'View', 'web', NULL, NULL),
(210, 'sms-notify-create', 'Send SMS', 'Send', 'web', NULL, NULL),
(211, 'sms-notify-delete', 'Send SMS', 'Delete', 'web', NULL, NULL),
(212, 'event-view', 'Event', 'View', 'web', NULL, NULL),
(213, 'event-create', 'Event', 'Create', 'web', NULL, NULL),
(214, 'event-edit', 'Event', 'Edit', 'web', NULL, NULL),
(215, 'event-delete', 'Event', 'Delete', 'web', NULL, NULL),
(216, 'event-calendar', 'Event', 'Calendar', 'web', NULL, NULL),
(217, 'notice-view', 'Notice List', 'View', 'web', NULL, NULL),
(218, 'notice-create', 'Notice List', 'Create', 'web', NULL, NULL),
(219, 'notice-edit', 'Notice List', 'Edit', 'web', NULL, NULL),
(220, 'notice-delete', 'Notice List', 'Delete', 'web', NULL, NULL),
(221, 'notice-category-view', 'Notice Category', 'View', 'web', NULL, NULL),
(222, 'notice-category-create', 'Notice Category', 'Create', 'web', NULL, NULL),
(223, 'notice-category-edit', 'Notice Category', 'Edit', 'web', NULL, NULL),
(224, 'notice-category-delete', 'Notice Category', 'Delete', 'web', NULL, NULL),
(225, 'book-issue-view', 'Issue Book', 'View', 'web', NULL, NULL),
(226, 'book-issue-action', 'Issue Book', 'Action', 'web', NULL, NULL),
(227, 'book-issue-delete', 'Issue Book', 'Delete', 'web', NULL, NULL),
(228, 'library-member-view', 'Library Member', 'View', 'web', NULL, NULL),
(229, 'library-member-create', 'Library Member', 'Create', 'web', NULL, NULL),
(230, 'library-member-edit', 'Library Member', 'Edit', 'web', NULL, NULL),
(231, 'library-member-delete', 'Library Member', 'Delete', 'web', NULL, NULL),
(232, 'library-member-card', 'Library Member', 'Card Print', 'web', NULL, NULL),
(233, 'library-card-setting-view', 'Library Card', 'Setting', 'web', NULL, NULL),
(234, 'book-view', 'Book List', 'View', 'web', NULL, NULL),
(235, 'book-create', 'Book List', 'Create', 'web', NULL, NULL),
(236, 'book-edit', 'Book List', 'Edit', 'web', NULL, NULL),
(237, 'book-delete', 'Book List', 'Delete', 'web', NULL, NULL),
(238, 'book-import', 'Book List', 'Import', 'web', NULL, NULL),
(239, 'book-print', 'Book List', 'Token Print', 'web', NULL, NULL),
(240, 'book-request-view', 'Book Request', 'View', 'web', NULL, NULL),
(241, 'book-request-create', 'Book Request', 'Create', 'web', NULL, NULL),
(242, 'book-request-edit', 'Book Request', 'Edit', 'web', NULL, NULL),
(243, 'book-request-delete', 'Book Request', 'Delete', 'web', NULL, NULL),
(244, 'book-category-view', 'Book Category', 'View', 'web', NULL, NULL),
(245, 'book-category-create', 'Book Category', 'Create', 'web', NULL, NULL),
(246, 'book-category-edit', 'Book Category', 'Edit', 'web', NULL, NULL),
(247, 'book-category-delete', 'Book Category', 'Delete', 'web', NULL, NULL),
(248, 'item-issue-view', 'Issue Item', 'View', 'web', NULL, NULL),
(249, 'item-issue-action', 'Issue Item', 'Action', 'web', NULL, NULL),
(250, 'item-issue-delete', 'Issue Item', 'Delete', 'web', NULL, NULL),
(251, 'item-stock-view', 'Item Stock', 'View', 'web', NULL, NULL),
(252, 'item-stock-create', 'Item Stock', 'Create', 'web', NULL, NULL),
(253, 'item-stock-edit', 'Item Stock', 'Edit', 'web', NULL, NULL),
(254, 'item-stock-delete', 'Item Stock', 'Delete', 'web', NULL, NULL),
(255, 'item-view', 'Item List', 'View', 'web', NULL, NULL),
(256, 'item-create', 'Item List', 'Create', 'web', NULL, NULL),
(257, 'item-edit', 'Item List', 'Edit', 'web', NULL, NULL),
(258, 'item-delete', 'Item List', 'Delete', 'web', NULL, NULL),
(259, 'item-store-view', 'Store', 'View', 'web', NULL, NULL),
(260, 'item-store-create', 'Store', 'Create', 'web', NULL, NULL),
(261, 'item-store-edit', 'Store', 'Edit', 'web', NULL, NULL),
(262, 'item-store-delete', 'Store', 'Delete', 'web', NULL, NULL),
(263, 'item-supplier-view', 'Supplier', 'View', 'web', NULL, NULL),
(264, 'item-supplier-create', 'Supplier', 'Create', 'web', NULL, NULL),
(265, 'item-supplier-edit', 'Supplier', 'Edit', 'web', NULL, NULL),
(266, 'item-supplier-delete', 'Supplier', 'Delete', 'web', NULL, NULL),
(267, 'item-category-view', 'Item Category', 'View', 'web', NULL, NULL),
(268, 'item-category-create', 'Item Category', 'Create', 'web', NULL, NULL),
(269, 'item-category-edit', 'Item Category', 'Edit', 'web', NULL, NULL),
(270, 'item-category-delete', 'Item Category', 'Delete', 'web', NULL, NULL),
(271, 'hostel-member-view', 'Hostel Member', 'View', 'web', NULL, NULL),
(272, 'hostel-member-create', 'Hostel Member', 'Manage', 'web', NULL, NULL),
(273, 'hostel-room-view', 'Hostel Room', 'View', 'web', NULL, NULL),
(274, 'hostel-room-create', 'Hostel Room', 'Create', 'web', NULL, NULL),
(275, 'hostel-room-edit', 'Hostel Room', 'Edit', 'web', NULL, NULL),
(276, 'hostel-room-delete', 'Hostel Room', 'Delete', 'web', NULL, NULL),
(277, 'hostel-view', 'Hostel', 'View', 'web', NULL, NULL),
(278, 'hostel-create', 'Hostel', 'Create', 'web', NULL, NULL),
(279, 'hostel-edit', 'Hostel', 'Edit', 'web', NULL, NULL),
(280, 'hostel-delete', 'Hostel', 'Delete', 'web', NULL, NULL),
(281, 'room-type-view', 'Room Type', 'View', 'web', NULL, NULL),
(282, 'room-type-create', 'Room Type', 'Create', 'web', NULL, NULL),
(283, 'room-type-edit', 'Room Type', 'Edit', 'web', NULL, NULL),
(284, 'room-type-delete', 'Room Type', 'Delete', 'web', NULL, NULL),
(285, 'transport-member-view', 'Transport Member', 'View', 'web', NULL, NULL),
(286, 'transport-member-create', 'Transport Member', 'Manage', 'web', NULL, NULL),
(287, 'transport-vehicle-view', 'Transport Vehicle', 'View', 'web', NULL, NULL),
(288, 'transport-vehicle-create', 'Transport Vehicle', 'Create', 'web', NULL, NULL),
(289, 'transport-vehicle-edit', 'Transport Vehicle', 'Edit', 'web', NULL, NULL),
(290, 'transport-vehicle-delete', 'Transport Vehicle', 'Delete', 'web', NULL, NULL),
(291, 'transport-route-view', 'Transport Route', 'View', 'web', NULL, NULL),
(292, 'transport-route-create', 'Transport Route', 'Create', 'web', NULL, NULL),
(293, 'transport-route-edit', 'Transport Route', 'Edit', 'web', NULL, NULL),
(294, 'transport-route-delete', 'Transport Route', 'Delete', 'web', NULL, NULL),
(295, 'visitor-view', 'Visitor', 'View', 'web', NULL, NULL),
(296, 'visitor-create', 'Visitor', 'Create', 'web', NULL, NULL),
(297, 'visitor-edit', 'Visitor', 'Edit', 'web', NULL, NULL),
(298, 'visitor-delete', 'Visitor', 'Delete', 'web', NULL, NULL),
(299, 'visitor-print', 'Visitor', 'Token Print', 'web', NULL, NULL),
(300, 'visit-purpose-view', 'Visit Purpose', 'View', 'web', NULL, NULL),
(301, 'visit-purpose-create', 'Visit Purpose', 'Create', 'web', NULL, NULL),
(302, 'visit-purpose-edit', 'Visit Purpose', 'Edit', 'web', NULL, NULL),
(303, 'visit-purpose-delete', 'Visit Purpose', 'Delete', 'web', NULL, NULL),
(304, 'visitor-token-setting-view', 'Visitor Token', 'Setting', 'web', NULL, NULL),
(305, 'phone-log-view', 'Phone Log', 'View', 'web', NULL, NULL),
(306, 'phone-log-create', 'Phone Log', 'Create', 'web', NULL, NULL),
(307, 'phone-log-edit', 'Phone Log', 'Edit', 'web', NULL, NULL),
(308, 'phone-log-delete', 'Phone Log', 'Delete', 'web', NULL, NULL),
(309, 'enquiry-view', 'Enquiry', 'View', 'web', NULL, NULL),
(310, 'enquiry-create', 'Enquiry', 'Create', 'web', NULL, NULL),
(311, 'enquiry-edit', 'Enquiry', 'Edit', 'web', NULL, NULL),
(312, 'enquiry-delete', 'Enquiry', 'Delete', 'web', NULL, NULL),
(313, 'enquiry-reference-view', 'Enquiry Reference', 'View', 'web', NULL, NULL),
(314, 'enquiry-reference-create', 'Enquiry Reference', 'Create', 'web', NULL, NULL),
(315, 'enquiry-reference-edit', 'Enquiry Reference', 'Edit', 'web', NULL, NULL),
(316, 'enquiry-reference-delete', 'Enquiry Reference', 'Delete', 'web', NULL, NULL),
(317, 'enquiry-source-view', 'Enquiry Source', 'View', 'web', NULL, NULL),
(318, 'enquiry-source-create', 'Enquiry Source', 'Create', 'web', NULL, NULL),
(319, 'enquiry-source-edit', 'Enquiry Source', 'Edit', 'web', NULL, NULL),
(320, 'enquiry-source-delete', 'Enquiry Source', 'Delete', 'web', NULL, NULL),
(321, 'complain-view', 'Complain', 'View', 'web', NULL, NULL),
(322, 'complain-create', 'Complain', 'Create', 'web', NULL, NULL),
(323, 'complain-edit', 'Complain', 'Edit', 'web', NULL, NULL),
(324, 'complain-delete', 'Complain', 'Delete', 'web', NULL, NULL),
(325, 'complain-type-view', 'Complain Type', 'View', 'web', NULL, NULL),
(326, 'complain-type-create', 'Complain Type', 'Create', 'web', NULL, NULL),
(327, 'complain-type-edit', 'Complain Type', 'Edit', 'web', NULL, NULL),
(328, 'complain-type-delete', 'Complain Type', 'Delete', 'web', NULL, NULL),
(329, 'complain-source-view', 'Complain Source', 'View', 'web', NULL, NULL),
(330, 'complain-source-create', 'Complain Source', 'Create', 'web', NULL, NULL),
(331, 'complain-source-edit', 'Complain Source', 'Edit', 'web', NULL, NULL),
(332, 'complain-source-delete', 'Complain Source', 'Delete', 'web', NULL, NULL),
(333, 'postal-exchange-view', 'Postal Exchange', 'View', 'web', NULL, NULL),
(334, 'postal-exchange-create', 'Postal Exchange', 'Create', 'web', NULL, NULL),
(335, 'postal-exchange-edit', 'Postal Exchange', 'Edit', 'web', NULL, NULL),
(336, 'postal-exchange-delete', 'Postal Exchange', 'Delete', 'web', NULL, NULL),
(337, 'postal-type-view', 'Postal Type', 'View', 'web', NULL, NULL),
(338, 'postal-type-create', 'Postal Type', 'Create', 'web', NULL, NULL),
(339, 'postal-type-edit', 'Postal Type', 'Edit', 'web', NULL, NULL),
(340, 'postal-type-delete', 'Postal Type', 'Delete', 'web', NULL, NULL),
(341, 'meeting-view', 'Meeting Schedule', 'View', 'web', NULL, NULL),
(342, 'meeting-create', 'Meeting Schedule', 'Create', 'web', NULL, NULL),
(343, 'meeting-edit', 'Meeting Schedule', 'Edit', 'web', NULL, NULL),
(344, 'meeting-delete', 'Meeting Schedule', 'Delete', 'web', NULL, NULL),
(345, 'meeting-type-view', 'Meeting Type', 'View', 'web', NULL, NULL),
(346, 'meeting-type-create', 'Meeting Type', 'Create', 'web', NULL, NULL),
(347, 'meeting-type-edit', 'Meeting Type', 'Edit', 'web', NULL, NULL),
(348, 'meeting-type-delete', 'Meeting Type', 'Delete', 'web', NULL, NULL),
(349, 'marksheet-view', 'Marksheet', 'View', 'web', NULL, NULL),
(350, 'marksheet-print', 'Marksheet', 'Print', 'web', NULL, NULL),
(351, 'marksheet-download', 'Marksheet', 'Download', 'web', NULL, NULL),
(352, 'marksheet-setting-view', 'Marksheet', 'Setting', 'web', NULL, NULL),
(353, 'certificate-view', 'Certificate', 'View', 'web', NULL, NULL),
(354, 'certificate-create', 'Certificate', 'Genarate', 'web', NULL, NULL),
(355, 'certificate-edit', 'Certificate', 'Edit', 'web', NULL, NULL),
(356, 'certificate-print', 'Certificate', 'Print', 'web', NULL, NULL),
(357, 'certificate-download', 'Certificate', 'Download', 'web', NULL, NULL),
(358, 'certificate-template-view', 'Certificate Template', 'View', 'web', NULL, NULL),
(359, 'certificate-template-create', 'Certificate Template', 'Create', 'web', NULL, NULL),
(360, 'certificate-template-edit', 'Certificate Template', 'Edit', 'web', NULL, NULL),
(361, 'certificate-template-delete', 'Certificate Template', 'Delete', 'web', NULL, NULL),
(362, 'report-student-progress', 'Reports', 'Student Progress', 'web', NULL, NULL),
(363, 'report-subject-students', 'Reports', 'Course Students', 'web', NULL, NULL),
(364, 'report-student-attendance', 'Reports', 'Student Attendance', 'web', NULL, NULL),
(365, 'report-subject-attendance', 'Reports', 'Subject Attendance', 'web', NULL, NULL),
(366, 'report-collected-fees', 'Reports', 'Collected Fees', 'web', NULL, NULL),
(367, 'report-student-fees', 'Reports', 'Student Fees', 'web', NULL, NULL),
(368, 'report-salary-paid', 'Reports', 'Salary Paid', 'web', NULL, NULL),
(369, 'report-staff-leaves', 'Reports', 'Staff Leaves', 'web', NULL, NULL),
(370, 'report-income', 'Reports', 'Total Income', 'web', NULL, NULL),
(371, 'report-expense', 'Reports', 'Total Expense', 'web', NULL, NULL),
(372, 'report-library', 'Reports', 'Library History', 'web', NULL, NULL),
(373, 'report-book-return', 'Reports', 'Book Return Due', 'web', NULL, NULL),
(374, 'report-inventory', 'Reports', 'Inventory History', 'web', NULL, NULL),
(375, 'report-hostel', 'Reports', 'Hostel Members', 'web', NULL, NULL),
(376, 'report-transport', 'Reports', 'Transport Members', 'web', NULL, NULL),
(377, 'topbar-setting-view', 'Contact Setting', 'Manage', 'web', NULL, NULL),
(378, 'social-setting-view', 'Social Setting', 'Manage', 'web', NULL, NULL),
(379, 'slider-view', 'Slider', 'View', 'web', NULL, NULL),
(380, 'slider-create', 'Slider', 'Create', 'web', NULL, NULL),
(381, 'slider-edit', 'Slider', 'Edit', 'web', NULL, NULL),
(382, 'slider-delete', 'Slider', 'Delete', 'web', NULL, NULL),
(383, 'about-us-view', 'About Us', 'Manage', 'web', NULL, NULL),
(384, 'feature-view', 'Feature', 'View', 'web', NULL, NULL),
(385, 'feature-create', 'Feature', 'Create', 'web', NULL, NULL),
(386, 'feature-edit', 'Feature', 'Edit', 'web', NULL, NULL),
(387, 'feature-delete', 'Feature', 'Delete', 'web', NULL, NULL),
(388, 'course-view', 'Course', 'View', 'web', NULL, NULL),
(389, 'course-create', 'Course', 'Create', 'web', NULL, NULL),
(390, 'course-edit', 'Course', 'Edit', 'web', NULL, NULL),
(391, 'course-delete', 'Course', 'Delete', 'web', NULL, NULL),
(392, 'web-event-view', 'Web Event', 'View', 'web', NULL, NULL),
(393, 'web-event-create', 'Web Event', 'Create', 'web', NULL, NULL),
(394, 'web-event-edit', 'Web Event', 'Edit', 'web', NULL, NULL),
(395, 'web-event-delete', 'Web Event', 'Delete', 'web', NULL, NULL),
(396, 'news-view', 'News', 'View', 'web', NULL, NULL),
(397, 'news-create', 'News', 'Create', 'web', NULL, NULL),
(398, 'news-edit', 'News', 'Edit', 'web', NULL, NULL),
(399, 'news-delete', 'News', 'Delete', 'web', NULL, NULL),
(400, 'gallery-view', 'Gallery', 'View', 'web', NULL, NULL),
(401, 'gallery-create', 'Gallery', 'Create', 'web', NULL, NULL),
(402, 'gallery-edit', 'Gallery', 'Edit', 'web', NULL, NULL),
(403, 'gallery-delete', 'Gallery', 'Delete', 'web', NULL, NULL),
(404, 'faq-view', 'Faq', 'View', 'web', NULL, NULL),
(405, 'faq-create', 'Faq', 'Create', 'web', NULL, NULL),
(406, 'faq-edit', 'Faq', 'Edit', 'web', NULL, NULL),
(407, 'faq-delete', 'Faq', 'Delete', 'web', NULL, NULL),
(408, 'testimonial-view', 'Testimonial', 'View', 'web', NULL, NULL),
(409, 'testimonial-create', 'Testimonial', 'Create', 'web', NULL, NULL),
(410, 'testimonial-edit', 'Testimonial', 'Edit', 'web', NULL, NULL),
(411, 'testimonial-delete', 'Testimonial', 'Delete', 'web', NULL, NULL),
(412, 'page-view', 'Footer Page', 'View', 'web', NULL, NULL),
(413, 'page-create', 'Footer Page', 'Create', 'web', NULL, NULL),
(414, 'page-edit', 'Footer Page', 'Edit', 'web', NULL, NULL),
(415, 'page-delete', 'Footer Page', 'Delete', 'web', NULL, NULL),
(416, 'call-to-action-view', 'Call To Action', 'Manage', 'web', NULL, NULL),
(417, 'province-view', 'State/Province', 'View', 'web', NULL, NULL),
(418, 'province-create', 'State/Province', 'Create', 'web', NULL, NULL),
(419, 'province-edit', 'State/Province', 'Edit', 'web', NULL, NULL),
(420, 'province-delete', 'State/Province', 'Delete', 'web', NULL, NULL),
(421, 'district-view', 'District/City', 'View', 'web', NULL, NULL),
(422, 'district-create', 'District/City', 'Create', 'web', NULL, NULL),
(423, 'district-edit', 'District/City', 'Edit', 'web', NULL, NULL),
(424, 'district-delete', 'District/City', 'Delete', 'web', NULL, NULL),
(425, 'religion-view', 'Religion', 'View', 'web', NULL, NULL),
(426, 'religion-create', 'Religion', 'Create', 'web', NULL, NULL),
(427, 'religion-edit', 'Religion', 'Edit', 'web', NULL, NULL),
(428, 'religion-delete', 'Religion', 'Delete', 'web', NULL, NULL),
(429, 'caste-view', 'Caste', 'View', 'web', NULL, NULL),
(430, 'caste-create', 'Caste', 'Create', 'web', NULL, NULL),
(431, 'caste-edit', 'Caste', 'Edit', 'web', NULL, NULL),
(432, 'caste-delete', 'Caste', 'Delete', 'web', NULL, NULL),
(433, 'language-view', 'Language', 'View', 'web', NULL, NULL),
(434, 'language-create', 'Language', 'Create', 'web', NULL, NULL),
(435, 'language-edit', 'Language', 'Edit', 'web', NULL, NULL),
(436, 'language-delete', 'Language', 'Delete', 'web', NULL, NULL),
(437, 'translations-view', 'Translation', 'View', 'web', NULL, NULL),
(438, 'translations-create', 'Translation', 'Create', 'web', NULL, NULL),
(439, 'translations-delete', 'Translation', 'Delete', 'web', NULL, NULL),
(440, 'setting-view', 'Setting', 'General', 'web', NULL, NULL),
(441, 'setting-mail', 'Setting', 'Mail Setting', 'web', NULL, NULL),
(442, 'setting-sms', 'Setting', 'SMS Getaways', 'web', NULL, NULL),
(443, 'setting-payment', 'Setting', 'Payment Getaways', 'web', NULL, NULL),
(444, 'application-setting-view', 'Application Setting', 'Manage', 'web', NULL, NULL),
(445, 'role-view', 'Role and Permissions', 'View', 'web', NULL, NULL),
(446, 'role-create', 'Role and Permissions', 'Create', 'web', NULL, NULL),
(447, 'role-edit', 'Role and Permissions', 'Edit', 'web', NULL, NULL),
(448, 'role-delete', 'Role and Permissions', 'Delete', 'web', NULL, NULL),
(449, 'field-staff', 'Field Setting', 'Staff', 'web', NULL, NULL),
(450, 'field-student', 'Field Setting', 'Student', 'web', NULL, NULL),
(451, 'field-application', 'Field Setting', 'Application', 'web', NULL, NULL),
(452, 'student-panel-view', 'Student Panel', 'Manage', 'web', NULL, NULL),
(453, 'profile-view', 'My Profile', 'View', 'web', NULL, NULL),
(454, 'profile-edit', 'My Profile', 'Edit', 'web', NULL, NULL),
(455, 'profile-account', 'My Profile', 'Account', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phone_logs`
--

DROP TABLE IF EXISTS `phone_logs`;
CREATE TABLE IF NOT EXISTS `phone_logs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `follow_up_date` date DEFAULT NULL,
  `call_duration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `purpose` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `call_type` tinyint NOT NULL COMMENT '1 Income & 2 Outgoing',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `postal_exchanges`
--

DROP TABLE IF EXISTS `postal_exchanges`;
CREATE TABLE IF NOT EXISTS `postal_exchanges` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` tinyint NOT NULL COMMENT '1 Import & 2 Export',
  `category_id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `from` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `to` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `date` date DEFAULT NULL,
  `attach` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1 On Hold, 2 Progress, 3 Received, 0 Delivered',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `postal_exchanges_category_id_foreign` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `postal_exchange_types`
--

DROP TABLE IF EXISTS `postal_exchange_types`;
CREATE TABLE IF NOT EXISTS `postal_exchange_types` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `postal_exchange_types_title_unique` (`title`),
  UNIQUE KEY `postal_exchange_types_slug_unique` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `print_settings`
--

DROP TABLE IF EXISTS `print_settings`;
CREATE TABLE IF NOT EXISTS `print_settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `header_left` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `header_center` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `header_right` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `footer_left` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `footer_center` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `footer_right` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `logo_left` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `logo_right` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `background` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `width` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'auto',
  `height` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'auto',
  `prefix` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_photo` tinyint(1) NOT NULL DEFAULT '0',
  `barcode` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `print_settings_slug_unique` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

DROP TABLE IF EXISTS `programs`;
CREATE TABLE IF NOT EXISTS `programs` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `faculty_id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `shortcode` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `programs_title_unique` (`title`),
  UNIQUE KEY `programs_slug_unique` (`slug`),
  KEY `programs_faculty_id_foreign` (`faculty_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `faculty_id`, `title`, `slug`, `shortcode`, `registration`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, 'Bangla', 'bangla', 'Bangla', 0, 1, '2025-08-14 00:29:01', '2025-08-18 05:40:32'),
(2, 1, 'English', 'english', 'English', 0, 1, '2025-08-16 04:50:49', '2025-08-18 05:41:48'),
(3, 1, 'Info and Com Tech', 'info-and-com-tech', 'Ict', 0, 1, '2025-08-16 04:53:14', '2025-08-18 07:20:53'),
(4, 4, 'Biochemistry', 'biochemistry', 'Biochemistry', 0, 1, '2025-08-16 22:41:55', '2025-08-18 05:41:23'),
(5, 4, 'Anatomy', 'anatomy', 'Anatomy', 0, 1, '2025-08-16 22:42:19', '2025-08-18 05:40:22'),
(6, 4, 'Electical -1', 'electical-1', 'Electical', 0, 1, '2025-08-16 22:42:51', '2025-08-18 05:41:40'),
(7, 3, 'Bangladesh History', 'bangladesh-history', 'BH', 0, 1, '2025-08-16 22:51:43', '2025-08-18 05:41:17'),
(8, 5, 'Microbilogy', 'microbilogy', 'Microbilogy', 0, 1, '2025-08-16 23:30:20', '2025-08-18 05:42:12'),
(9, 5, 'Genetics', 'genetics', 'Genetics', 0, 1, '2025-08-16 23:30:42', '2025-08-18 05:41:55'),
(10, 6, 'Organic Chemistry', 'organic-chemistry', 'OC', 0, 1, '2025-08-16 23:31:25', '2025-08-18 05:42:27'),
(11, 6, 'Physical Chemistry', 'physical-chemistry', 'PC', 0, 1, '2025-08-16 23:32:02', '2025-08-18 05:42:36'),
(12, 7, 'Classical Mechanics', 'classical-mechanics', 'CM', 0, 1, '2025-08-16 23:32:38', '2025-08-18 05:41:32'),
(13, 7, 'Relativity', 'relativity', 'Relativity', 0, 1, '2025-08-16 23:33:01', '2025-08-18 05:42:43');

-- --------------------------------------------------------

--
-- Table structure for table `program_class_room`
--

DROP TABLE IF EXISTS `program_class_room`;
CREATE TABLE IF NOT EXISTS `program_class_room` (
  `program_id` int UNSIGNED NOT NULL,
  `class_room_id` int UNSIGNED NOT NULL,
  KEY `program_class_room_program_id_foreign` (`program_id`),
  KEY `program_class_room_class_room_id_foreign` (`class_room_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `program_semester`
--

DROP TABLE IF EXISTS `program_semester`;
CREATE TABLE IF NOT EXISTS `program_semester` (
  `program_id` int UNSIGNED NOT NULL,
  `semester_id` int UNSIGNED NOT NULL,
  KEY `program_semester_program_id_foreign` (`program_id`),
  KEY `program_semester_semester_id_foreign` (`semester_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `program_semester`
--

INSERT INTO `program_semester` (`program_id`, `semester_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(5, 1),
(4, 1),
(6, 1),
(7, 1),
(12, 1),
(9, 1),
(8, 1),
(10, 1),
(11, 1),
(13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `program_semester_sections`
--

DROP TABLE IF EXISTS `program_semester_sections`;
CREATE TABLE IF NOT EXISTS `program_semester_sections` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `program_id` int UNSIGNED NOT NULL,
  `semester_id` int UNSIGNED NOT NULL,
  `section_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `program_semester_sections_program_id_foreign` (`program_id`),
  KEY `program_semester_sections_semester_id_foreign` (`semester_id`),
  KEY `program_semester_sections_section_id_foreign` (`section_id`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `program_semester_sections`
--

INSERT INTO `program_semester_sections` (`id`, `program_id`, `semester_id`, `section_id`, `created_at`, `updated_at`) VALUES
(41, 11, 1, 1, '2025-08-18 07:17:27', '2025-08-18 07:17:27'),
(40, 10, 1, 1, '2025-08-18 07:17:27', '2025-08-18 07:17:27'),
(39, 8, 1, 1, '2025-08-18 07:17:27', '2025-08-18 07:17:27'),
(38, 3, 1, 1, '2025-08-18 07:17:27', '2025-08-18 07:17:27'),
(37, 9, 1, 1, '2025-08-18 07:17:27', '2025-08-18 07:17:27'),
(36, 2, 1, 1, '2025-08-18 07:17:27', '2025-08-18 07:17:27'),
(35, 6, 1, 1, '2025-08-18 07:17:27', '2025-08-18 07:17:27'),
(34, 12, 1, 1, '2025-08-18 07:17:27', '2025-08-18 07:17:27'),
(33, 4, 1, 1, '2025-08-18 07:17:27', '2025-08-18 07:17:27'),
(32, 7, 1, 1, '2025-08-18 07:17:27', '2025-08-18 07:17:27'),
(31, 1, 1, 1, '2025-08-18 07:17:27', '2025-08-18 07:17:27'),
(30, 5, 1, 1, '2025-08-18 07:17:27', '2025-08-18 07:17:27'),
(42, 13, 1, 1, '2025-08-18 07:17:27', '2025-08-18 07:17:27');

-- --------------------------------------------------------

--
-- Table structure for table `program_session`
--

DROP TABLE IF EXISTS `program_session`;
CREATE TABLE IF NOT EXISTS `program_session` (
  `program_id` int UNSIGNED NOT NULL,
  `session_id` int UNSIGNED NOT NULL,
  KEY `program_session_program_id_foreign` (`program_id`),
  KEY `program_session_session_id_foreign` (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `program_session`
--

INSERT INTO `program_session` (`program_id`, `session_id`) VALUES
(1, 2),
(2, 2),
(3, 2),
(1, 1),
(2, 1),
(3, 1),
(5, 2),
(4, 2),
(6, 2),
(5, 1),
(4, 1),
(6, 1),
(7, 2),
(7, 1),
(12, 2),
(9, 2),
(8, 2),
(10, 2),
(11, 2),
(13, 2),
(12, 1),
(9, 1),
(8, 1),
(10, 1),
(11, 1),
(13, 1);

-- --------------------------------------------------------

--
-- Table structure for table `program_subject`
--

DROP TABLE IF EXISTS `program_subject`;
CREATE TABLE IF NOT EXISTS `program_subject` (
  `program_id` int UNSIGNED NOT NULL,
  `subject_id` bigint UNSIGNED NOT NULL,
  KEY `program_subject_program_id_foreign` (`program_id`),
  KEY `program_subject_subject_id_foreign` (`subject_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `program_subject`
--

INSERT INTO `program_subject` (`program_id`, `subject_id`) VALUES
(9, 1),
(8, 1),
(10, 1),
(11, 1),
(2, 1),
(3, 1),
(1, 1),
(7, 1),
(5, 1),
(4, 1),
(6, 1),
(12, 1),
(13, 1),
(9, 2),
(8, 2),
(11, 2),
(3, 2),
(1, 2),
(7, 2),
(5, 2),
(4, 2),
(6, 2),
(12, 2),
(13, 2),
(10, 2),
(2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

DROP TABLE IF EXISTS `provinces`;
CREATE TABLE IF NOT EXISTS `provinces` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `provinces_title_unique` (`title`),
  UNIQUE KEY `provinces_slug_unique` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `religions`
--

DROP TABLE IF EXISTS `religions`;
CREATE TABLE IF NOT EXISTS `religions` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `religions_title_unique` (`title`),
  UNIQUE KEY `religions_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `religions`
--

INSERT INTO `religions` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Islam', 'islam', NULL, 1, '2025-08-14 00:22:38', '2025-08-14 00:22:38'),
(2, 'Christianity', 'christianity', NULL, 1, '2025-08-16 23:54:56', '2025-08-16 23:54:56'),
(3, 'Hinduism', 'hinduism', NULL, 1, '2025-08-16 23:55:14', '2025-08-16 23:55:14'),
(4, 'Buddhism', 'buddhism', NULL, 1, '2025-08-16 23:55:29', '2025-08-16 23:55:29');

-- --------------------------------------------------------

--
-- Table structure for table `result_contributions`
--

DROP TABLE IF EXISTS `result_contributions`;
CREATE TABLE IF NOT EXISTS `result_contributions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `attendances` decimal(5,2) NOT NULL DEFAULT '0.00',
  `assignments` decimal(5,2) NOT NULL DEFAULT '0.00',
  `activities` decimal(5,2) NOT NULL DEFAULT '0.00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `result_contributions`
--

INSERT INTO `result_contributions` (`id`, `attendances`, `assignments`, `activities`, `status`, `created_at`, `updated_at`) VALUES
(1, 10.00, 10.00, 10.00, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'web',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`),
  UNIQUE KEY `roles_name_unique` (`name`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slug`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'super-admin', 'web', '2025-08-14 00:00:47', '2025-08-14 00:00:47'),
(2, 'Admin', 'admin', 'web', NULL, NULL),
(3, 'Accountant', 'accountant', 'web', NULL, NULL),
(4, 'Librarian', 'librarian', 'web', NULL, NULL),
(5, 'Receptionist', 'receptionist', 'web', NULL, NULL),
(6, 'Teacher', 'teacher', 'web', NULL, NULL),
(7, 'Office Assistant', 'office-assistant', 'web', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1),
(161, 1),
(162, 1),
(163, 1),
(164, 1),
(165, 1),
(166, 1),
(167, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(175, 1),
(176, 1),
(177, 1),
(178, 1),
(179, 1),
(180, 1),
(181, 1),
(182, 1),
(183, 1),
(184, 1),
(185, 1),
(186, 1),
(187, 1),
(188, 1),
(189, 1),
(190, 1),
(191, 1),
(192, 1),
(193, 1),
(194, 1),
(195, 1),
(196, 1),
(197, 1),
(198, 1),
(199, 1),
(200, 1),
(201, 1),
(202, 1),
(203, 1),
(204, 1),
(205, 1),
(206, 1),
(207, 1),
(208, 1),
(209, 1),
(210, 1),
(211, 1),
(212, 1),
(213, 1),
(214, 1),
(215, 1),
(216, 1),
(217, 1),
(218, 1),
(219, 1),
(220, 1),
(221, 1),
(222, 1),
(223, 1),
(224, 1),
(225, 1),
(226, 1),
(227, 1),
(228, 1),
(229, 1),
(230, 1),
(231, 1),
(232, 1),
(233, 1),
(234, 1),
(235, 1),
(236, 1),
(237, 1),
(238, 1),
(239, 1),
(240, 1),
(241, 1),
(242, 1),
(243, 1),
(244, 1),
(245, 1),
(246, 1),
(247, 1),
(248, 1),
(249, 1),
(250, 1),
(251, 1),
(252, 1),
(253, 1),
(254, 1),
(255, 1),
(256, 1),
(257, 1),
(258, 1),
(259, 1),
(260, 1),
(261, 1),
(262, 1),
(263, 1),
(264, 1),
(265, 1),
(266, 1),
(267, 1),
(268, 1),
(269, 1),
(270, 1),
(271, 1),
(272, 1),
(273, 1),
(274, 1),
(275, 1),
(276, 1),
(277, 1),
(278, 1),
(279, 1),
(280, 1),
(281, 1),
(282, 1),
(283, 1),
(284, 1),
(285, 1),
(286, 1),
(287, 1),
(288, 1),
(289, 1),
(290, 1),
(291, 1),
(292, 1),
(293, 1),
(294, 1),
(295, 1),
(296, 1),
(297, 1),
(298, 1),
(299, 1),
(300, 1),
(301, 1),
(302, 1),
(303, 1),
(304, 1),
(305, 1),
(306, 1),
(307, 1),
(308, 1),
(309, 1),
(310, 1),
(311, 1),
(312, 1),
(313, 1),
(314, 1),
(315, 1),
(316, 1),
(317, 1),
(318, 1),
(319, 1),
(320, 1),
(321, 1),
(322, 1),
(323, 1),
(324, 1),
(325, 1),
(326, 1),
(327, 1),
(328, 1),
(329, 1),
(330, 1),
(331, 1),
(332, 1),
(333, 1),
(334, 1),
(335, 1),
(336, 1),
(337, 1),
(338, 1),
(339, 1),
(340, 1),
(341, 1),
(342, 1),
(343, 1),
(344, 1),
(345, 1),
(346, 1),
(347, 1),
(348, 1),
(349, 1),
(350, 1),
(351, 1),
(352, 1),
(353, 1),
(354, 1),
(355, 1),
(356, 1),
(357, 1),
(358, 1),
(359, 1),
(360, 1),
(361, 1),
(362, 1),
(363, 1),
(364, 1),
(365, 1),
(366, 1),
(367, 1),
(368, 1),
(369, 1),
(370, 1),
(371, 1),
(372, 1),
(373, 1),
(374, 1),
(375, 1),
(376, 1),
(377, 1),
(378, 1),
(379, 1),
(380, 1),
(381, 1),
(382, 1),
(383, 1),
(384, 1),
(385, 1),
(386, 1),
(387, 1),
(388, 1),
(389, 1),
(390, 1),
(391, 1),
(392, 1),
(393, 1),
(394, 1),
(395, 1),
(396, 1),
(397, 1),
(398, 1),
(399, 1),
(400, 1),
(401, 1),
(402, 1),
(403, 1),
(404, 1),
(405, 1),
(406, 1),
(407, 1),
(408, 1),
(409, 1),
(410, 1),
(411, 1),
(412, 1),
(413, 1),
(414, 1),
(415, 1),
(416, 1),
(417, 1),
(418, 1),
(419, 1),
(420, 1),
(421, 1),
(422, 1),
(423, 1),
(424, 1),
(425, 1),
(426, 1),
(427, 1),
(428, 1),
(429, 1),
(430, 1),
(431, 1),
(432, 1),
(433, 1),
(434, 1),
(435, 1),
(436, 1),
(437, 1),
(438, 1),
(439, 1),
(440, 1),
(441, 1),
(442, 1),
(443, 1),
(444, 1),
(445, 1),
(446, 1),
(447, 1),
(448, 1),
(449, 1),
(450, 1),
(451, 1),
(452, 1),
(453, 1),
(454, 1),
(455, 1);

-- --------------------------------------------------------

--
-- Table structure for table `schedule_settings`
--

DROP TABLE IF EXISTS `schedule_settings`;
CREATE TABLE IF NOT EXISTS `schedule_settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `day` int NOT NULL,
  `time` time NOT NULL,
  `email` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 Inactive, 1 Active',
  `sms` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 Inactive, 1 Active',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `schedule_settings_slug_unique` (`slug`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

DROP TABLE IF EXISTS `sections`;
CREATE TABLE IF NOT EXISTS `sections` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seat` int DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sections_title_unique` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `title`, `seat`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Section A', NULL, 1, '2025-08-14 00:29:45', '2025-08-18 07:17:27');

-- --------------------------------------------------------

--
-- Table structure for table `semesters`
--

DROP TABLE IF EXISTS `semesters`;
CREATE TABLE IF NOT EXISTS `semesters` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `semesters_title_unique` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `semesters`
--

INSERT INTO `semesters` (`id`, `title`, `year`, `status`, `created_at`, `updated_at`) VALUES
(1, '1st Semester', '2', 1, '2025-08-14 00:29:37', '2025-08-18 07:17:06');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `current` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sessions_title_unique` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `title`, `start_date`, `end_date`, `current`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Spring-2022', '2022-01-01', '2022-04-30', 0, 1, '2025-08-14 00:00:50', '2025-08-14 00:29:27'),
(2, 'Spring-2025', '2025-08-11', '2025-08-27', 1, 1, '2025-08-14 00:29:27', '2025-08-18 07:16:53');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `academy_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `logo_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `favicon_path` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `language` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_format` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_format` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `week_start` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_zone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_symbol` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decimal_place` int NOT NULL DEFAULT '2',
  `copyright_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `academy_code`, `meta_title`, `meta_description`, `meta_keywords`, `logo_path`, `favicon_path`, `phone`, `email`, `fax`, `address`, `language`, `date_format`, `time_format`, `week_start`, `time_zone`, `currency`, `currency_symbol`, `decimal_place`, `copyright_text`, `status`, `created_at`, `updated_at`) VALUES
(1, 'University System', NULL, 'University System', NULL, NULL, 'logo.png', 'favicon.png', '+880123456789', 'example@mail.com', NULL, 'Mirpur, Dhaka', NULL, 'd-m-Y', 'h:i A', '1', 'Asia/Dhaka', 'USD', '$', 2, '2022 - University System | Created By_ <a href=\"https://hitechparks.com/\" target=\"_blank\">Hi-Tech Parks</a>', 1, '2025-08-14 00:00:50', '2025-08-14 00:00:50');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

DROP TABLE IF EXISTS `sliders`;
CREATE TABLE IF NOT EXISTS `sliders` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `language_id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `button_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attach` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sliders_title_unique` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_settings`
--

DROP TABLE IF EXISTS `social_settings`;
CREATE TABLE IF NOT EXISTS `social_settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `facebook` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pinterest` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tiktok` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `skype` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telegram` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_settings`
--

INSERT INTO `social_settings` (`id`, `facebook`, `twitter`, `linkedin`, `instagram`, `pinterest`, `youtube`, `tiktok`, `skype`, `telegram`, `whatsapp`, `status`, `created_at`, `updated_at`) VALUES
(1, 'https://www.facebook.com/HiTechParks/', 'https://twitter.com/hitechparks', 'https://www.linkedin.com/company/hi-techparks/', NULL, 'https://www.pinterest.com/hitechparks/', 'https://www.youtube.com/@hitechparks', NULL, 'hitechparks', NULL, '+8801740473189', 1, '2025-08-14 00:00:50', '2025-08-14 00:00:50');

-- --------------------------------------------------------

--
-- Table structure for table `staff_attendances`
--

DROP TABLE IF EXISTS `staff_attendances`;
CREATE TABLE IF NOT EXISTS `staff_attendances` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `date` date NOT NULL,
  `attendance` tinyint NOT NULL DEFAULT '0' COMMENT '1 Present, 2 Absent, 3 Leave, 4 Holiday',
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `staff_attendances_user_id_foreign` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_hourly_attendances`
--

DROP TABLE IF EXISTS `staff_hourly_attendances`;
CREATE TABLE IF NOT EXISTS `staff_hourly_attendances` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL,
  `subject_id` bigint UNSIGNED NOT NULL,
  `session_id` int UNSIGNED NOT NULL,
  `program_id` int UNSIGNED NOT NULL,
  `semester_id` int UNSIGNED NOT NULL,
  `section_id` int UNSIGNED NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `date` date NOT NULL,
  `attendance` tinyint NOT NULL DEFAULT '0' COMMENT '1 Present, 2 Absent, 3 Leave, 4 Holiday',
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `staff_hourly_attendances_user_id_foreign` (`user_id`),
  KEY `staff_hourly_attendances_subject_id_foreign` (`subject_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `status_types`
--

DROP TABLE IF EXISTS `status_types`;
CREATE TABLE IF NOT EXISTS `status_types` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `status_types_title_unique` (`title`),
  UNIQUE KEY `status_types_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status_types`
--

INSERT INTO `status_types` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'New Admission', 'new-admission', NULL, 1, NULL, NULL),
(2, 'Continue', 'continue', NULL, 1, NULL, NULL),
(3, 'Pass Out', 'pass-out', NULL, 1, NULL, NULL),
(4, 'Drop Out', 'drop-out', NULL, 1, NULL, NULL),
(5, 'Transfer In', 'transfer-in', NULL, 1, NULL, NULL),
(6, 'Transfer Out', 'transfer-out', NULL, 1, NULL, NULL),
(7, 'Disabled', 'disabled', NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `status_type_student`
--

DROP TABLE IF EXISTS `status_type_student`;
CREATE TABLE IF NOT EXISTS `status_type_student` (
  `status_type_id` int UNSIGNED NOT NULL,
  `student_id` bigint UNSIGNED NOT NULL,
  KEY `status_type_student_status_type_id_foreign` (`status_type_id`),
  KEY `status_type_student_student_id_foreign` (`student_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status_type_student`
--

INSERT INTO `status_type_student` (`status_type_id`, `student_id`) VALUES
(4, 4),
(1, 7),
(1, 14),
(2, 14);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `registration_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `batch_id` int UNSIGNED DEFAULT NULL,
  `program_id` int UNSIGNED DEFAULT NULL,
  `admission_date` date DEFAULT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_occupation` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_occupation` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `father_photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `mother_photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_province` int UNSIGNED DEFAULT NULL,
  `present_district` int UNSIGNED DEFAULT NULL,
  `present_village` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `present_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `permanent_province` int UNSIGNED DEFAULT NULL,
  `permanent_district` int UNSIGNED DEFAULT NULL,
  `permanent_village` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `permanent_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `gender` tinyint NOT NULL COMMENT '1 Male, 2 Female & 3 Other',
  `dob` date NOT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion_id` int UNSIGNED DEFAULT NULL,
  `category_id` int UNSIGNED DEFAULT NULL,
  `caste_id` int UNSIGNED DEFAULT NULL,
  `mother_tongue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` tinyint DEFAULT NULL,
  `blood_group` tinyint DEFAULT NULL,
  `nationality` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `school_exam_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_graduation_field` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_graduation_year` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_graduation_point` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_transcript` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `school_certificate` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collage_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `collage_exam_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collage_graduation_field` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collage_graduation_year` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collage_graduation_point` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collage_transcript` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collage_certificate` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `signature` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `login` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0 Inactive, 1 Active, 2 Passed Out, 3 Transfer Out',
  `is_transfer` tinyint DEFAULT '0' COMMENT '0 Not Transfer, 1 Transfer In & 2 Transfer Out',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `students_student_id_unique` (`student_id`),
  UNIQUE KEY `students_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `student_id`, `registration_no`, `batch_id`, `program_id`, `admission_date`, `first_name`, `last_name`, `father_name`, `mother_name`, `father_occupation`, `mother_occupation`, `father_photo`, `mother_photo`, `email`, `email_verified_at`, `password`, `password_text`, `country`, `present_province`, `present_district`, `present_village`, `present_address`, `permanent_province`, `permanent_district`, `permanent_village`, `permanent_address`, `gender`, `dob`, `phone`, `emergency_phone`, `religion_id`, `category_id`, `caste_id`, `mother_tongue`, `marital_status`, `blood_group`, `nationality`, `national_id`, `passport_no`, `school_name`, `school_exam_id`, `school_graduation_field`, `school_graduation_year`, `school_graduation_point`, `school_transcript`, `school_certificate`, `collage_name`, `collage_exam_id`, `collage_graduation_field`, `collage_graduation_year`, `collage_graduation_point`, `collage_transcript`, `collage_certificate`, `photo`, `signature`, `login`, `status`, `is_transfer`, `remember_token`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'rrr', '10000001', 1, 1, '2025-08-14', 'Fahim Mahtab', 'Hasan', 'ddd', 'Mst Renuka Begum', NULL, NULL, NULL, NULL, 'ahmedripu1314@gmail.com', NULL, '$2y$10$HN2unN2LS3DInyvF6Otl4O8QZGC/f4dbxwnfXAxgvAUnao.0qEPb6', 'eyJpdiI6Ik9CMHVTYW5jZXo2cUQxSHdHZVFIQVE9PSIsInZhbHVlIjoiaUFMUVZnS3Ara0QyLzVNaXl5TldtQT09IiwibWFjIjoiN2ZiMGNiMjdkYmIxODdkNjIxNGE5Y2YyNmZmYTU5ODAwYTI2MTlhZDk1OGQxZjUyM2U1MDJhZmMyMmM5YzExMiIsInRhZyI6IiJ9', NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 2, '2025-08-14', '0165489547', NULL, 1, 1, 1, NULL, 2, 3, NULL, NULL, NULL, 'eww3r', 'eee', NULL, 'eree', 'dfee', 'IMG_20250614_WA0015_1753595595(2)_1755151263.jpg', 'IMG_20250501_114228_1753611807_1755151263.jpg', 'wee', 'eeee', NULL, 'eee', 'edee', 'IMG_20250501_114228_1755151263.jpg', 'IMG_20250614_WA0015_1753595595(2)_1755151263.jpg', 'IMG_20250614_WA0015_1753595595(2)_1755151263.jpg', 'IMG_20250501_114228_1753611807_1755151263.jpg', 1, 1, 0, NULL, 1, NULL, '2025-08-14 00:30:42', '2025-08-14 00:30:42'),
(2, '3433233434', NULL, 1, 1, '2025-08-15', 'Fahim Mahtab', 'Ripu', NULL, NULL, NULL, NULL, NULL, NULL, 'jahangir3423@gmail.com', NULL, '$2y$10$R46vA7zZPAe5lX3949M8X.tE4GX5rOqKdo23FkSikcomRW1NM.8B2', 'eyJpdiI6IkRVWDBBQUNCVlhJdnIzVzJrdEdoSHc9PSIsInZhbHVlIjoic2ZHS2xGZ3k0OGVWcElyZlp2dGhrdz09IiwibWFjIjoiMDEzYjAwODE0NWNiYjcyZmRiN2JhZGUyYTBhMmViYzhiMjhiOTk1MDA0NWQ1MDBmZWVhMzEzOWFmYjhiODc1NiIsInRhZyI6IiJ9', NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 2, '2025-08-15', '0165489547', NULL, NULL, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, NULL, 1, NULL, '2025-08-14 22:55:38', '2025-08-14 22:55:38'),
(3, '4333454', NULL, 1, 1, '2025-08-15', 'Fahim Mahtab', 'Hasan Khan', NULL, NULL, NULL, NULL, NULL, NULL, 'ahmedripu131@gmail.com', NULL, '$2y$10$MdGIeS32FZMIfS4UtlRR.u3Wlgi5WVUuLwRvyE9zcBrxzo13cJ.CC', 'eyJpdiI6IkpMRWhBQXhmME8xTzhFREZTaUdnTWc9PSIsInZhbHVlIjoiV01Pd2NucTU4US9CbUNFV3ZTQkRvUT09IiwibWFjIjoiY2FkYTIzMTQ0NjgwMTE1ZmZlMmIwZTY5NzNmYzA2OTkwZDAyMTJiMjk0ODU2OWUxMTJhOGMxZjE1ZWViNjdmMCIsInRhZyI6IiJ9', NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 1, '2025-08-15', '01581094334', NULL, NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, NULL, 1, NULL, '2025-08-14 22:59:48', '2025-08-14 22:59:48'),
(4, '333', NULL, 1, 1, '2025-08-16', 'MD : JAHANGIR Alam Khan', 'Hasan Khan', NULL, NULL, NULL, NULL, NULL, NULL, 'ahmedripu13231@gmail.com', NULL, '$2y$10$ebXYsOhmYnuETAN2t5wzee7TCyDtj1QHI4DWNoMWG96pyijjVV7Cu', 'eyJpdiI6Im1BNFhYL3FKVkppMnFCMzhlazJZaVE9PSIsInZhbHVlIjoiSDlTeUVjMGZ0SkYyNnVQV1hVTER3QT09IiwibWFjIjoiNTQ1ODYwOGQ5NjViMGYwY2I5NDBmMzQwZDgxYTZkMDZhZThkOWEwOWZmNmNhYzMzODcyYzUyYWJhYjdjOWFlMyIsInRhZyI6IiJ9', NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 2, '2025-08-16', '0165489547', NULL, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, NULL, 1, NULL, '2025-08-16 04:54:18', '2025-08-16 04:54:18'),
(5, '43443', NULL, 1, 1, '2025-08-16', 'Harun', 'Hasan', NULL, NULL, NULL, NULL, NULL, NULL, 'ahmedripu1433231@gmail.com', NULL, '$2y$10$24kRYA92E6Ws3hqSwictoe3lk/6qypi6yObvlxzF0F6fXhwAyULOG', 'eyJpdiI6IklvSDk0eXpzeUNYenl1eTk5U2laSEE9PSIsInZhbHVlIjoiUXlzQ3V1R1hPQUNzZXA3aDNQMWhBdz09IiwibWFjIjoiMmZmOTI2YjAyYjQzYjgwZDdlYjRlZjRlNmFhY2YzNThiOWM4ZWRkZmNhMjQ0NGRlMmJmYjZmYjYwM2IwYjhiOSIsInRhZyI6IiJ9', NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 2, '2025-08-16', '0165489547', NULL, NULL, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, NULL, 1, NULL, '2025-08-16 04:57:12', '2025-08-16 04:57:12'),
(6, '33221', NULL, 1, 3, '2025-08-16', 'Ripu', 'Hasan', NULL, NULL, NULL, NULL, NULL, NULL, 'ahmedripu143332231@gmail.com', NULL, '$2y$10$h1HV17Wf/MS/Cl52PbnXg.kfrngmeeeD/ydC6AhD7llBs58yGIvka', 'eyJpdiI6IkJtL3lPcnBWMGdORkRwOXRGTEtMemc9PSIsInZhbHVlIjoiSW1MMmdmZlNHWXV4dTEwM0dFSkNFZz09IiwibWFjIjoiOGI3NDQ0NWE1OTc3OGQwNjk4ZTlhMWRmNTc2OGUyOGJjYTVlZDA2Zjk2Y2IzZTc2Y2I4ZDUyOTNiYzVmMzQ5ZSIsInRhZyI6IiJ9', NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 1, '2025-08-16', '01581205670', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, NULL, 1, NULL, '2025-08-16 05:42:18', '2025-08-16 05:42:18'),
(7, '5344345', NULL, 1, 5, '2025-08-17', 'Mst Rukaiya', 'Akter', NULL, NULL, NULL, NULL, NULL, NULL, 'rukaiya123321@gmail.com', NULL, '$2y$10$B7z8ahIsXpeXuAOCV2sTF.O2IWgbVkLxBrJFOuURQWR5zSjY/TBcu', 'eyJpdiI6InFjckxtUGtmK0pScTcxOVpsUFEwYVE9PSIsInZhbHVlIjoiS1ovdUZBQ0lEanhDSXdDMXFKdjd3Zz09IiwibWFjIjoiNTA5ZmY5ZWViNWY1M2YzMDgyZDUzYjE0ZTJjMjYyNGM5ZjllNDQ4YTRjYmZhYjU0ZjdmYjA4ZDYzZmZkNGMyNSIsInRhZyI6IiJ9', NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 2, '2025-08-12', '01581092514', NULL, 1, 1, 1, NULL, 3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, NULL, 1, NULL, '2025-08-16 22:46:06', '2025-08-16 22:46:06'),
(8, '5445563', NULL, 1, 4, '2025-08-17', 'Mst Sumi', 'Mahmud', NULL, NULL, NULL, NULL, NULL, NULL, 'sumi@gmail.com', NULL, '$2y$10$BRdFDRcLMuafjdjG3RPNl.fys3s54N9FrPBO1tXH2o3hxeNDPod4m', 'eyJpdiI6IkFYeUdDcmRZSk9YaExPbnRybXdCaHc9PSIsInZhbHVlIjoiMy9wbE8wcmFyVUUzRVhUTDRuTHZwZz09IiwibWFjIjoiZDRlYWY1ZjRiZjQ3NmVjYjY5N2VkZjcwOTRjOTRhNDIxNGU3ZGEwYzg2YTM5ZTIxZmVkZGM3Y2VmMDkwYTIyOCIsInRhZyI6IiJ9', NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 2, '2025-08-11', '01581094334', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, NULL, 1, NULL, '2025-08-16 22:49:50', '2025-08-16 22:49:50'),
(9, '32224q32', NULL, 1, 7, '2025-08-17', 'Mariya', 'Jaman', NULL, NULL, NULL, NULL, NULL, NULL, 'mariya1334@gmail.com', NULL, '$2y$10$PJGQUDSe7ccgAJeAkEQZSem.V5OZ.BsFggydTq4rCO7MgL6gRAQoS', 'eyJpdiI6IkpFY3FXaW1XNWRNVmZvK1AvL1Jsa3c9PSIsInZhbHVlIjoiRExJM2VMWmFVaGNld2pRWUxVdERHdz09IiwibWFjIjoiOTk0M2U3ZTJkZGJmMjZjODM0ZmViMDI1ZWYxZTBlNGRlMTVjZDJiYjhlODBhNjg3ZDNjMjk5MTYyMjUxZDE5NCIsInRhZyI6IiJ9', NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 2, '2025-08-17', '01581205670', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, NULL, 1, 1, '2025-08-16 22:54:33', '2025-08-18 07:15:52'),
(10, '54343423', NULL, 1, 8, '2025-08-17', 'Polash', 'Kumar', NULL, NULL, NULL, NULL, NULL, NULL, 'polsh@gmail.com', NULL, '$2y$10$S89MEEe1w2xoj06heXqO/eRZo7huP2XFzh4I/lvDPqVfEKJK2MBtW', 'eyJpdiI6InU2VGR4MkIwb3FremdaSE0vWHYzelE9PSIsInZhbHVlIjoiVktYbVRpYTVXNVk5a2RZYXBpVDN6UT09IiwibWFjIjoiNjVhNzkzNzg2MTg2NTRkM2E3NjY0Njk2NTY3MGFjZWE3NDZkN2UwZGU4YTFiNTRmMzEzOTM4MGFhMjRkNzhmNCIsInRhZyI6IiJ9', NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 1, '2025-08-11', '0165489547', NULL, 3, 2, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, NULL, 1, 1, '2025-08-16 23:36:11', '2025-08-16 23:57:56'),
(11, '7878656', NULL, 1, 9, '2025-08-17', 'Ripon Hasan', 'Khan', NULL, NULL, NULL, NULL, NULL, NULL, 'Ripon@gmail.com', NULL, '$2y$10$Rotp.NxBnf.omfXEdRflXePBSNTNRz5g.pvcZtAcbgamuDgfJvD5W', 'eyJpdiI6IjRlZGZka3lJTndreDhKTWNWampmblE9PSIsInZhbHVlIjoiaW5TYUEzRGRkNnArOU1LVW9ZRDY5UT09IiwibWFjIjoiNjc3NTAxYWRmZmUyMTg2MmEwMjY4MGZlOGY4NzM2MGQ3ZTMwNGFhMTk4YzJhZTNmZWIzN2ZjZjIwNTA2NzNiNyIsInRhZyI6IiJ9', NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 1, '2025-08-11', '01581205670', NULL, 4, 2, 4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, NULL, 1, 1, '2025-08-16 23:37:31', '2025-08-16 23:58:29'),
(12, '6534364', NULL, 1, 10, '2025-08-17', 'Assaduzzam', 'Khan', NULL, NULL, NULL, NULL, NULL, NULL, 'asa@gmail.com', NULL, '$2y$10$tcq8cw2Km2jHmSciwuSzAumwPcEQDDgt57Rx3nlDkpzdluTO3D.06', 'eyJpdiI6IjBwNURZdlZMRW0xcGFDN1IrajhXNWc9PSIsInZhbHVlIjoiTnpCM1pPMndYZkN0UmtyYmdxY2d1dz09IiwibWFjIjoiOWU0YTFiZWVjNjFlMWMzNTRmZWIwZTAwNjNhYzYyY2M2NDQ4ODliZDVjZTQyMWVlZjViMTA4OWM3Y2NlYzZkNSIsInRhZyI6IiJ9', NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 2, '2025-08-17', '01581205670', NULL, 4, 1, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, NULL, 1, 1, '2025-08-16 23:38:46', '2025-08-16 23:59:06'),
(13, '56565656', NULL, 1, 11, '2025-08-17', 'Yeasin', 'Ali', NULL, NULL, NULL, NULL, NULL, NULL, 'yeasin@gmail.com', NULL, '$2y$10$iFjNNLE6FpdOXRWtPZm9IOYG95GRRr9U8OIR6om1o0xpolMEw4mje', 'eyJpdiI6IkdoR3E4MENkRi9QcHB5VmwxcGdyMXc9PSIsInZhbHVlIjoib3dvdFNWa1Vvd0c5NGZKOXJaTnF4Zz09IiwibWFjIjoiNDIzNjA1ZTczYzk1OTI2MjhiMjIwZTY1NjQ4MDE4NzBkZmM2OTE4YjgxMmU1ODI5YWNlODQ5OTU3MDlhY2NjNSIsInRhZyI6IiJ9', NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 1, '2025-08-17', '01581092514', NULL, 2, 2, 5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, NULL, 1, 1, '2025-08-16 23:39:52', '2025-08-16 23:59:43'),
(14, '4445', NULL, 1, 13, '2025-08-17', 'Mijan Ali Khan', 'Neta', NULL, NULL, NULL, NULL, NULL, NULL, 'mijan@gmail.com', NULL, '$2y$10$yjADY9e9NHGSNw3ML5Hnye9S9ax8E.vjyMkSbkvNAkbgxuGePEuE2', 'eyJpdiI6ImtTRmZDalpjMlFEVTMvbGUxVkp0eFE9PSIsInZhbHVlIjoiRFNtVm1Ta0U3VHl4VWMvKzVZZy9aZz09IiwibWFjIjoiYmMxZmMyOTg0NjUwMGY3ZDIwYTBmYmQ4NzQ5YWVlMjRiMDlkMzE2NTNkN2RmNDhiZTdhNzUyODIxNTY5YjI2MiIsInRhZyI6IiJ9', NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, 1, '2025-08-11', '01581205670', NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 0, NULL, 1, 1, '2025-08-16 23:41:30', '2025-08-17 11:48:32');

-- --------------------------------------------------------

--
-- Table structure for table `student_assignments`
--

DROP TABLE IF EXISTS `student_assignments`;
CREATE TABLE IF NOT EXISTS `student_assignments` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_enroll_id` bigint UNSIGNED NOT NULL,
  `assignment_id` bigint UNSIGNED NOT NULL,
  `marks` decimal(5,2) DEFAULT NULL,
  `attendance` tinyint DEFAULT NULL,
  `date` date DEFAULT NULL,
  `attach` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_assignments_student_enroll_id_foreign` (`student_enroll_id`),
  KEY `student_assignments_assignment_id_foreign` (`assignment_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_attendances`
--

DROP TABLE IF EXISTS `student_attendances`;
CREATE TABLE IF NOT EXISTS `student_attendances` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_enroll_id` bigint UNSIGNED NOT NULL,
  `subject_id` bigint UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `time` time DEFAULT NULL,
  `attendance` tinyint NOT NULL DEFAULT '0' COMMENT '1 Present, 2 Absent, 3 Leave, 4 Holiday',
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_attendances_student_enroll_id_foreign` (`student_enroll_id`),
  KEY `student_attendances_subject_id_foreign` (`subject_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_attendances`
--

INSERT INTO `student_attendances` (`id`, `student_enroll_id`, `subject_id`, `date`, `time`, `attendance`, `note`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 13, 2, '2025-08-17', NULL, 1, '', 1, NULL, '2025-08-17 00:38:02', '2025-08-17 00:38:02'),
(2, 4, 2, '2025-08-17', NULL, 1, '', 1, NULL, '2025-08-17 00:40:01', '2025-08-17 00:40:01'),
(3, 2, 2, '2025-08-17', NULL, 1, '', 1, NULL, '2025-08-17 00:40:01', '2025-08-17 00:40:01'),
(4, 4, 2, '2025-08-16', NULL, 1, '', 1, NULL, '2025-08-17 00:40:55', '2025-08-17 00:40:55'),
(5, 2, 2, '2025-08-16', NULL, 2, '', 1, NULL, '2025-08-17 00:40:55', '2025-08-18 05:37:10'),
(6, 4, 2, '2025-08-18', NULL, 1, '', 1, NULL, '2025-08-18 05:44:02', '2025-08-18 05:47:56'),
(7, 2, 2, '2025-08-18', NULL, 3, '', 1, NULL, '2025-08-18 05:44:02', '2025-08-18 05:47:56');

-- --------------------------------------------------------

--
-- Table structure for table `student_categories`
--

DROP TABLE IF EXISTS `student_categories`;
CREATE TABLE IF NOT EXISTS `student_categories` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `student_categories_title_unique` (`title`),
  UNIQUE KEY `student_categories_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_categories`
--

INSERT INTO `student_categories` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Science', 'science', NULL, 1, '2025-08-14 00:23:08', '2025-08-18 07:14:51'),
(2, 'General', 'general', NULL, 1, '2025-08-14 22:54:39', '2025-08-18 07:14:36');

-- --------------------------------------------------------

--
-- Table structure for table `student_enrolls`
--

DROP TABLE IF EXISTS `student_enrolls`;
CREATE TABLE IF NOT EXISTS `student_enrolls` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_id` bigint UNSIGNED NOT NULL,
  `program_id` int UNSIGNED NOT NULL,
  `session_id` int UNSIGNED NOT NULL,
  `semester_id` int UNSIGNED NOT NULL,
  `section_id` int UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_enrolls_student_id_foreign` (`student_id`),
  KEY `student_enrolls_program_id_foreign` (`program_id`),
  KEY `student_enrolls_session_id_foreign` (`session_id`),
  KEY `student_enrolls_semester_id_foreign` (`semester_id`),
  KEY `student_enrolls_section_id_foreign` (`section_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_enrolls`
--

INSERT INTO `student_enrolls` (`id`, `student_id`, `program_id`, `session_id`, `semester_id`, `section_id`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 1, 1, 1, 1, NULL, '2025-08-14 00:30:42', '2025-08-14 00:30:42'),
(2, 2, 1, 2, 1, 1, 1, 1, NULL, '2025-08-14 22:55:38', '2025-08-14 22:55:38'),
(3, 3, 1, 2, 1, 1, 1, 1, NULL, '2025-08-14 22:59:48', '2025-08-14 22:59:48'),
(4, 4, 1, 2, 1, 1, 1, 1, NULL, '2025-08-16 04:54:18', '2025-08-16 04:54:18'),
(5, 5, 1, 2, 1, 1, 1, 1, NULL, '2025-08-16 04:57:12', '2025-08-16 04:57:12'),
(6, 6, 3, 1, 1, 1, 1, 1, NULL, '2025-08-16 05:42:18', '2025-08-16 05:42:18'),
(7, 7, 5, 2, 1, 1, 1, 1, NULL, '2025-08-16 22:46:06', '2025-08-16 22:46:06'),
(8, 8, 4, 2, 1, 1, 1, 1, NULL, '2025-08-16 22:49:50', '2025-08-16 22:49:50'),
(9, 9, 7, 2, 1, 1, 1, 1, NULL, '2025-08-16 22:54:33', '2025-08-16 22:54:33'),
(10, 10, 8, 2, 1, 1, 1, 1, NULL, '2025-08-16 23:36:11', '2025-08-16 23:36:11'),
(11, 11, 9, 2, 1, 1, 1, 1, NULL, '2025-08-16 23:37:31', '2025-08-16 23:37:31'),
(12, 12, 10, 1, 1, 1, 1, 1, NULL, '2025-08-16 23:38:46', '2025-08-16 23:38:46'),
(13, 13, 11, 2, 1, 1, 1, 1, NULL, '2025-08-16 23:39:52', '2025-08-16 23:39:52'),
(14, 14, 13, 2, 1, 1, 1, 1, NULL, '2025-08-16 23:41:30', '2025-08-16 23:41:30');

-- --------------------------------------------------------

--
-- Table structure for table `student_enroll_subject`
--

DROP TABLE IF EXISTS `student_enroll_subject`;
CREATE TABLE IF NOT EXISTS `student_enroll_subject` (
  `student_enroll_id` bigint UNSIGNED NOT NULL,
  `subject_id` bigint UNSIGNED NOT NULL,
  KEY `student_enroll_subject_student_enroll_id_foreign` (`student_enroll_id`),
  KEY `student_enroll_subject_subject_id_foreign` (`subject_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_enroll_subject`
--

INSERT INTO `student_enroll_subject` (`student_enroll_id`, `subject_id`) VALUES
(9, 1),
(9, 2),
(6, 1),
(6, 2),
(4, 1),
(4, 2),
(2, 1),
(2, 2),
(5, 1),
(13, 1),
(13, 2),
(12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_leaves`
--

DROP TABLE IF EXISTS `student_leaves`;
CREATE TABLE IF NOT EXISTS `student_leaves` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_id` bigint UNSIGNED NOT NULL,
  `review_by` bigint UNSIGNED DEFAULT NULL,
  `apply_date` date NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attach` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '0' COMMENT '0 Pending, 1 Approved and 2 Rejected',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_leaves_student_id_foreign` (`student_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_relatives`
--

DROP TABLE IF EXISTS `student_relatives`;
CREATE TABLE IF NOT EXISTS `student_relatives` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_id` bigint UNSIGNED NOT NULL,
  `relation` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `occupation` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_relatives_student_id_foreign` (`student_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `student_relatives`
--

INSERT INTO `student_relatives` (`id`, `student_id`, `relation`, `name`, `occupation`, `email`, `phone`, `address`, `photo`, `created_at`, `updated_at`) VALUES
(1, 1, 'fdrdtr', 'frftr', 'fgrttr', NULL, 'frttr', 'ftrtgrtr', NULL, '2025-08-14 00:30:42', '2025-08-14 00:30:42');

-- --------------------------------------------------------

--
-- Table structure for table `student_transfers`
--

DROP TABLE IF EXISTS `student_transfers`;
CREATE TABLE IF NOT EXISTS `student_transfers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_id` bigint UNSIGNED NOT NULL,
  `transfer_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `university_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `note` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 Transfer In, 1 Transfer Out',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `student_transfers_student_id_foreign` (`student_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
CREATE TABLE IF NOT EXISTS `subjects` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit_hour` int NOT NULL,
  `subject_type` tinyint NOT NULL DEFAULT '1' COMMENT '0 Optional & 1 Compulsory',
  `class_type` tinyint NOT NULL DEFAULT '1' COMMENT '1 Theory, 2 Practical & 3 Both',
  `total_marks` decimal(5,2) DEFAULT NULL,
  `passing_marks` decimal(5,2) DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `subjects_title_unique` (`title`),
  UNIQUE KEY `subjects_code_unique` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `title`, `code`, `credit_hour`, `subject_type`, `class_type`, `total_marks`, `passing_marks`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'English', 'ENG01', 254, 1, 1, NULL, NULL, NULL, 1, '2025-08-17 00:15:11', '2025-08-18 07:17:56'),
(2, 'Physics', 'PHY01', 4534, 1, 1, NULL, NULL, NULL, 1, '2025-08-17 00:18:56', '2025-08-18 07:18:13');

-- --------------------------------------------------------

--
-- Table structure for table `subject_markings`
--

DROP TABLE IF EXISTS `subject_markings`;
CREATE TABLE IF NOT EXISTS `subject_markings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_enroll_id` bigint UNSIGNED NOT NULL,
  `subject_id` bigint UNSIGNED NOT NULL,
  `exam_marks` decimal(5,2) DEFAULT NULL,
  `attendances` decimal(5,2) DEFAULT NULL,
  `assignments` decimal(5,2) DEFAULT NULL,
  `activities` decimal(5,2) DEFAULT NULL,
  `total_marks` decimal(5,2) NOT NULL,
  `publish_date` date DEFAULT NULL,
  `publish_time` time DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subject_markings_student_enroll_id_foreign` (`student_enroll_id`),
  KEY `subject_markings_subject_id_foreign` (`subject_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `s_m_s_notifies`
--

DROP TABLE IF EXISTS `s_m_s_notifies`;
CREATE TABLE IF NOT EXISTS `s_m_s_notifies` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `faculty_id` int UNSIGNED DEFAULT NULL,
  `program_id` int UNSIGNED DEFAULT NULL,
  `session_id` int UNSIGNED DEFAULT NULL,
  `semester_id` int UNSIGNED DEFAULT NULL,
  `section_id` int UNSIGNED DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `receive_count` int DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `s_m_s_settings`
--

DROP TABLE IF EXISTS `s_m_s_settings`;
CREATE TABLE IF NOT EXISTS `s_m_s_settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `nexmo_key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nexmo_secret` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nexmo_sender_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_sid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_auth_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twilio_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '1 Twilio, 2 Nexmo',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_settings`
--

DROP TABLE IF EXISTS `tax_settings`;
CREATE TABLE IF NOT EXISTS `tax_settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `min_amount` double(10,2) NOT NULL,
  `max_amount` double(10,2) NOT NULL,
  `percentange` double(4,2) NOT NULL,
  `max_no_taxable_amount` double(10,2) NOT NULL DEFAULT '0.00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tax_settings`
--

INSERT INTO `tax_settings` (`id`, `min_amount`, `max_amount`, `percentange`, `max_no_taxable_amount`, `status`, `created_at`, `updated_at`) VALUES
(1, 0.00, 5000.00, 0.00, 0.00, 1, NULL, NULL),
(2, 5001.00, 10000.00, 5.00, 5000.00, 1, NULL, NULL),
(3, 10001.00, 20000.00, 10.00, 5000.00, 1, NULL, NULL),
(4, 20001.00, 50000.00, 15.00, 5000.00, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE IF NOT EXISTS `testimonials` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `language_id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` double(2,2) NOT NULL DEFAULT '0.99',
  `attach` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `testimonials_name_unique` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `topbar_settings`
--

DROP TABLE IF EXISTS `topbar_settings`;
CREATE TABLE IF NOT EXISTS `topbar_settings` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `address_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `working_hour` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about_summery` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `social_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_status` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `transactionable_id` bigint NOT NULL,
  `transactionable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `type` tinyint NOT NULL COMMENT '1 Creadit & 2 Debit',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `transactions_transaction_id_unique` (`transaction_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `transactionable_id`, `transactionable_type`, `transaction_id`, `amount`, `type`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'App\\Models\\Student', 'Ij8pg3VKWBlYYm2V', 10000.00, 1, 1, NULL, '2025-08-16 04:39:44', '2025-08-16 04:39:44'),
(2, 3, 'App\\Models\\Student', 'AqLO8B899WKtIzgH', 1222.00, 1, 1, NULL, '2025-08-16 04:40:05', '2025-08-16 04:40:05'),
(3, 2, 'App\\Models\\Student', 'oBeiUk7yQ5dAcN1s', 120.00, 1, 1, NULL, '2025-08-16 04:41:57', '2025-08-16 04:41:57'),
(4, 6, 'App\\Models\\Student', 'PQpkOna14UYDC60Q', 45355.00, 1, 1, NULL, '2025-08-16 22:59:42', '2025-08-16 22:59:42'),
(5, 6, 'App\\Models\\Student', 'lNi3ZrgWqOxvwoqM', 12000.00, 1, 1, NULL, '2025-08-16 22:59:52', '2025-08-16 22:59:52'),
(6, 8, 'App\\Models\\Student', 'T6uUuJpq9Cgv3FB6', 25455.00, 1, 1, NULL, '2025-08-16 23:01:02', '2025-08-16 23:01:02'),
(7, 6, 'App\\Models\\Student', 'XGvoxPXCufqlYQ5P', 43346.00, 1, 1, NULL, '2025-08-16 23:03:39', '2025-08-16 23:03:39'),
(8, 1, 'App\\Models\\Student', '5QDIBiiDyaR07bpk', 25588.00, 1, 1, NULL, '2025-08-16 23:04:02', '2025-08-16 23:04:02'),
(9, 2, 'App\\Models\\Student', 'LcQ4ZNSngQWPgQYF', 44333.00, 1, 1, NULL, '2025-08-16 23:04:13', '2025-08-16 23:04:13'),
(10, 5, 'App\\Models\\Student', 't9IjKpeav57e8utO', 25588.00, 1, 1, NULL, '2025-08-16 23:04:23', '2025-08-16 23:04:23'),
(11, 7, 'App\\Models\\Student', 'pSCI3r65PitA2Ywb', 25888.00, 1, 1, NULL, '2025-08-16 23:08:13', '2025-08-16 23:08:13'),
(12, 7, 'App\\Models\\Student', 'hMatiWoNee2Qhxva', 434242.00, 1, 1, NULL, '2025-08-16 23:08:25', '2025-08-16 23:08:25'),
(13, 9, 'App\\Models\\Student', 'mH9yhUXG44ynB0Yc', 21558.00, 1, 1, NULL, '2025-08-16 23:11:03', '2025-08-16 23:11:03'),
(14, 9, 'App\\Models\\Student', 'HT0T2sGQqDphKuLl', 4541212.00, 1, 1, NULL, '2025-08-16 23:12:16', '2025-08-16 23:12:16'),
(15, 4, 'App\\Models\\Student', 'rB71hQB3ATAYwTcY', 3176067.00, 1, 1, NULL, '2025-08-16 23:19:18', '2025-08-16 23:19:18'),
(16, 6, 'App\\Models\\Student', 'E4rdYUTA3WTELZ9r', 5693214.00, 1, 1, NULL, '2025-08-16 23:23:19', '2025-08-16 23:23:19'),
(17, 8, 'App\\Models\\Student', 'Htw6eyN6KXjLrCGC', 1236549.00, 1, 1, NULL, '2025-08-16 23:27:33', '2025-08-16 23:27:33'),
(18, 10, 'App\\Models\\Student', 'lbdoRMqWRIfziVy5', 6523147.00, 1, 1, NULL, '2025-08-16 23:43:02', '2025-08-16 23:43:02'),
(19, 11, 'App\\Models\\Student', 'ZEyVNFEjrJiZL3Gk', 6541239.00, 1, 1, NULL, '2025-08-16 23:45:46', '2025-08-16 23:45:46'),
(20, 13, 'App\\Models\\Student', 'mXkykj9soJ5Y4Sva', 7896321.00, 1, 1, NULL, '2025-08-16 23:48:19', '2025-08-16 23:48:19'),
(21, 12, 'App\\Models\\Student', 'yK0UlrYZPnIPCsu2', 7896321.00, 1, 1, NULL, '2025-08-16 23:48:30', '2025-08-16 23:48:30'),
(22, 14, 'App\\Models\\Student', 'CyfSftQ5C769Ybd7', 1236548.00, 1, 1, NULL, '2025-08-16 23:50:09', '2025-08-16 23:50:09');

-- --------------------------------------------------------

--
-- Table structure for table `transfer_creadits`
--

DROP TABLE IF EXISTS `transfer_creadits`;
CREATE TABLE IF NOT EXISTS `transfer_creadits` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_id` bigint UNSIGNED NOT NULL,
  `program_id` int UNSIGNED NOT NULL,
  `session_id` int UNSIGNED NOT NULL,
  `semester_id` int UNSIGNED NOT NULL,
  `subject_id` bigint UNSIGNED NOT NULL,
  `marks` decimal(10,2) DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transfer_creadits_student_id_foreign` (`student_id`),
  KEY `transfer_creadits_program_id_foreign` (`program_id`),
  KEY `transfer_creadits_session_id_foreign` (`session_id`),
  KEY `transfer_creadits_semester_id_foreign` (`semester_id`),
  KEY `transfer_creadits_subject_id_foreign` (`subject_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transport_members`
--

DROP TABLE IF EXISTS `transport_members`;
CREATE TABLE IF NOT EXISTS `transport_members` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `transportable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `transportable_id` bigint UNSIGNED NOT NULL,
  `transport_route_id` int UNSIGNED NOT NULL,
  `transport_vehicle_id` int UNSIGNED NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0 Inactive, 1 Active',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `transport_members_transportable_type_transportable_id_index` (`transportable_type`,`transportable_id`),
  KEY `transport_members_transport_route_id_foreign` (`transport_route_id`),
  KEY `transport_members_transport_vehicle_id_foreign` (`transport_vehicle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transport_routes`
--

DROP TABLE IF EXISTS `transport_routes`;
CREATE TABLE IF NOT EXISTS `transport_routes` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee` double(10,2) DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `transport_routes_title_unique` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transport_route_transport_vehicle`
--

DROP TABLE IF EXISTS `transport_route_transport_vehicle`;
CREATE TABLE IF NOT EXISTS `transport_route_transport_vehicle` (
  `transport_route_id` int UNSIGNED NOT NULL,
  `transport_vehicle_id` int UNSIGNED NOT NULL,
  KEY `transport_route_transport_vehicle_transport_route_id_foreign` (`transport_route_id`),
  KEY `transport_route_transport_vehicle_transport_vehicle_id_foreign` (`transport_vehicle_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transport_vehicles`
--

DROP TABLE IF EXISTS `transport_vehicles`;
CREATE TABLE IF NOT EXISTS `transport_vehicles` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacity` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_made` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver_license` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `driver_contact` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `staff_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int UNSIGNED DEFAULT NULL,
  `designation_id` int UNSIGNED DEFAULT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password_text` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `gender` tinyint NOT NULL COMMENT '1 Male, 2 Female & 3 Other',
  `dob` date NOT NULL,
  `joining_date` date DEFAULT NULL,
  `ending_date` date DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emergency_phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `religion` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caste` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mother_tongue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` tinyint DEFAULT NULL,
  `blood_group` tinyint DEFAULT NULL,
  `nationality` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `national_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `present_province` int UNSIGNED DEFAULT NULL,
  `present_district` int UNSIGNED DEFAULT NULL,
  `present_village` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `present_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `permanent_province` int UNSIGNED DEFAULT NULL,
  `permanent_district` int UNSIGNED DEFAULT NULL,
  `permanent_village` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `permanent_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `education_level` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `graduation_academy` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year_of_graduation` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `graduation_field` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `experience` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `note` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `basic_salary` double(10,2) NOT NULL DEFAULT '0.00',
  `contract_type` tinyint NOT NULL DEFAULT '1' COMMENT '1 Full Time & 2 Part Time',
  `work_shift` int UNSIGNED DEFAULT NULL,
  `salary_type` tinyint NOT NULL DEFAULT '1' COMMENT '1 Fixed & 2 Hourly',
  `epf_no` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bank_account_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ifsc_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_brach` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tin_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `signature` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `resume` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `joining_letter` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  `login` tinyint(1) NOT NULL DEFAULT '1',
  `status` tinyint NOT NULL DEFAULT '1' COMMENT '0 Inactive, 1 Active',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_staff_id_unique` (`staff_id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `staff_id`, `department_id`, `designation_id`, `first_name`, `last_name`, `father_name`, `mother_name`, `email`, `email_verified_at`, `password`, `password_text`, `gender`, `dob`, `joining_date`, `ending_date`, `phone`, `emergency_phone`, `religion`, `caste`, `mother_tongue`, `marital_status`, `blood_group`, `nationality`, `national_id`, `passport_no`, `country`, `present_province`, `present_district`, `present_village`, `present_address`, `permanent_province`, `permanent_district`, `permanent_village`, `permanent_address`, `education_level`, `graduation_academy`, `year_of_graduation`, `graduation_field`, `experience`, `note`, `basic_salary`, `contract_type`, `work_shift`, `salary_type`, `epf_no`, `bank_account_name`, `bank_account_no`, `bank_name`, `ifsc_code`, `bank_brach`, `tin_no`, `photo`, `signature`, `resume`, `joining_letter`, `is_admin`, `login`, `status`, `remember_token`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '1001', NULL, NULL, 'Super', 'Admin', NULL, NULL, 'admin@mail.com', NULL, '$2y$10$3l128yv.jmBWz4iv1vxsIeW78dm3PpDoHR2QcVwJToETFfRdoilsG', 'eyJpdiI6InQ1UlNKeXRPeC9pN1A5RUExNk11cGc9PSIsInZhbHVlIjoiMUttcGRITDlreUJQY0w0UGtzQmF1dz09IiwibWFjIjoiZjBkYmM2OThiMzRlZjgzNTQ5NzMzNjM0OGI1YmFmOWFkNWY0YTdmODRkMGY3Y2IyYzE3ZTNmNmU2ZDM5YTJkZSIsInRhZyI6IiJ9', 0, '2000-01-01', NULL, NULL, '0123456789', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 1, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 'NlPo4Mr4KXcEw2Ltc2ujMwNh15VO405hLCeplSO1kDh7Gzr8r1J7ZnS3jixL', NULL, NULL, '2025-08-14 00:00:47', '2025-08-14 00:00:47'),
(2, '1002', 3, 2, 'Fahim Mahtab', 'Ripu', NULL, NULL, 'ahmedripu1314@gmail.com', NULL, '$2y$10$uI.wxBLmO2CbI1N09kSrM.Qw4jNms6Ffv07UhK2694.k2f949yvY6', 'eyJpdiI6IkN0eDlSM2RwMG9hOHFKdnV6dWE5Z2c9PSIsInZhbHVlIjoiREN3SUd2TTlPaTlxSGhzU3JzbHQxdz09IiwibWFjIjoiMzJlZWQ4ZDRhMzU3ZDE1NGNkZDBlYmRiMWE0ZTBhMDk5MDA1NjQ5MTU4Mjk4NzFmNGM4OGVkMjMwNGNjMjFhNiIsInRhZyI6IiJ9', 1, '2025-08-04', NULL, NULL, '01581094334', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25635.00, 1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 1, NULL, 1, NULL, '2025-08-17 00:26:49', '2025-08-17 00:26:49');

-- --------------------------------------------------------

--
-- Table structure for table `user_program`
--

DROP TABLE IF EXISTS `user_program`;
CREATE TABLE IF NOT EXISTS `user_program` (
  `user_id` bigint UNSIGNED NOT NULL,
  `program_id` int UNSIGNED NOT NULL,
  KEY `user_program_user_id_foreign` (`user_id`),
  KEY `user_program_program_id_foreign` (`program_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

DROP TABLE IF EXISTS `visitors`;
CREATE TABLE IF NOT EXISTS `visitors` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `purpose_id` int UNSIGNED NOT NULL,
  `department_id` int UNSIGNED DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `visit_from` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `id_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `in_time` time DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `persons` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attach` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `visitors_purpose_id_foreign` (`purpose_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `purpose_id`, `department_id`, `name`, `father_name`, `phone`, `email`, `address`, `visit_from`, `id_no`, `token`, `date`, `in_time`, `out_time`, `persons`, `note`, `attach`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 'Napa Extra', 'ddd', NULL, NULL, NULL, NULL, NULL, '100001', '2025-08-17', '07:01:00', NULL, '1', NULL, NULL, 1, 1, NULL, '2025-08-17 01:02:03', '2025-08-17 01:02:03'),
(2, 1, 2, 'erw[jjefdsfpoj', NULL, NULL, NULL, NULL, NULL, NULL, '100002', '2025-08-17', '01:02:00', NULL, '1', NULL, NULL, 1, 1, NULL, '2025-08-17 01:02:24', '2025-08-17 01:02:24');

-- --------------------------------------------------------

--
-- Table structure for table `visit_purposes`
--

DROP TABLE IF EXISTS `visit_purposes`;
CREATE TABLE IF NOT EXISTS `visit_purposes` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `visit_purposes_title_unique` (`title`),
  UNIQUE KEY `visit_purposes_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visit_purposes`
--

INSERT INTO `visit_purposes` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Visit', 'visit', NULL, 1, '2025-08-17 01:01:33', '2025-08-17 01:01:33');

-- --------------------------------------------------------

--
-- Table structure for table `web_events`
--

DROP TABLE IF EXISTS `web_events`;
CREATE TABLE IF NOT EXISTS `web_events` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `language_id` int UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` time DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attach` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `work_shift_types`
--

DROP TABLE IF EXISTS `work_shift_types`;
CREATE TABLE IF NOT EXISTS `work_shift_types` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `work_shift_types_title_unique` (`title`),
  UNIQUE KEY `work_shift_types_slug_unique` (`slug`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `work_shift_types`
--

INSERT INTO `work_shift_types` (`id`, `title`, `slug`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Morning', 'morning', NULL, 1, NULL, NULL),
(2, 'Evening', 'evening', NULL, 1, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
