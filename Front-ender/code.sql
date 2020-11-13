-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2020 at 08:23 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `code`
--

-- --------------------------------------------------------

--
-- Table structure for table `code`
--

CREATE TABLE `code` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `src` varchar(100) NOT NULL,
  `tutcode` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `code`
--

INSERT INTO `code` (`id`, `title`, `src`, `tutcode`) VALUES
(2, 'Making a complete blog using flask #3:Connecting to database and makig a working contact form', 'cGUpd86Q6hI', 'from flask import Flask,render_template,request,session,redirect\r\nfrom flask_sqlalchemy import SQLAlchemy\r\n\r\napp=Flask(__name__)\r\napp.config[\'SQLALCHEMY_DATABASE_URI\'] = \'mysql://root:@localhost/hncare\'\r\ndb = SQLAlchemy(app)\r\n\r\nclass Contact(db.Model):\r\n    id = db.Column(db.Integer, primary_key=True)\r\n    name = db.Column(db.String(80), unique=True, nullable=False)\r\n    email = db.Column(db.String(120), unique=True, nullable=False)\r\n    message = db.Column(db.String(120), unique=True, nullable=False)\r\n\r\nclass Post(db.Model):\r\n    id = db.Column(db.Integer, primary_key=True)\r\n    title = db.Column(db.String(80), unique=True, nullable=False)\r\n    subtitle = db.Column(db.String(120), unique=True, nullable=False)\r\n    content = db.Column(db.String(120), unique=True, nullable=False)\r\n\r\n\r\n@app.'),
(3, 'Black panther landing page design using HTML and CSS(no bootstrap)', 'O5pAjecuziQ', '<!DOCTYPE html>\r\n<html lang=\"en\">\r\n<head>\r\n    <meta charset=\"UTF-8\">\r\n    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n    <title>Document</title>\r\n    <style>\r\n        *{\r\n            margin: 0;\r\n            padding: 0;\r\n        }\r\n        body{\r\n            overflow: hidden;\r\n            width: 100%;\r\n            height: 100vh;\r\n            display: flex;\r\n            justify-content: center;\r\n            align-items: center;\r\n            background: linear-gradient(#614385 , #516395);\r\n        }\r\n        body::before{\r\n            content: \'\';\r\n            position: absolute;\r\n            width: 70px;\r\n            height: 1000px;\r\n            background: #461b7e;\r\n            transform: skewX(120deg);\r\n        }\r\n        .bp{\r\n            width: 900px;\r\n            height: 500px;\r\n            background: #f2f2f2;\r\n        }\r\n        .marvel{\r\n            position: relative;\r\n            top: 20px;\r\n            left: 50px;\r\n            width: 100px;\r\n            height: auto;\r\n            background: #ed1d24;\r\n        }\r\n        .marvel h3{\r\n            font-size: 25px;\r\n            font-weight: bold;\r\n            font-family: \'Segoe UI\', Tahoma, Geneva, Verdana, sans-serif;\r\n        }\r\n       h2{position: relative;\r\n           font-size: 2.5em;\r\n           font-family: \'Trebuchet MS\', \'Lucida Sans Unicode\', \'Lucida Grande\', \'Lucida Sans\', Arial, sans-serif;\r\n           color: #614385;\r\ntop: 40px;\r\nleft: 50px;\r\n       }\r\n       .title{\r\n           position: absolute;\r\nleft: 280px;\r\ntop: 200px;\r\nfont-size: 7.3em;\r\nfont-family: \'Trebuchet MS\', \'Lucida Sans Unicode\', \'Lucida Grande\', \'Lucida Sans\', Arial, sans-serif;\r\ncolor: #614385;\r\nz-index: 1;\r\n       }\r\n        .bpanther{\r\n            width: 500px;\r\n            position: absolute;\r\n            left: 750px;\r\n            z-index: 0;\r\n            cursor: pointer;\r\n        }\r\n        .btn{position: relative;\r\n            width: 200px;\r\n            height: 40px;\r\n            font-size: 20px;\r\n            font-weight: bold;\r\n            font-family: \'Trebuchet MS\', \'Lucida Sans Unicode\', \'Lucida Grande\', \'Lucida Sans\', Arial, sans-serif;\r\n            top: 200px;\r\n            left: 50px;\r\n            background: #614385;\r\n            border: none;\r\n            cursor: pointer;\r\n        }\r\n        .btn:hover{\r\n            transition: 0.5s;\r\n            background: #fff;\r\n        }\r\n        .bpanther:hover{\r\ntransform: scale(1.1);\r\ntransition: 1s;\r\nz-index: 2;\r\n        }\r\n    </style>\r\n</head>\r\n<body>\r\n    <div class=\"bp\">\r\n        <div class=\"marvel\"><h3>MARVEL</h3></div>\r\n        <h2>Hero</h2>\r\n        <h1 class=\"title\">Black Panther</h1>\r\n        <input class=\"btn\" type=\"button\" value=\"Wakanda forever\">\r\n    <img class=\"bpanther\" src=\"./bp-removebg-preview.png\" alt=\"\">\r\n    </div>\r\n</body>\r\n</html>');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`) VALUES
(6, 'Top best online platforms to learn coding (For free)', 'w3schools\r\n\r\nA W3Schools is an educational website for learning web technologies online. Content includes tutorials and references relating to HTML, CSS, JavaScript, JSON, PHP, Python, AngularJS, React.js, SQL, Bootstrap, Sass, Node.js, jQuery, XQuery, AJAX, XML, Raspberry Pi, C++, C# and Java\r\n\r\nkhan academy\r\n\r\nKhan Academy is an American non-profit educational organization created in 2008 by Sal Khan, with the goal of creating a set of online tools that help educate students. The organization produces short lessons in the form of videos. Its website also includes supplementary practice exercises and materials for educators.\r\n\r\nCodewars\r\n\r\nCodewars is an educational community for computer programming. On the platform, software developers train on programming challenges known as kata. These discrete programming exercises train a range of skills in a variety of programming languages, and are completed within an online integrated development environment\r\n\r\ncodeacademy\r\n\r\nCodecademy is an American online interactive platform that offers free coding classes in 12 different programming languages including Python, Java, Go, JavaScript, Ruby, SQL, C++, C#, Swift, and Sass, as well as markup languages HTML and CSS\r\n\r\ncodewithharry\r\n\r\nGet your programming career started with these free video courses. Source code is available with all the videos for your better experience\r\n\r\nFront-ender\r\n\r\nThe best channel to learn simple coding tips and tricks on HTML,CSS and javascript as well as pyhton'),
(7, 'What is wordpress??', 'WordPress (WP, WordPress.org) is a free and open-source content management system (CMS) written in PHP[4] and paired with a MySQL or MariaDB database. Features include a plugin architecture and a template system, referred to within WordPress as Themes. WordPress was originally created as a blog-publishing system but has evolved to support other types of web content including more traditional mailing lists and forums, media galleries, membership sites, learning management systems (LMS) and online stores. WordPress is used by more than 60 million websites,[5] including 33.6% of the top 10 million websites as of April 2019,[6][7] WordPress is one of the most popular content management system solutions in use.[8] WordPress has also been used for other application domains such as pervasive display systems (PDS).[9] WordPress was released on May 27, 2003, by its founders, American developer Matt Mullenweg[1] and English developer Mike Little,[10][11] as a fork of b2/cafelog. The software is released under the GPLv2 (or later) license.[12] To function, WordPress has to be installed on a web server, either part of an Internet hosting service like WordPress.com or a computer running the software package WordPress.org in order to serve as a network host in its own right.[13] A local computer may be used for single-user testing and learning purposes.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `code`
--
ALTER TABLE `code`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `code`
--
ALTER TABLE `code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
