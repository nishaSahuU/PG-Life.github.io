-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 06, 2023 at 11:45 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pglife`
--

-- --------------------------------------------------------

--
-- Table structure for table `amenities`
--

CREATE TABLE `amenities` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `icon` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `amenities`
--

INSERT INTO `amenities` (`id`, `name`, `type`, `icon`) VALUES
(1, 'Wifi', 'Common Area', 'wifi'),
(2, 'Power Backup', 'Building', 'powerbackup'),
(3, 'Fire Extinguisher', 'Building', 'fireext'),
(4, 'TV', 'Common Area', 'tv'),
(5, 'Bed with Mattress', 'Bedroom', 'bed'),
(6, 'Parking', 'Building', 'parking'),
(7, 'Water Purifier', 'Common Area', 'rowater'),
(8, 'Dining', 'Common Area', 'dining'),
(9, 'Air Conditioner', 'Bedroom', 'ac'),
(10, 'Washing Machine', 'Common Area', 'washingmachine'),
(11, 'Lift', 'Building', 'lift'),
(12, 'CCTV', 'Building', 'cctv'),
(13, 'Geyser', 'Washroom', 'geyser');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`) VALUES
(1, 'Delhi'),
(2, 'Mumbai'),
(3, 'Bengaluru'),
(4, 'Hyderabad');

-- --------------------------------------------------------

--
-- Table structure for table `interested_users_properties`
--

CREATE TABLE `interested_users_properties` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interested_users_properties`
--

INSERT INTO `interested_users_properties` (`id`, `user_id`, `property_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 5),
(4, 2, 1),
(5, 2, 5),
(6, 3, 1),
(7, 3, 2),
(8, 3, 5),
(9, 4, 2),
(10, 4, 3),
(11, 4, 4),
(12, 5, 3),
(13, 5, 4),
(14, 5, 1),
(15, 7, 4),
(18, 7, 5),
(19, 10, 2),
(20, 10, 1),
(22, 9, 2),
(25, 9, 1),
(26, 24, 1);

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `gender` enum('male','female','unisex') NOT NULL,
  `rent` int(11) NOT NULL,
  `rating_clean` float(2,1) NOT NULL,
  `rating_food` float(2,1) NOT NULL,
  `rating_safety` float(2,1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `city_id`, `name`, `address`, `description`, `gender`, `rent`, `rating_clean`, `rating_food`, `rating_safety`) VALUES
