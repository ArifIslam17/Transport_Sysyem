-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2026 at 06:24 PM
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
-- Database: `smartbus`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int(11) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `bus_name` varchar(100) NOT NULL,
  `route_name` varchar(255) NOT NULL,
  `seat_number` varchar(20) NOT NULL,
  `travel_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `amount` decimal(10,2) DEFAULT 100.00,
  `payment_status` varchar(50) DEFAULT 'Unpaid',
  `payment_method` varchar(50) DEFAULT '',
  `transaction_id` varchar(100) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `student_name`, `email`, `bus_name`, `route_name`, `seat_number`, `travel_date`, `created_at`, `amount`, `payment_status`, `payment_method`, `transaction_id`) VALUES
(2, 'rahim@gmail.com', 'rahim@gmail.com', 'Bus B', 'City Center -> Main Campus', 'B3', '2026-08-11', '2026-08-10 17:37:59', 100.00, 'Unpaid', '', ''),
(3, 'tanvir@gmail.com', 'tanvir@gmail.com', 'Bus B', 'Dhaka', 'A3', '2026-08-11', '2026-08-10 17:38:50', 100.00, 'Unpaid', '', ''),
(4, 'tanvir@gmail.com', 'tanvir@gmail.com', 'Bus A (Campus Express)', 'Main Gate -> Science Building', 'A1', '2026-08-10', '2026-08-10 18:12:45', 100.00, 'Unpaid', '', ''),
(5, 'tanvir@gmail.com', 'tanvir@gmail.com', 'Bus A (Campus Express)', 'Main Gate -> Science Building', 'A3', '2026-08-10', '2026-08-10 18:13:04', 100.00, 'Unpaid', '', ''),
(6, 'tanvir@gmail.com', 'tanvir@gmail.com', 'Bus A', 'Main Gate -> Science Building', 'A1', '2026-08-11', '2026-08-10 18:20:38', 100.00, 'Unpaid', '', ''),
(7, 'rahim@gmail.com', 'rahim@gmail.com', 'Bus B', 'City Center -> Main Campus', 'B3', '2026-08-11', '2026-08-10 18:20:38', 100.00, 'Unpaid', '', ''),
(8, 'tanvir@gmail.com', 'tanvir@gmail.com', 'Bus A (Campus Express)', 'Academic Building -> Main Gate', 'A4', '2026-08-10', '2026-08-10 18:38:38', 100.00, 'Paid', 'bKash', 'TRX61567029'),
(9, 'tanvir@gmail.com', 'tanvir@gmail.com', 'Bus A (Campus Express)', 'Main Gate -> Science Building', 'C1', '2026-08-11', '2026-08-10 18:39:34', 100.00, 'Unpaid', '', ''),
(10, 'osimakash123@gmail.com', 'osimakash123@gmail.com', 'Bus A (Campus Express)', 'Main Gate -> Science Building', 'A3', '2026-08-20', '2026-08-13 15:47:03', 100.00, 'Paid', 'bKash', 'TRX41077741');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `id` int(11) NOT NULL,
  `bus_name` varchar(100) NOT NULL,
  `route_name` varchar(255) NOT NULL,
  `travel_date` date NOT NULL,
  `departure_time` varchar(50) NOT NULL,
  `arrival_time` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`id`, `bus_name`, `route_name`, `travel_date`, `departure_time`, `arrival_time`, `created_at`) VALUES
(1, 'Bus A (Campus Express)', 'Main Gate -> Science Building', '2026-08-11', '08:00 AM', '08:45 AM', '2026-08-10 17:37:59'),
(2, 'Bus B (Downtown Shuttle)', 'City Center -> Main Campus', '2026-08-11', '09:30 AM', '10:15 AM', '2026-08-10 17:37:59'),
(3, 'Bus C (Hostel Connector)', 'Student Hostel -> Academic Building', '2026-08-11', '11:00 AM', '11:30 AM', '2026-08-10 17:37:59'),
(4, 'Bus A (Campus Express)', 'Academic Building -> Main Gate', '2026-08-12', '02:00 PM', '02:45 PM', '2026-08-10 17:37:59'),
(5, 'Bus B (Evening Return)', 'Main Campus -> City Center', '2026-08-12', '05:00 PM', '05:45 PM', '2026-08-10 17:37:59'),
(6, 'Bus A (Campus Express)', 'Main Gate -> Science Building', '2026-08-11', '08:00 AM', '08:45 AM', '2026-08-10 18:20:38'),
(7, 'Bus B (Downtown Shuttle)', 'City Center -> Main Campus', '2026-08-11', '09:30 AM', '10:15 AM', '2026-08-10 18:20:38'),
(8, 'Bus C (Hostel Connector)', 'Student Hostel -> Academic Building', '2026-08-11', '11:00 AM', '11:30 AM', '2026-08-10 18:20:38'),
(9, 'Bus A (Campus Express)', 'Academic Building -> Main Gate', '2026-08-12', '02:00 PM', '02:45 PM', '2026-08-10 18:20:38'),
(10, 'Bus B (Evening Return)', 'Main Campus -> City Center', '2026-08-12', '05:00 PM', '05:45 PM', '2026-08-10 18:20:38');

-- --------------------------------------------------------

--
-- Table structure for table `smart_pass`
--

CREATE TABLE `smart_pass` (
  `id` int(11) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass_type` varchar(50) NOT NULL,
  `travel_days` varchar(255) DEFAULT '',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(50) DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(50) DEFAULT 'Unpaid',
  `payment_method` varchar(50) DEFAULT '',
  `transaction_id` varchar(100) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `smart_pass`
