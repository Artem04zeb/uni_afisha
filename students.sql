-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 20 2023 г., 14:32
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `students`
--

-- --------------------------------------------------------

--
-- Структура таблицы `courses`
--

CREATE TABLE `courses` (
  `id_course` int NOT NULL,
  `answers` varchar(255) NOT NULL,
  `unic_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `courses`
--

INSERT INTO `courses` (`id_course`, `answers`, `unic_id`) VALUES
(0, 'b a;a c b;a c;b c;b c;c a;b a;c c;b a;a a', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `statistics`
--

CREATE TABLE `statistics` (
  `id_student` int NOT NULL,
  `id_course` int NOT NULL,
  `points` varchar(255) NOT NULL,
  `unic_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `statistics`
--

INSERT INTO `statistics` (`id_student`, `id_course`, `points`, `unic_id`) VALUES
(15, 0, '0/0;0/0;0/0;0/0;0/0;0/0;0/0;0/0;0/0;0/0', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE `students` (
  `id` int NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `courses` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`id`, `email`, `fname`, `lname`, `courses`, `password`) VALUES
(15, 'artem04zeb@gmail.com', 'Артём', 'Зебелянов', '1', '$2y$10$YT/nKjsgbLKGHR8Wq7lNfuhq3SBIVdrmFBsIeXaxwZFX4FtLbCdmG'),
(16, 'sadmdlskmd@mail.u', 'СОСИК', 'ЛДФРКИН', ' 1', '$2y$10$0HVxUKiX1Q60ChrMxFLFyOOISdPIKaliJHrrr6./PZ/KX4q8W8eOa');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`unic_id`);

--
-- Индексы таблицы `statistics`
--
ALTER TABLE `statistics`
  ADD PRIMARY KEY (`unic_id`);

--
-- Индексы таблицы `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `courses`
--
ALTER TABLE `courses`
  MODIFY `unic_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `statistics`
--
ALTER TABLE `statistics`
  MODIFY `unic_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `students`
--
ALTER TABLE `students`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
