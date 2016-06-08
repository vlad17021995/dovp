-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Час створення: Чрв 08 2016 р., 12:05
-- Версія сервера: 10.1.10-MariaDB
-- Версія PHP: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `clothes_shop`
--

-- --------------------------------------------------------

--
-- Структура таблиці `category`
--

CREATE TABLE `category` (
  `gender_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `gender_category`
--

CREATE TABLE `gender_category` (
  `gender_id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `sub_category_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `type` varchar(15) NOT NULL,
  `color` varchar(15) NOT NULL,
  `name` varchar(15) NOT NULL,
  `size` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `photos_url` text NOT NULL,
  `rate` double NOT NULL,
  `consumer` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `sub_category`
--

CREATE TABLE `sub_category` (
  `sub_category_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблиці `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `login` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL,
  `country` varchar(15) NOT NULL,
  `city` varchar(15) NOT NULL,
  `address` varchar(15) NOT NULL,
  `number` varchar(15) NOT NULL,
  `name` varchar(15) NOT NULL,
  `soname` varchar(15) NOT NULL,
  `products_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Індекси таблиці `gender_category`
--
ALTER TABLE `gender_category`
  ADD PRIMARY KEY (`gender_id`);

--
-- Індекси таблиці `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Індекси таблиці `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`sub_category_id`);

--
-- Індекси таблиці `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
