-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2020 at 05:42 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.5.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `node`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `message_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `sender_id` int(15) NOT NULL,
  `receiver_id` int(15) NOT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`message_id`, `message`, `sender_id`, `receiver_id`, `status`) VALUES
(306, 'asd', 62, 63, 'seen'),
(307, 'fghfgh', 63, 62, 'seen'),
(308, 'fgfg', 63, 62, 'seen'),
(309, 'fgdfgdfg dgf d f dfg fgdf dgf', 63, 62, 'seen'),
(310, 'dsfsdf', 63, 62, 'seen'),
(311, 'sdfsdfsdf', 62, 63, 'seen'),
(312, 'sdfsdf', 62, 63, 'seen'),
(313, 'iinanu ka?', 62, 63, 'seen'),
(314, 'waray la', 63, 62, 'seen'),
(315, 'fsdfsdf', 62, 63, 'seen'),
(316, 'hehehe', 62, 63, 'seen'),
(317, 'hatooon', 63, 62, 'seen'),
(318, ' ngeeekkkk', 62, 63, 'seen'),
(319, 'sdfsdf', 62, 63, 'seen'),
(320, 'sdfsdfsdf', 62, 63, 'seen'),
(321, 'sdfsdf', 62, 63, 'seen'),
(322, 'sdfsdf', 63, 62, 'seen'),
(323, 'sdfsdf', 63, 62, 'seen'),
(324, 'sdfsdf', 62, 63, 'seen'),
(325, 'gdfg', 63, 62, 'seen'),
(326, 'dfgdfgdfg', 62, 63, 'seen'),
(327, 'fsd', 63, 62, 'seen'),
(328, 'fsd', 62, 63, 'unseen'),
(329, 'ef', 62, 63, 'unseen'),
(330, 'bbb', 62, 63, 'unseen'),
(331, 'sdfsdfsdf', 62, 63, 'unseen');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `users_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `photo` varchar(150) DEFAULT NULL,
  `msg_ctr` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`users_id`, `username`, `password`, `photo`, `msg_ctr`, `status`) VALUES
(62, 'admin', 'admin', 'ec324dd5469737638bf8addf5e627fa4.png', NULL, ''),
(63, 'jereco', 'jj', 'ac2fc07f92dd1db35e56d0ec3758c227.jpg', NULL, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=332;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