(1, 1, 'Saxena\'s Paying Guest', 'H.No. 3958 Kaseru Walan, Pahar Ganj, New Delhi, Delhi 110055', 'Furnished studio apartment - share it with close friends! Located in posh area of Bijwasan in Delhi, this house is available for both boys and girls. Go for a private room or opt for a shared one and make it your own abode. Go out with your new friends - catch a movie at the nearest cinema hall or just chill in a cafe which is not even 2 kms away. Unwind with your flatmates after a long day at work/college. With a common living area and a shared kitchen, make your own FRIENDS moments. After all, there\'s always a Joey with unlimited supply of food. Remember, all it needs is one crazy story to convert a roomie into a BFF. What\'s nearby/Your New Neighborhood 4.0 Kms from Dwarka Sector- 21 Metro Station.', 'male', 5000, 4.3, 3.4, 4.8),
(2, 1, 'Navrang PG Home', '644-C,Mohalla Baoli 6 Tooti Chowk, Paharganj, New Delhi, Delhi 110055', 'Furnished studio apartment - share it with close friends! Located in posh area of Bijwasan in Delhi, this house is available for both boys and girls. Go for a private room or opt for a shared one and make it your own abode. Go out with your new friends - catch a movie at the nearest cinema hall or just chill in a cafe which is not even 2 kms away. Unwind with your flatmates after a long day at work/college. With a common living area and a shared kitchen, make your own FRIENDS moments. After all, there\'s always a Joey with unlimited supply of food. Remember, all it needs is one crazy story to convert a roomie into a BFF. What\'s nearby/Your New Neighborhood 4.0 Kms from Dwarka Sector- 21 Metro Station.', 'unisex', 6000, 2.9, 3.4, 3.8),
(3, 2, 'Navkar Paying Guest', '44, Juhu Scheme, Juhu, Mumbai, Maharashtra 400058', 'Furnished studio apartment - share it with close friends! Located in posh area of Bijwasan in Delhi, this house is available for both boys and girls. Go for a private room or opt for a shared one and make it your own abode. Go out with your new friends - catch a movie at the nearest cinema hall or just chill in a cafe which is not even 2 kms away. Unwind with your flatmates after a long day at work/college. With a common living area and a shared kitchen, make your own FRIENDS moments. After all, there\'s always a Joey with unlimited supply of food. Remember, all it needs is one crazy story to convert a roomie into a BFF. What\'s nearby/Your New Neighborhood 4.0 Kms from Dwarka Sector- 21 Metro Station.', 'female', 9500, 3.9, 3.8, 4.9),
(4, 2, 'PG for Girls Borivali West', 'Plot no.258/D4, Gorai no.2, Borivali West, Mumbai, Maharashtra 400092', 'Furnished studio apartment - share it with close friends! Located in posh area of Bijwasan in Delhi, this house is available for both boys and girls. Go for a private room or opt for a shared one and make it your own abode. Go out with your new friends - catch a movie at the nearest cinema hall or just chill in a cafe which is not even 2 kms away. Unwind with your flatmates after a long day at work/college. With a common living area and a shared kitchen, make your own FRIENDS moments. After all, there\'s always a Joey with unlimited supply of food. Remember, all it needs is one crazy story to convert a roomie into a BFF. What\'s nearby/Your New Neighborhood 4.0 Kms from Dwarka Sector- 21 Metro Station.', 'female', 8000, 4.2, 4.1, 4.5),
(5, 2, 'Ganpati Paying Guest', 'Police Beat, Sainath Complex, Besides, SV Rd, Daulat Nagar, Borivali East, Mumbai - 400066', 'Furnished studio apartment - share it with close friends! Located in posh area of Bijwasan in Delhi, this house is available for both boys and girls. Go for a private room or opt for a shared one and make it your own abode. Go out with your new friends - catch a movie at the nearest cinema hall or just chill in a cafe which is not even 2 kms away. Unwind with your flatmates after a long day at work/college. With a common living area and a shared kitchen, make your own FRIENDS moments. After all, there\'s always a Joey with unlimited supply of food. Remember, all it needs is one crazy story to convert a roomie into a BFF. What\'s nearby/Your New Neighborhood 4.0 Kms from Dwarka Sector- 21 Metro Station.', 'male', 8500, 4.2, 3.9, 4.6),
(6, 3, 'Saxena\'s Paying Guest', 'H.No. 3958 Kaseru Walan, Pahar Ganj, Bengaluru 110055', 'Furnished studio apartment - share it with close friends! Located in posh area of Bijwasan in Delhi, this house is available for both boys and girls. Go for a private room or opt for a shared one and make it your own abode. Go out with your new friends - catch a movie at the nearest cinema hall or just chill in a cafe which is not even 2 kms away. Unwind with your flatmates after a long day at work/college. With a common living area and a shared kitchen, make your own FRIENDS moments. After all, there\'s always a Joey with unlimited supply of food. Remember, all it needs is one crazy story to convert a roomie into a BFF. What\'s nearby/Your New Neighborhood 4.0 Kms from Dwarka Sector- 21 Metro Station.', 'male', 5500, 4.3, 3.4, 4.8),
(7, 3, 'Navratan PG Home', '644-C,Mohalla Baoli 6 Tooti Chowk, Paharganj, Bengluru 110055', 'Furnished studio apartment - share it with close friends! Located in posh area of Bijwasan in Delhi, this house is available for both boys and girls. Go for a private room or opt for a shared one and make it your own abode. Go out with your new friends - catch a movie at the nearest cinema hall or just chill in a cafe which is not even 2 kms away. Unwind with your flatmates after a long day at work/college. With a common living area and a shared kitchen, make your own FRIENDS moments. After all, there\'s always a Joey with unlimited supply of food. Remember, all it needs is one crazy story to convert a roomie into a BFF. What\'s nearby/Your New Neighborhood 4.0 Kms from Dwarka Sector- 21 Metro Station.', 'unisex', 6000, 2.9, 3.4, 3.8),
(8, 4, 'Shambhu PG', '44, Jhuvan Sector-4, Hyderabad, 400058', 'Furnished studio apartment - share it with close friends! Located in posh area of Bijwasan in Delhi, this house is available for both boys and girls. Go for a private room or opt for a shared one and make it your own abode. Go out with your new friends - catch a movie at the nearest cinema hall or just chill in a cafe which is not even 2 kms away. Unwind with your flatmates after a long day at work/college. With a common living area and a shared kitchen, make your own FRIENDS moments. After all, there\'s always a Joey with unlimited supply of food. Remember, all it needs is one crazy story to convert a roomie into a BFF. What\'s nearby/Your New Neighborhood 4.0 Kms from Dwarka Sector- 21 Metro Station.', 'female', 9500, 3.9, 3.8, 4.9),
(9, 4, 'PG for Girls ', 'Plot no.258/D4, Gorai no.2, Hyderabad, 400092', 'Furnished studio apartment - share it with close friends! Located in posh area of Bijwasan in Delhi, this house is available for both boys and girls. Go for a private room or opt for a shared one and make it your own abode. Go out with your new friends - catch a movie at the nearest cinema hall or just chill in a cafe which is not even 2 kms away. Unwind with your flatmates after a long day at work/college. With a common living area and a shared kitchen, make your own FRIENDS moments. After all, there\'s always a Joey with unlimited supply of food. Remember, all it needs is one crazy story to convert a roomie into a BFF. What\'s nearby/Your New Neighborhood 4.0 Kms from Dwarka Sector- 21 Metro Station.', 'female', 8000, 4.2, 4.1, 4.5),
(10, 4, 'Anna Paying Guest', 'Police Beat, Sainath Complex, Besides, SV Rd, Daulat Nagar, Hyderabad - 400066', 'Furnished studio apartment - share it with close friends! Located in posh area of Bijwasan in Delhi, this house is available for both boys and girls. Go for a private room or opt for a shared one and make it your own abode. Go out with your new friends - catch a movie at the nearest cinema hall or just chill in a cafe which is not even 2 kms away. Unwind with your flatmates after a long day at work/college. With a common living area and a shared kitchen, make your own FRIENDS moments. After all, there\'s always a Joey with unlimited supply of food. Remember, all it needs is one crazy story to convert a roomie into a BFF. What\'s nearby/Your New Neighborhood 4.0 Kms from Dwarka Sector- 21 Metro Station.', 'male', 4500, 4.2, 3.9, 4.6);

