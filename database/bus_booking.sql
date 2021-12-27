-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2021 at 07:56 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bus_booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `booked`
--

CREATE TABLE `booked` (
  `id` int(30) NOT NULL,
  `schedule_id` int(30) NOT NULL,
  `ref_no` text NOT NULL,
  `name` varchar(250) NOT NULL,
  `qty` int(11) NOT NULL,
  `status` tinyint(1) DEFAULT 0 COMMENT '1=Paid, 0- Unpaid',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booked`
--

INSERT INTO `booked` (`id`, `schedule_id`, `ref_no`, `name`, `qty`, `status`, `date_updated`) VALUES
(1, 1, '202009091727', 'John Smith', 1, 1, '2020-09-09 10:29:44'),
(2, 1, '202009091626', 'Sample', 2, 0, '2020-09-09 09:34:28'),
(3, 1, '202009099953', 'asdasd asdasd', 27, 1, '2021-09-02 18:03:39'),
(4, 2, '202105037258', 'cmb', 1, 0, '2021-05-03 13:19:44'),
(5, 3, '202105033806', 'Nimal', 1, 1, '2021-05-03 15:54:37'),
(6, 5, '202105032986', 'abc', 5, 0, '2021-05-03 16:25:11'),
(7, 4, '20210902709', 'Amal', 12, 1, '2021-09-02 17:52:15'),
(8, 7, '202109025803', 'Chameera', 1, 1, '2021-09-02 18:03:45'),
(9, 7, '202109026906', 'kamal', 3, 0, '2021-09-02 18:02:08');

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `id` int(30) NOT NULL,
  `name` varchar(250) NOT NULL,
  `bus_number` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 = inactive, 1 = active',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`id`, `name`, `bus_number`, `status`, `date_updated`) VALUES
(3, 'Economy', '5001', 0, '2021-05-03 15:33:14'),
(4, 'SLTB-Nuwara Eliya', 'NA-4525', 1, '2021-05-03 15:36:17'),
(5, 'SLTB-Nuwara Eliya', 'NB-5656', 1, '2021-05-03 15:36:34'),
(6, 'SLTB-Kandy South', 'ND-2545', 1, '2021-05-03 15:37:00'),
(7, 'CMB Express', 'ND-9596', 1, '2021-05-03 15:37:26'),
(8, 'CMB Express(AC)', 'NA-1111', 1, '2021-05-03 15:37:50'),
(9, 'SLTB-Colombo1', 'NE-7892', 1, '2021-05-03 15:38:19'),
(10, 'SLTB-Panadura', 'NB-7657', 0, '2021-09-02 17:53:00'),
(11, 'Nuwan Express(AC)', '62-7852', 1, '2021-05-03 15:39:07'),
(12, 'Iresha Travels', 'ND-9696', 1, '2021-05-03 15:39:28'),
(13, 'South PowerLine(AC)', 'ND-2265', 1, '2021-05-03 15:40:05'),
(14, 'Kandy-Jaffna', 'NC-5555', 0, '2021-09-02 18:04:31'),
(15, 'SLTB Colombo', 'ND-5545', 1, '2021-09-02 18:04:23');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(30) NOT NULL,
  `terminal_name` text NOT NULL,
  `city` varchar(250) NOT NULL,
  `state` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0= inactive , 1= active',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `terminal_name`, `city`, `state`, `status`, `date_updated`) VALUES
(1, 'Sample Terminal Name', 'Sample City', 'Sample', 0, '2021-05-03 15:32:47'),
(2, 'South Sample Terminal', 'South City', 'Sample', 0, '2021-05-03 15:32:50'),
(3, 'Katugasthota', 'Kandy', 'Central', 0, '2021-05-03 15:45:05'),
(4, 'NuwaraEliya-Town', 'NuwaraEliya', 'Central', 0, '2021-05-03 15:45:08'),
(5, 'Kandy Town', 'Kandy', 'Central', 1, '2021-05-03 16:03:14'),
(6, 'Pettah', 'Colombo', 'Western', 1, '2021-05-03 16:04:44'),
(7, 'Walimada', 'Walimada', 'Uva', 1, '2021-05-03 16:04:18'),
(8, 'Hathraliyadda', 'Kandy', 'Central', 1, '2021-05-03 16:04:34'),
(9, 'jaffna', 'Jaffna', 'North', 1, '2021-09-02 17:53:29'),
(10, 'Thangalla', 'Hambanthota', 'South', 1, '2021-05-03 16:05:22'),
(11, 'NuwaraEliya-Town', 'NuwaraEliya', 'Central', 1, '2021-05-03 16:13:37'),
(12, 'Kandapola', 'NuwaraEliya', 'Central', 1, '2021-05-03 16:13:53'),
(13, 'Kurunagala', 'Kurunagala', 'S', 0, '2021-09-02 17:53:54'),
(14, 'Kurunagala-Town', 'Kurunagala', 'S', 0, '2021-09-02 18:05:06');

-- --------------------------------------------------------

--
-- Table structure for table `schedule_list`
--

CREATE TABLE `schedule_list` (
  `id` int(30) NOT NULL,
  `bus_id` int(30) NOT NULL,
  `from_location` int(30) NOT NULL,
  `to_location` int(30) NOT NULL,
  `departure_time` datetime NOT NULL,
  `eta` datetime NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `availability` int(11) NOT NULL,
  `price` text NOT NULL,
  `date_updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule_list`
--

INSERT INTO `schedule_list` (`id`, `bus_id`, `from_location`, `to_location`, `departure_time`, `eta`, `status`, `availability`, `price`, `date_updated`) VALUES
(1, 3, 1, 1, '2020-09-11 16:00:00', '2020-09-12 02:00:00', 0, 30, '250', '2021-05-03 07:51:50'),
(2, 3, 2, 1, '2020-09-12 02:45:00', '2020-09-12 05:00:00', 0, 30, '250', '2021-05-03 07:51:52'),
(3, 4, 4, 3, '2021-05-03 15:43:00', '2021-05-03 19:00:00', 1, 30, '150', '2021-05-03 10:14:19'),
(4, 7, 6, 9, '2021-05-05 17:00:00', '2021-05-06 01:00:00', 1, 43, '660', '2021-05-03 10:41:11'),
(5, 4, 7, 6, '2021-05-03 08:00:00', '2021-05-03 12:00:00', 1, 40, '540', '2021-05-03 10:42:02'),
(6, 12, 11, 5, '2021-05-03 15:00:00', '2021-05-03 15:30:00', 1, 45, '40', '2021-09-02 12:32:42'),
(7, 4, 5, 11, '2021-09-03 19:00:00', '2021-09-02 21:00:00', 1, 54, '200', '2021-09-02 12:21:59'),
(8, 4, 5, 6, '2021-09-03 08:00:00', '2021-09-02 13:00:00', 1, 54, '550', '2021-09-02 12:33:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` varchar(150) NOT NULL,
  `user_type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = admin, 2= faculty , 3 = student',
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT ' 0 = incative , 1 = active',
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `user_type`, `username`, `password`, `status`, `date_updated`) VALUES
(1, 'Administrator', 1, 'admin', '12345', 1, '2021-05-03 13:20:45'),
(3, 'Chameera', 1, 'chameera', '123456', 1, '2021-09-02 18:05:56'),
(4, 'Editor', 1, 'edit123', '123456', 1, '2021-09-02 18:05:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booked`
--
ALTER TABLE `booked`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `schedule_list`
--
ALTER TABLE `schedule_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `booked`
--
ALTER TABLE `booked`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `schedule_list`
--
ALTER TABLE `schedule_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
