-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 23, 2021 at 06:01 PM
-- Server version: 8.0.27-0ubuntu0.20.04.1
-- PHP Version: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cron_jobs`
--

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `task_id` bigint NOT NULL,
  `task_name` varchar(50) DEFAULT NULL,
  `queued_at` datetime DEFAULT NULL,
  `completed_at` datetime DEFAULT NULL,
  `is_processed` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`task_id`, `task_name`, `queued_at`, `completed_at`, `is_processed`) VALUES
(1, 'TASK 1', '2021-11-23 17:25:09', '2021-11-23 17:48:01', 'Y'),
(2, 'TASK 2', '2021-11-23 17:25:09', '2021-11-23 17:48:06', 'Y'),
(3, 'TASK 3', '2021-11-23 17:25:09', '2021-11-23 17:48:11', 'Y'),
(4, 'TASK 1', '2021-11-23 17:38:05', '2021-11-23 17:48:16', 'Y'),
(5, 'TASK 2', '2021-11-23 17:38:05', '2021-11-23 17:48:21', 'Y'),
(6, 'TASK 3', '2021-11-23 17:38:08', '2021-11-23 17:48:26', 'Y');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`task_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `task_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