-- --------------------------------------------------------

--
-- Table structure for table `properties_amenities`
--

CREATE TABLE `properties_amenities` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `amenity_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `properties_amenities`
--

INSERT INTO `properties_amenities` (`id`, `property_id`, `amenity_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 4),
(4, 1, 5),
(5, 1, 7),
(6, 1, 8),
(7, 1, 9),
(8, 1, 10),
(9, 1, 11),
(10, 1, 13),
(11, 2, 1),
(12, 2, 2),
(13, 2, 3),
(14, 2, 4),
(15, 2, 5),
(16, 2, 7),
(17, 2, 8),
(18, 2, 9),
(19, 2, 10),
(20, 2, 11),
(21, 2, 13),
(22, 3, 1),
(23, 3, 2),
(24, 3, 3),
(25, 3, 4),
(26, 3, 5),
(27, 3, 7),
(28, 3, 8),
(29, 3, 10),
(30, 3, 11),
(31, 3, 12),
(32, 3, 13),
(33, 4, 1),
(34, 4, 3),
(35, 4, 4),
(36, 4, 5),
(37, 4, 7),
(38, 4, 8),
(39, 4, 10),
(40, 4, 11),
(41, 4, 12),
(42, 4, 13),
(43, 5, 1),
(44, 5, 3),
(45, 5, 4),
(46, 5, 5),
(47, 5, 7),
(48, 5, 8),
(49, 5, 10),
(50, 5, 11),
(51, 5, 12),
(52, 5, 13),
(53, 6, 1),
(54, 6, 2),
(55, 10, 4),
(56, 10, 5),
(57, 10, 7),
(58, 6, 8),
(59, 6, 9),
(60, 6, 10),
(61, 6, 11),
(62, 1, 13),
(63, 2, 1),
(64, 2, 2),
(65, 2, 3),
(66, 2, 4),
(67, 2, 5),
(68, 2, 7),
(69, 2, 8),
(70, 2, 9),
(71, 2, 10),
(72, 2, 11),
(73, 2, 13),
(74, 3, 1),
(75, 3, 2),
(76, 3, 3),
(77, 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `property_id`, `user_name`, `content`) VALUES
(1, 1, 'Ashutosh Gowariker', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(2, 2, 'Karan Singh', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(3, 3, 'Zoya Khan', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(4, 4, 'Suman Dixit', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(5, 5, 'Anand Kashyap', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(6, 6, 'Mira Nair', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(7, 7, 'Meghna Karmkar', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(8, 8, 'Ashfaque Khan', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(9, 9, 'Rajkumar Upadhyay', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(10, 10, 'Sanjay Kashyap', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(11, 2, 'Ashutosh Gowariker', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(12, 3, 'Karan Singh', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(13, 4, 'Zoya Khan', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(14, 5, 'Suman Dixit', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(15, 6, 'Anand Kashyap', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(16, 7, 'Mira Nair', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(17, 8, 'Meghna Karmkar', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(18, 9, 'Ashfaque Khan', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(19, 10, 'Rajkumar Upadhyay', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.'),
(20, 1, 'Sanjay Kashyap', 'You just have to arrive at the place, it\'s fully furnished and stocked with all basic amenities and services and even your friends are welcome.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `college_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `full_name`, `phone`, `gender`, `college_name`) VALUES
(1, 'anuj.kalbalia@gmail.com', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e', 'Anuj Kalbalia', '9535100112', 'male', 'NITD'),
(2, 'shadab@gmail.com', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e', 'Shadab Alam', '9876543210', 'male', 'NITJ'),
(3, 'aditya@gmail.com', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e', 'Aditya Sood', '9876543210', 'male', 'Chandigarh University'),
(4, 'radhika@gmail.com', 'b1b3773a05c0ed0176787a4f1574ff0075f7521e', 'Radhika Bhatia', '9876543210', 'female', 'Delhi University'),
(5, 'radha@gmail.com', 'a49e3510bdca4d131649852114e530bf06557c89', 'Radha ', '9876543210', 'female', 'nn'),
(7, 'nsahu261972@gmail.com', '4c5e1b51dfe42ede99173a12d002b2d4661c9f88', 'Nisha Sahu', '7974746165', 'female', 'SSTC'),
(8, 'ns@gmail.com', '00ba8c97c739118dd7f86f9caba9c483fb856974', 'dkmf', '7804811168', 'female', 'jdwl'),
(9, 'mjm@gmail.com', 'c7b078bd748ae31c24ea6afeeed1306ef450c964', 'ni', '9999999995', 'female', 'hjj'),
(10, 'nsahu2@gmail.com', '6030bef1692ed83216cbc13e2d9f49ae38f7cf1d', 'NISHA SAHU', '7974746354', 'female', 'ssgi'),
(11, 'nisha@gmail.com', 'c7b078bd748ae31c24ea6afeeed1306ef450c964', 'Nisha Sahu', '9999999999', 'female', 'SSTC'),
(12, 'hgv@gmail.com', '08231344f9eefdc23ea58bb4ab4660e0339e4d0a', 'NISHA SAHU', '9878787878', 'male', 'dd'),
(13, 'nsahu26@gmail.com', 'ba645377ed9e03be272ad54c4a77f640de92eda6', 'NISHA SAHU', '7804811168', 'male', 'hg'),
(14, 'mjmu@gmail.com', 'c7162d1b9f6915ed345612cee27ce9dd9b572830', 'NISHA SAHU', '7974746399', 'male', 'hgv'),
(15, 'mjmh@gmail.com', '6cb81a663aa42b1a9cab4c24edd214ebaaa0853f', 'dkmf', '7804811100', 'male', 'hhh'),
(16, 'nsahu26ed1972@gmail.com', '7388f3b9a0af32d05bc0c852ded81fcc8e5863d6', 'dkmf', '7804811144', 'male', 'edd'),
(17, 'mededjm@gmail.com', '6db18d008bc3ed2cfbdb8d3b363bb8c96521be28', 'NISHA SAHU', '7804811164', 'male', 'ehdbe'),
(18, 'nsahu2h61972@gmail.com', '116ba9328c0f4c671279258286ac8076ffe1bbe6', 'NISHA SAHU', '7804818868', 'male', 'hh'),
(19, 'nsahu26jh1972@gmail.com', '08bec2a2d25d1c25de15ef68211af4f7963340c9', 'dkmf', '7974746354', 'male', 'hv'),
(20, 'mjhjjhm@gmail.com', '0a6278cda227f5eb6b9fb965689564809698723c', 'dkmf', '8888888888', 'male', 'hj'),
(21, 'mhhjm@gmail.com', '124bc2ec66d41d93080d1edf8e6c67d61f62d187', 'hhj', '7974746377', 'male', 'hh'),
(22, 'mjmhgu@gmail.com', 'db94ed1f5e96af1c1c6efa2ed3d57a6c89f7819b', 'ni', '9999998899', 'male', 'gvh'),
(23, 'njn@gmail.com', 'c7b078bd748ae31c24ea6afeeed1306ef450c964', 'NISHA SAHU', '7974777777', 'male', 'kj'),
(24, 'nsahu123@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'NISHA SAHU', '7974746354', 'female', 'SSTC');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `amenities`
--
ALTER TABLE `amenities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `interested_users_properties`
--
ALTER TABLE `interested_users_properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `properties_amenities`
--
ALTER TABLE `properties_amenities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_id` (`property_id`),
  ADD KEY `amenity_id` (`amenity_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `property_id` (`property_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `amenities`
--
ALTER TABLE `amenities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `interested_users_properties`
--
ALTER TABLE `interested_users_properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `properties_amenities`
--
ALTER TABLE `properties_amenities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `interested_users_properties`
--
ALTER TABLE `interested_users_properties`
  ADD CONSTRAINT `interested_users_properties_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `interested_users_properties_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`);

--
-- Constraints for table `properties`
--
ALTER TABLE `properties`
  ADD CONSTRAINT `properties_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`);

--
-- Constraints for table `properties_amenities`
--
ALTER TABLE `properties_amenities`
  ADD CONSTRAINT `properties_amenities_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`),
  ADD CONSTRAINT `properties_amenities_ibfk_2` FOREIGN KEY (`amenity_id`) REFERENCES `amenities` (`id`);

--
-- Constraints for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD CONSTRAINT `testimonials_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
