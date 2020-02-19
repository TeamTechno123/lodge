-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2020 at 10:41 AM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lodge`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(250) NOT NULL,
  `admin_email` varchar(150) NOT NULL,
  `admin_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'Techno', 'info@technothinksup.com', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `company_id` bigint(20) NOT NULL,
  `company_name` varchar(250) NOT NULL,
  `company_address` varchar(350) NOT NULL,
  `company_city` varchar(150) NOT NULL,
  `company_state` varchar(150) NOT NULL,
  `company_district` varchar(150) NOT NULL,
  `company_statecode` bigint(20) NOT NULL,
  `company_pincode` varchar(20) DEFAULT NULL,
  `company_mob1` varchar(12) NOT NULL,
  `company_mob2` varchar(12) NOT NULL,
  `company_email` varchar(150) NOT NULL,
  `company_website` varchar(150) NOT NULL,
  `company_pan_no` varchar(12) NOT NULL,
  `company_gst_no` varchar(100) NOT NULL,
  `company_lic1` varchar(150) NOT NULL,
  `company_lic2` varchar(150) NOT NULL,
  `company_start_date` varchar(15) NOT NULL,
  `company_end_date` varchar(15) NOT NULL,
  `company_logo` varchar(200) NOT NULL,
  `company_seal` varchar(150) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`company_id`, `company_name`, `company_address`, `company_city`, `company_state`, `company_district`, `company_statecode`, `company_pincode`, `company_mob1`, `company_mob2`, `company_email`, `company_website`, `company_pan_no`, `company_gst_no`, `company_lic1`, `company_lic2`, `company_start_date`, `company_end_date`, `company_logo`, `company_seal`, `date`) VALUES
(1, 'Lodge', 'Rajarampuri 1<sup>st</sup> Lane', 'Kolhapur', 'Maharashtra', 'Kolhaput', 0, '111222', '9876543210', '9998887770', 'demo@email.com', 'www.ppp.com', '111', '222', '333', '444', '01-01-2019', '01-01-2021', '', '', '2020-02-19 07:24:47');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `customer_no` int(11) DEFAULT NULL,
  `customer_company` varchar(250) DEFAULT NULL,
  `customer_name` varchar(250) DEFAULT NULL,
  `customer_display_name` varchar(250) DEFAULT NULL,
  `customer_gstin` varchar(50) DEFAULT NULL,
  `customer_pan` varchar(50) DEFAULT NULL,
  `composition_scheme` int(11) NOT NULL DEFAULT 0 COMMENT '0=No, 1=Yes',
  `customer_tds` double DEFAULT NULL,
  `customer_mobile` varchar(20) DEFAULT NULL,
  `customer_phone` varchar(20) DEFAULT NULL,
  `customer_email` varchar(150) DEFAULT NULL,
  `tags_id` int(11) DEFAULT NULL,
  `ratesheet_id` int(11) DEFAULT NULL,
  `customer_addr1` text DEFAULT NULL,
  `customer_addr2` text DEFAULT NULL,
  `customer_city` varchar(150) DEFAULT NULL,
  `customer_pin` varchar(10) DEFAULT NULL,
  `country_id` int(11) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL,
  `is_addr_same` int(11) NOT NULL DEFAULT 1 COMMENT '0=No, 1=Yes',
  `customer_s_addr1` text DEFAULT NULL,
  `customer_s_addr2` text DEFAULT NULL,
  `customer_s_city` varchar(150) DEFAULT NULL,
  `customer_s_pin` varchar(10) DEFAULT NULL,
  `country_s_id` int(11) DEFAULT NULL,
  `state_s_id` int(11) DEFAULT NULL,
  `customer_status` int(11) NOT NULL DEFAULT 1 COMMENT '0=Inactive, 1=Active',
  `customer_addedby` varchar(50) DEFAULT NULL,
  `customer_added_date` varchar(20) DEFAULT NULL,
  `customer_updateby` varchar(50) DEFAULT NULL,
  `customer_update_date` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `company_id`, `customer_no`, `customer_company`, `customer_name`, `customer_display_name`, `customer_gstin`, `customer_pan`, `composition_scheme`, `customer_tds`, `customer_mobile`, `customer_phone`, `customer_email`, `tags_id`, `ratesheet_id`, `customer_addr1`, `customer_addr2`, `customer_city`, `customer_pin`, `country_id`, `state_id`, `is_addr_same`, `customer_s_addr1`, `customer_s_addr2`, `customer_s_city`, `customer_s_pin`, `country_s_id`, `state_s_id`, `customer_status`, `customer_addedby`, `customer_added_date`, `customer_updateby`, `customer_update_date`) VALUES
(1, 1, NULL, 'q', 'w', 'e', 'r', 't', 1, 10, '9633699636', '9955663322', 'dsfg@dfgh.bbb', 1, 0, 'xcb', 'xcvb', 'vb', '666333', 101, 22, 0, 'xcb', 'fsdfdf', 'vb', '666333', 101, 22, 1, '1', '13-02-2020 07:02:19 ', '1', '14-02-2020 09:47:13 ');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `service_id` int(20) NOT NULL,
  `company_id` int(20) NOT NULL,
  `service_name` varchar(250) DEFAULT NULL,
  `service_rate` varchar(100) DEFAULT NULL,
  `service_addedby` varchar(100) NOT NULL,
  `service_status` int(10) NOT NULL DEFAULT 1,
  `service_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`service_id`, `company_id`, `service_name`, `service_rate`, `service_addedby`, `service_status`, `service_date`) VALUES
(6, 1, 'Drinks', '300', '1', 1, '2020-02-19 09:27:02');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `branch_id` varchar(100) NOT NULL,
  `roll_id` int(11) NOT NULL DEFAULT 2,
  `user_name` varchar(250) NOT NULL,
  `user_lastname` varchar(100) NOT NULL,
  `user_city` varchar(150) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_mobile` varchar(12) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_otp` varchar(10) DEFAULT NULL,
  `user_status` varchar(20) NOT NULL DEFAULT 'active',
  `user_addedby` varchar(100) NOT NULL,
  `user_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_admin` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `company_id`, `branch_id`, `roll_id`, `user_name`, `user_lastname`, `user_city`, `user_email`, `user_mobile`, `user_password`, `user_otp`, `user_status`, `user_addedby`, `user_date`, `is_admin`) VALUES
(1, 1, '', 1, 'Admin', '', 'Kolhapur', 'demo@email.com', '9876543210', '123456', NULL, 'active', 'Admin', '2020-01-08 09:55:02', 1),
(6, 1, '', 2, 'Datta Mane', '', 'Kop', 'datta@mail.com', '9673454383', '123456', NULL, 'active', '1', '2020-02-12 06:56:56', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_roll`
--

CREATE TABLE `user_roll` (
  `roll_id` int(20) NOT NULL,
  `company_id` int(50) NOT NULL,
  `roll_name` varchar(100) NOT NULL,
  `user_status` varchar(50) NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_roll`
--

INSERT INTO `user_roll` (`roll_id`, `company_id`, `roll_name`, `user_status`) VALUES
(1, 1, 'Admin', 'active'),
(2, 1, 'User', 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`company_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`),
  ADD KEY `tags_id` (`tags_id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_roll`
--
ALTER TABLE `user_roll`
  ADD PRIMARY KEY (`roll_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `company_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `service_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user_roll`
--
ALTER TABLE `user_roll`
  MODIFY `roll_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`tags_id`) REFERENCES `tags` (`tags_id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
