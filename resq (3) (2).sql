-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 09, 2024 at 11:55 PM
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
-- Database: `resq`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminid` int(50) NOT NULL,
  `adminname` varchar(50) NOT NULL,
  `adminemail` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminid`, `adminname`, `adminemail`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', 'aaa');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `bookid` int(50) NOT NULL,
  `stdid` int(50) NOT NULL,
  `eventid` int(50) NOT NULL,
  `created_at` varchar(50) NOT NULL,
  `feedback` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`bookid`, `stdid`, `eventid`, `created_at`, `feedback`, `status`) VALUES
(1, 1, 1, '', '', 'booked'),
(2, 1, 2, '', '', 'rejected'),
(3, 2, 3, '', '', 'rejected'),
(4, 1, 7, '', '', 'accepted');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `eventid` int(50) NOT NULL,
  `orgid` int(50) NOT NULL,
  `eventname` varchar(50) NOT NULL,
  `eventdesc` varchar(500) NOT NULL,
  `eventdate` varchar(50) NOT NULL,
  `eventlocation` varchar(50) NOT NULL,
  `eventcapacity` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`eventid`, `orgid`, `eventname`, `eventdesc`, `eventdate`, `eventlocation`, `eventcapacity`, `image`) VALUES
(1, 1, 'Blood Donation Program', 'Blood Donation Program\', \'Lorem ipsum dolor sit amet. Qui internos excepturi qui dicta fuga et.Lorem ipsum dolor sit amet. Et ratione odio et voluptatibus iure ut iure perferendis. Et quasi quia in voluptas cupiditate vel esse recusandae non nihil esse non quam ullam 33 nemo placeat ea cupiditate repudiandae.', '2025-02-02', 'Cyberjaya', '100', 'avatar/675763fb4c178.png'),
(2, 1, 'SAVE THE EARTH', 'We are here for the Earth!!!', '2024-12-31', 'HULU LANGAT', '50', 'avatar/675763cfe9f17.jpg'),
(3, 1, 'PLANT FOR LIFE', 'LIFE IS LIFE!', '2024-12-15', 'RAWANG', '20', 'avatar/675763e317416.png'),
(7, 2, 'ROAD TO 5G', 'This event is to help develop 5g network in rural states around Malaysia.', '2024-12-29', 'AMPANG', '70', 'avatar/67576a71a5dd2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `messageid` int(11) NOT NULL,
  `stdid` int(11) DEFAULT NULL,
  `orgid` int(11) DEFAULT NULL,
  `message` text NOT NULL,
  `reply` text DEFAULT NULL,
  `message_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `reply_date` timestamp NULL DEFAULT NULL,
  `eventid` int(11) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `whatsapp_link` varchar(255) DEFAULT NULL,
  `read_status` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`messageid`, `stdid`, `orgid`, `message`, `reply`, `message_date`, `reply_date`, `eventid`, `subject`, `whatsapp_link`, `read_status`, `created_at`) VALUES
(6, 1, 1, 'Your volunteer application for SAVE THE EARTH has been approved. Please confirm your participation.', NULL, '2024-12-09 22:10:15', NULL, NULL, NULL, NULL, 0, '2024-12-09 22:41:51'),
(7, 2, 1, 'Your volunteer application for PLANT FOR LIFE has been rejected.', NULL, '2024-12-09 22:10:37', NULL, NULL, NULL, NULL, 0, '2024-12-09 22:41:51'),
(8, 1, 2, 'Your volunteer application for ROAD TO 5G has been approved. Please confirm your participation.', NULL, '2024-12-09 22:16:55', NULL, NULL, NULL, NULL, 0, '2024-12-09 22:41:51');

-- --------------------------------------------------------

--
-- Table structure for table `organization`
--

CREATE TABLE `organization` (
  `orgid` int(50) NOT NULL,
  `orgname` varchar(50) NOT NULL,
  `orgemail` varchar(50) NOT NULL,
  `orgpass` varchar(50) NOT NULL,
  `orgphone` varchar(50) NOT NULL,
  `orgaddress` varchar(500) NOT NULL,
  `created_at` varchar(50) NOT NULL,
  `avatar` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `organization`
--

INSERT INTO `organization` (`orgid`, `orgname`, `orgemail`, `orgpass`, `orgphone`, `orgaddress`, `created_at`, `avatar`, `status`) VALUES
(1, 'YAYASAN PENERAJU', 'yp@gmail.com', 'aaa', '01111111111', 'Mercu UEM, Jalan Stesen Sentral 5, Kuala Lumpur Sentral, 50470 Kuala Lumpur, Wilayah Persekutuan Kuala Lumpur', '12/10/2010', 'avatar/675763ae795ff.jpg', 'ACTIVE'),
(2, 'YAYASAN TELEKOM', 'ytm@gmail.com', 'aaa', '01232323323', 'Level 6, TM Annexe, 2, Jalan Pantai Jaya, Wilayah Persekutuan, 59200 Kuala Lumpur, Federal Territory of Kuala Lumpur', '2/2/2000', 'avatar/67576a17835fe.png', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stdid` int(50) NOT NULL,
  `stdname` varchar(50) NOT NULL,
  `stdphone` varchar(50) NOT NULL,
  `stdemail` varchar(50) NOT NULL,
  `stdpass` varchar(50) NOT NULL,
  `avatar` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stdid`, `stdname`, `stdphone`, `stdemail`, `stdpass`, `avatar`, `status`) VALUES
(1, 'Aiman Reduan', '01222212222', 'aaa@gmail.com', 'aaa', 'avatar/6757639613df9.jpg', 'ACTIVE'),
(2, 'Puyau Wapucitao', '01222212222', 'p@gmail.com', 'aaa', 'avatar/675768e7766d3.png', 'ACTIVE'),
(3, 'Ahmad Eidlan', '012312133', 'ahmodeidlan@gmail.com', 'aaa', 'avatar/image4.png', 'ACTIVE'),
(4, 'Mat Rabes', '0133232312', 'raba@gmail.com', 'aaa', 'avatar/675763cfe9f17.jpg', 'ACTIVE'),
(5, 'Muhammad Aimin', '0123123232323', 'aim@gmail.com', 'aaa', 'avatar/image5.png', 'ACTIVE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminid`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`bookid`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`eventid`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`messageid`),
  ADD KEY `stdid` (`stdid`),
  ADD KEY `orgid` (`orgid`),
  ADD KEY `eventid` (`eventid`);

--
-- Indexes for table `organization`
--
ALTER TABLE `organization`
  ADD PRIMARY KEY (`orgid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stdid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `bookid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `eventid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `messageid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `organization`
--
ALTER TABLE `organization`
  MODIFY `orgid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stdid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`stdid`) REFERENCES `student` (`stdid`),
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`orgid`) REFERENCES `organization` (`orgid`),
  ADD CONSTRAINT `messages_ibfk_3` FOREIGN KEY (`eventid`) REFERENCES `event` (`eventid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