--

INSERT INTO `smart_pass` (`id`, `student_name`, `student_id`, `email`, `pass_type`, `travel_days`, `start_date`, `end_date`, `price`, `status`, `created_at`, `payment_status`, `payment_method`, `transaction_id`) VALUES
(1, 'Tanvir Ahmed', '2023-1-60-001', 'tanvir@gmail.com', '1 Month', 'Sunday,Monday,Tuesday,Wednesday,Thursday', '2026-08-01', '2026-08-31', 1200.00, 'Approved', '2026-08-10 17:37:59', 'Unpaid', '', ''),
(2, 'Nusrat Jahan', '2023-1-60-003', 'nusrat@gmail.com', '5 Days', 'Sunday,Monday,Tuesday,Wednesday,Thursday', '2026-08-10', '2026-08-16', 800.00, 'Pending', '2026-08-10 17:37:59', 'Unpaid', '', ''),
(3, 'Tanvir Ahmed', '2023-1-60-001', 'tanvir@gmail.com', '1 Day', 'Monday', '2026-08-19', '2026-08-19', 50.00, 'Pending', '2026-08-10 17:39:48', 'Unpaid', '', ''),
(4, 'Tanvir Ahmed', '2023-1-60-001', 'tanvir@gmail.com', '1 Month', 'Sunday,Monday,Tuesday,Wednesday,Thursday', '2026-08-01', '2026-08-31', 1200.00, 'Approved', '2026-08-10 18:20:38', 'Unpaid', '', ''),
(5, 'Nusrat Jahan', '2023-1-60-003', 'nusrat@gmail.com', '5 Days', 'Sunday,Monday,Tuesday,Wednesday,Thursday', '2026-08-10', '2026-08-16', 800.00, 'Approved', '2026-08-10 18:20:38', 'Unpaid', '', ''),
(6, 'Osim kumar Roy', '42240104242', 'osimakash123@gmail.com', '3 Days', 'Thursday', '2026-08-11', '2026-08-17', 500.00, 'Rejected', '2026-08-10 18:30:20', 'Paid', 'bKash', 'TRX31109129');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `department` varchar(50) NOT NULL,
  `semester` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `profile_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `student_id`, `full_name`, `department`, `semester`, `email`, `phone`, `password`, `created_at`, `profile_image`) VALUES
(1, '2023-1-60-001', 'Tanvir Ahmed', 'CSE', '6th Semester', 'tanvir@gmail.com', '01711112233', '123456', '2026-08-10 17:37:59', NULL),
(2, '2023-1-60-002', 'Rahim Uddin', 'EEE', '4th Semester', 'rahim@gmail.com', '01822223344', '123456', '2026-08-10 17:37:59', NULL),
(3, '2023-1-60-003', 'Nusrat Jahan', 'BBA', '8th Semester', 'nusrat@gmail.com', '01933334455', '123456', '2026-08-10 17:37:59', NULL),
(8, '42240104242', 'Osim kumar Roy', 'CSE', '8th Semester', 'osimakash123@gmail.com', '01780515184', 'admin123', '2026-08-10 18:29:23', 'student_1786636602_8411.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) DEFAULT 'admin',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `created_at`) VALUES
(1, 'System Administrator', 'admin@smartbus.com', 'admin123', 'admin', '2026-08-10 18:20:38'),
(2, 'Super Admin', 'admin', 'admin123', 'admin', '2026-08-10 18:20:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `smart_pass`
--
ALTER TABLE `smart_pass`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `smart_pass`
--
ALTER TABLE `smart_pass`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
