-- phpMyAdmin SQL Dump
-- version 4.0.10.18
-- https://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Feb 01, 2018 at 01:56 AM
-- Server version: 5.6.36-cll-lve
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `attendancesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE IF NOT EXISTS `attendance` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `empid` int(11) NOT NULL,
  `day` date NOT NULL,
  `status` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  UNIQUE KEY `empid` (`empid`,`day`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=30 ;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`aid`, `empid`, `day`, `status`) VALUES
(1, 7, '2017-12-26', 1),
(2, 5, '2017-12-27', 1),
(3, 7, '2017-12-27', 1),
(4, 7, '2017-12-28', 1),
(5, 7, '2017-12-30', 1),
(6, 7, '2018-01-02', 1),
(7, 5, '2018-01-02', 1),
(8, 7, '2018-01-03', 1),
(9, 5, '2018-01-04', 1),
(10, 7, '2018-01-04', 1),
(11, 5, '2018-01-05', 1),
(12, 7, '2018-01-05', 1),
(13, 7, '2018-01-08', 1),
(14, 7, '2018-01-09', 1),
(16, 7, '2018-01-10', 1),
(17, 7, '2018-01-11', 1),
(18, 7, '2018-01-12', 1),
(19, 7, '2018-01-15', 1),
(20, 7, '2018-01-16', 1),
(21, 7, '2018-01-17', 1),
(22, 7, '2018-01-19', 1),
(23, 7, '2018-01-20', 1),
(24, 7, '2018-01-22', 1),
(25, 7, '2018-01-23', 1),
(26, 7, '2018-01-24', 1),
(27, 7, '2018-01-27', 1),
(28, 7, '2018-01-29', 1),
(29, 7, '2018-01-30', 1);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `did` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  PRIMARY KEY (`did`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `eid` int(10) NOT NULL AUTO_INCREMENT,
  `fname` varchar(25) NOT NULL,
  `lname` varchar(25) NOT NULL,
  `designation` varchar(35) NOT NULL,
  `address` varchar(200) NOT NULL,
  `sex` varchar(6) NOT NULL,
  `age` int(10) NOT NULL,
  `salary` float NOT NULL,
  `dateofjoining` date NOT NULL,
  `contact` varchar(10) NOT NULL,
  PRIMARY KEY (`eid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`eid`, `fname`, `lname`, `designation`, `address`, `sex`, `age`, `salary`, `dateofjoining`, `contact`) VALUES
(1, 'Admin', 'Admin', 'Admin', 'Bangalore', 'Female', 0, 0, '2017-09-05', '1234567890'),
(7, 'Raju', 'Mahanta', 'Web Developer', 'Kaikundrahalli, Bangalore', 'Male', 25, 18000, '2017-09-05', '9706336472'),
(5, 'Thejashwini', 'J', 'Client Relation And Operation', ' Kantaspura, Bangalore', 'Female', 22, 15000, '2017-12-04', '8904469062'),
(6, 'khushaali', 'Katariya', 'Manager', 'Bangalore', 'Female', 30, 20000, '2010-10-10', '9886749109'),
(8, 'Rohini', 'Mundra', 'Manager', 'Bangalore', 'Female', 30, 1200000, '2012-10-10', '9886633980');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE IF NOT EXISTS `project` (
  `pnumber` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `empid` int(11) NOT NULL,
  `location` varchar(50) NOT NULL,
  `duration` varchar(15) NOT NULL,
  `starttime` varchar(25) NOT NULL,
  `details` varchar(400) NOT NULL,
  PRIMARY KEY (`pnumber`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE IF NOT EXISTS `userlogin` (
  `uid` int(10) NOT NULL,
  `DOL` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`uid`, `DOL`) VALUES
(1, '2017-12-13 10:07:35'),
(3, '2017-12-13 10:22:58'),
(1, '2017-12-13 10:45:01'),
(1, '2017-12-18 08:36:13'),
(1, '2017-12-19 11:04:03'),
(1, '2017-12-21 05:15:19'),
(1, '2017-12-26 04:42:22'),
(7, '2017-12-26 04:46:43'),
(1, '2017-12-27 05:14:09'),
(5, '2017-12-27 05:16:00'),
(1, '2017-12-27 05:20:31'),
(7, '2017-12-27 05:21:05'),
(1, '2017-12-28 04:58:38'),
(7, '2017-12-28 05:00:37'),
(1, '2017-12-28 05:02:17'),
(7, '2017-12-29 13:17:26'),
(7, '2017-12-30 05:16:23'),
(1, '2017-12-30 05:16:59'),
(7, '2018-01-02 04:35:41'),
(5, '2018-01-02 04:35:44'),
(7, '2018-01-03 06:36:44'),
(5, '2018-01-04 05:09:29'),
(7, '2018-01-04 05:12:40'),
(5, '2018-01-04 05:15:25'),
(1, '2018-01-04 05:16:43'),
(5, '2018-01-05 06:25:07'),
(7, '2018-01-05 06:25:31'),
(1, '2018-01-05 06:26:00'),
(7, '2018-01-08 12:28:56'),
(7, '2018-01-11 04:50:10'),
(7, '2018-01-12 05:41:02'),
(7, '2018-01-15 05:04:34'),
(7, '2018-01-16 11:44:01'),
(1, '2018-01-22 05:16:48'),
(7, '2018-01-22 05:17:32'),
(1, '2018-01-30 07:01:39'),
(7, '2018-01-30 07:02:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `uid` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `userstatus` int(10) NOT NULL COMMENT '1=new user',
  `category` int(10) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `username`, `password`, `userstatus`, `category`) VALUES
(1, 'admin', 'adm123', 0, 1),
(2, 'Testing', '9kgym5454', 1, 2),
(3, 'Raju', 'ym8u36602', 1, 2),
(4, 'Raju ', 'pvolu2790', 1, 2),
(5, 'Thejashwini', 'jhrfa7271', 1, 2),
(6, 'khushaali', 'uolxh7349', 1, 2),
(7, 'Raju', 'sieqz4847', 1, 2),
(8, 'Rohini', 'ptfim7833', 1, 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
