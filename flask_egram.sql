-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 30, 2019 at 10:29 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flask_egram`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `op_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `op_name` varchar(50) DEFAULT NULL,
  `op_email` varchar(100) DEFAULT NULL,
  `op_password` text,
  PRIMARY KEY (`op_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`op_id`, `op_name`, `op_email`, `op_password`) VALUES
(1, 'Siddhant Baliram Fulzele', 'admin@egram.com', 'b\'amtpa2o=\''),
(2, 'Abhay Skpal', 'abhay@admin.com', 'b\'amtpa2pu\'');

-- --------------------------------------------------------

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
CREATE TABLE IF NOT EXISTS `area` (
  `a_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `a_category` varchar(50) NOT NULL,
  `a_name` varchar(50) NOT NULL,
  `a_address` varchar(100) NOT NULL,
  `a_contact` varchar(20) DEFAULT NULL,
  `a_email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`a_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `area`
--

INSERT INTO `area` (`a_id`, `a_category`, `a_name`, `a_address`, `a_contact`, `a_email`) VALUES
(1, 'Hospitals', 'M K Hospital', 'Rameshwadi', '+9632587412', 'mk.hospital@gmail.com'),
(2, 'Schools', 'St. Anthony High School', 'Rameshwadi', '9967589229', 'stanthony@gmail.com'),
(3, 'Schools', 'Don Bosco School', 'Ganesh Nagar', '9967589229', 'donbosco@gmail.com'),
(6, 'Hospitals', 'K K Hospital', 'Sanewadi', '1236547890', 'hospital@tk.com'),
(5, 'Police Stations', 'Badlapur Station Chowki', 'Station Road', '1236547895', 'police.station@bud.com'),
(7, 'Colleges', 'Dr. Ambedkar College', 'Vadala', '9967589229', 'ambedkar@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `certis`
--

DROP TABLE IF EXISTS `certis`;
CREATE TABLE IF NOT EXISTS `certis` (
  `c_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `c_name` varchar(50) NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `certis`
--

INSERT INTO `certis` (`c_id`, `c_name`) VALUES
(1, 'Income Certificate'),
(2, 'Birth Certificate');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `fb_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL,
  `fb_date` date NOT NULL,
  `fb_desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`fb_id`),
  KEY `u_id` (`u_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`fb_id`, `u_id`, `fb_date`, `fb_desc`) VALUES
(1, 1, '2019-02-01', ' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur bibendum ornare dolor, quis ullamcorper ligula sodales.'),
(2, 2, '2019-02-10', 'Hemants Feedback'),
(4, 1, '2019-02-10', 'check working');

-- --------------------------------------------------------

--
-- Table structure for table `updates`
--

DROP TABLE IF EXISTS `updates`;
CREATE TABLE IF NOT EXISTS `updates` (
  `up_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `up_cat_id` int(11) NOT NULL,
  `up_title` varchar(255) DEFAULT NULL,
  `up_date` date DEFAULT NULL,
  `up_file_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`up_id`),
  KEY `up_cat_id` (`up_cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `updates`
--

INSERT INTO `updates` (`up_id`, `up_cat_id`, `up_title`, `up_date`, `up_file_path`) VALUES
(2, 1, 'New XYZ notifications', '2019-02-10', '1.PDF'),
(6, 4, 'Circular 1101010', '2019-02-10', '18.pdf'),
(5, 2, 'Letest News 1001', '2019-02-10', '15.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `updates_category`
--

DROP TABLE IF EXISTS `updates_category`;
CREATE TABLE IF NOT EXISTS `updates_category` (
  `up_cat_id` int(11) NOT NULL AUTO_INCREMENT,
  `up_cat_name` varchar(30) NOT NULL,
  PRIMARY KEY (`up_cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `updates_category`
--

INSERT INTO `updates_category` (`up_cat_id`, `up_cat_name`) VALUES
(1, 'Notifications'),
(2, 'News'),
(4, 'Circular');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `u_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `u_first_name` varchar(50) DEFAULT NULL,
  `u_middle_name` varchar(50) DEFAULT NULL,
  `u_last_name` varchar(50) DEFAULT NULL,
  `u_mobile` varchar(12) NOT NULL,
  `u_email` varchar(100) DEFAULT NULL,
  `u_password` varchar(255) DEFAULT NULL,
  `u_reg_date` date DEFAULT NULL,
  `u_aadhar_no` varchar(12) DEFAULT NULL,
  `u_dob` date DEFAULT NULL,
  `u_gender` char(1) DEFAULT NULL,
  `u_address` varchar(255) DEFAULT NULL,
  `u_pin_code` int(8) NOT NULL,
  `u_districts` varchar(200) DEFAULT NULL,
  `u_occupation` varchar(200) DEFAULT NULL,
  `u_photo` varchar(255) DEFAULT NULL,
  `u_status` varchar(10) DEFAULT NULL,
  `u_income` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `u_first_name`, `u_middle_name`, `u_last_name`, `u_mobile`, `u_email`, `u_password`, `u_reg_date`, `u_aadhar_no`, `u_dob`, `u_gender`, `u_address`, `u_pin_code`, `u_districts`, `u_occupation`, `u_photo`, `u_status`, `u_income`) VALUES
(1, 'Siddhant', 'Baliram', 'Fulzele', '9967589229', 'sidd@gmail.com', 'b\'amtpa2o=\'', '2019-02-08', '710707715706', '1999-07-26', 'M', 'B-101,Ashtavinayak Chs, Ganesh Nagar, Ramseshwadi, Badlapur ', 421503, 'Thane', 'Student', 'sidd.jpg', 'Active', '5001554'),
(4, 'sagar', 'balkrushna', 'sawant', '9067251725', 'sawantsaggy0502@gmail.com', 'b\'XcKMwpfCnsKcwrFuZ2c=\'', '2019-03-30', '479915254578', '1999-02-05', 'M', 'at post Hangirgr tal-Sangola dist-Solapur', 413309, 'Solapur', 'Student', 'abcd.jpg', 'Active', '50000');

-- --------------------------------------------------------

--
-- Table structure for table `user_document`
--

DROP TABLE IF EXISTS `user_document`;
CREATE TABLE IF NOT EXISTS `user_document` (
  `ud_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `req_id` int(11) DEFAULT NULL,
  `ud_file_type` varchar(100) NOT NULL,
  `ud_file_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ud_id`),
  KEY `req_id` (`req_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_document`
--

INSERT INTO `user_document` (`ud_id`, `req_id`, `ud_file_type`, `ud_file_path`) VALUES
(1, 2, 'Identity proof', '09_chapter 1.pdf'),
(14, 8, 'Residence proof', 'BI.pdf'),
(3, 2, 'Residence proof', 'Ala Cart Rate Signet Digital.pdf'),
(4, 2, 'Income proof', 'L.No.39-A.pdf'),
(13, 8, 'Birth proof', 'Jr.Enngr_.pdf'),
(12, 5, 'Income proof', 'MSc-Information.pdf'),
(11, 5, 'Residence proof', 'MSc-Computer.pdf'),
(10, 5, 'Identity proof', 'restaurant bb.pdf'),
(15, 8, 'Identity proof', '4.49-Final-TYBSc-IT-Syllabus-2.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `user_request`
--

DROP TABLE IF EXISTS `user_request`;
CREATE TABLE IF NOT EXISTS `user_request` (
  `req_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `u_id` int(11) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  `req_date` date DEFAULT NULL,
  `verify_date` varchar(255) DEFAULT NULL,
  `req_status` varchar(15) DEFAULT NULL,
  `tracking_id` varchar(50) NOT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`req_id`),
  KEY `u_id` (`u_id`),
  KEY `c_id` (`c_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_request`
--

INSERT INTO `user_request` (`req_id`, `u_id`, `c_id`, `req_date`, `verify_date`, `req_status`, `tracking_id`, `status`) VALUES
(1, 1, 1, '2019-03-01', NULL, 'Not Complete', '28468', 0),
(2, 1, 1, '2019-03-01', NULL, 'Completed', '38258', 1),
(5, 4, 1, '2019-03-30', '2019/03/30', 'Completed', '31904', 1),
(8, 4, 2, '2019-03-30', '2019/03/30', 'Completed', '27947', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
