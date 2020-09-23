-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2018 at 05:19 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `paysystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE IF NOT EXISTS `branch` (
`id` int(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `detail` text NOT NULL,
  `delete_status` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `branch`, `address`, `detail`, `delete_status`) VALUES
(1, 'computer Engg.', 'PICT Dhanakwadi', 'Computer science Engineering', '0'),
(2, 'IT', 'PICT Dhanakwadi', 'Information Technology', '0'),
(3, 'ENTC', 'PICT Dhanakwadi', 'Electronics and telecommunication engineering', '0');

-- --------------------------------------------------------

--
-- Table structure for table `fees_transaction`
--

CREATE TABLE IF NOT EXISTS `fees_transaction` (
`id` int(255) NOT NULL,
  `stdid` varchar(255) NOT NULL,
  `paid` int(255) NOT NULL,
  `submitdate` datetime NOT NULL,
  `transcation_remark` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fees_transaction`
--

INSERT INTO `fees_transaction` (`id`, `stdid`, `paid`, `submitdate`, `transcation_remark`) VALUES
(1, '1', 100, '2017-11-01 00:00:00', ''),
(2, '2', 150, '2017-10-05 00:00:00', ''),
(3, '3', 900, '2017-04-13 00:00:00', 'monthly'),
(4, '3', 1000, '2018-04-01 00:00:00', 'lklk'),
(5, '4', 500, '2018-07-02 00:00:00', 'TEST'),
(6, '5', 1500, '2018-06-02 00:00:00', 'DEMO'),
(7, '6', 200, '2018-07-03 00:00:00', 'DEMO'),
(8, '7', 200, '2018-03-02 00:00:00', 'DEMO'),
(9, '8', 5000, '2017-01-03 00:00:00', 'DEMO'),
(10, '9', 2500, '2018-03-02 00:00:00', 'DEMO');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
`id` int(255) NOT NULL,
  `emailid` varchar(255) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `joindate` datetime NOT NULL,
  `about` text NOT NULL,
  `contact` varchar(255) NOT NULL,
  `fees` int(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `balance` int(255) NOT NULL,
  `delete_status` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `emailid`, `sname`, `joindate`, `about`, `contact`, `fees`, `branch`, `balance`, `delete_status`) VALUES
(1, 'vijaysingh@gmail.com', 'vijay singh', '2017-11-01 00:00:00', 'edu', '8084256601', 6500, '1', 200, '0'),
(2, 'ganeshgai@gmail.com', 'ganesh gai', '2017-10-05 00:00:00', 'degree', '9865321245', 5000, '2', 500, '0'),
(3, 'chinmaykardam@gmail.com', 'chinmay kardam', '2017-04-13 00:00:00', 'degree', '9425369685', 4000, '1', 700, '0'),
(4, 'omkarnivas@gmail.com', 'omkar nivas', '2018-07-02 00:00:00', 'edu', '9456123875', 90000, '3', 1000, '1'),
(5, 'jayshah@gmail.com', 'jay shah', '2018-06-02 00:00:00', 'degree', '9517538264', 50000, '3', 1500, '0'),
(6, 'vivekpatil@gmail.com', 'vivek patil', '2018-07-03 00:00:00', 'edu', '9362581475', 6000, '1', 2700, '0'),
(7, 'codsorg@gmail.com', 'Emma Gadot', '2018-03-02 00:00:00', 'degree', '3545458520', 2200, '3', 2000, '0'),
(8, 'Isabella@gmail.com', 'Isabella', '2017-01-03 00:00:00', 'TEST TEST', '8525874545', 20000, '2', 15000, '0'),
(9, 'jamesWan@gmail.com', 'James Wan', '2018-03-02 00:00:00', 'TEST TEST', '9565452102', 6500, '1', 4000, '0');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `emailid` varchar(255) NOT NULL,
  `lastlogin` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `emailid`, `lastlogin`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Lewa', 'lewa@gmail.com', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fees_transaction`
--
ALTER TABLE `fees_transaction`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `fees_transaction`
--
ALTER TABLE `fees_transaction`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(255) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
