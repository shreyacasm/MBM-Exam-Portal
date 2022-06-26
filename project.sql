-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 26, 2022 at 11:20 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--
CREATE DATABASE IF NOT EXISTS project;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'sunnygkp10@gmail.com', '123456'),
(2, 'admin@admin.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('55892169bf6a7', '55892169d2efc'),
('5589216a3646e', '5589216a48722'),
('558922117fcef', '5589221195248'),
('55892211e44d5', '55892211f1fa7'),
('558922894c453', '558922895ea0a'),
('558922899ccaa', '55892289aa7cf'),
('558923538f48d', '558923539a46c'),
('55892353f05c4', '55892354051be'),
('558973f4389ac', '558973f462e61'),
('558973f4c46f2', '558973f4d4abe'),
('558973f51600d', '558973f526fc5'),
('558973f55d269', '558973f57af07'),
('558973f5abb1a', '558973f5e764a'),
('5589751a63091', '5589751a81bf4'),
('5589751ad32b8', '5589751adbdbd'),
('5589751b304ef', '5589751b3b04d'),
('5589751b749c9', '5589751b9a98c'),
('62af731cf0c54', '62af731cf26f6'),
('62af731d0294e', '62af731d032ab'),
('62af731d053b9', '62af731d05e9f'),
('62af731d0e782', '62af731d0f675'),
('62af731d12ee6', '62af731d133ae'),
('62af759942ee2', '62af759943774'),
('62af759945d4f', '62af7599460f0'),
('62b03325cd430', '62b03325ce1ec'),
('62b03325d0e7f', '62b03325d1b35');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` text NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `subject`, `feedback`, `date`, `time`) VALUES
('62b0356912b27', 'Lakshita ', 'lakshita@gmail.com', 'Screen Freeze', 'Screen frozen during the test, is this my internal issue or overall?', '2022-06-20', '10:52:57am'),
('62b03e05eb294', 'Anish', 'ans@yahoo.com', 'Very Good', 'Very good working of website, enjoyed giving test', '2022-06-20', '11:29:41am'),
('62b03e6fe0e5c', 'Sakshi Vishwa', 'sakshi@gmail.com', 'Time boundary', 'Time boundary should be increased for linux test', '2022-06-20', '11:31:27am'),
('62b03ea1107e3', 'Sadam Hussain', 'hsad@gmail.com', 'Avg UI', 'UI needs to be interactive, rest everything is great', '2022-06-20', '11:32:17am');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(50) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `sahi`, `wrong`, `date`) VALUES
('Shreya.suroliya001@gmail.com', '5589222f16b93', 4, 2, 2, 0, '2022-05-17 19:00:04'),
('ser@gmail.com', '558922ec03021', -2, 2, 0, 2, '2022-06-18 19:12:43'),
('ser@gmail.com', '558920ff906b8', 1, 2, 1, 1, '2022-06-18 19:21:25'),
('lakshita@gmail.com', '62b03283937fb', 10, 2, 2, 0, '2022-06-20 08:44:02'),
('lakshita@gmail.com', '62af6e98e9e4d', 15, 5, 4, 1, '2022-06-20 08:45:17'),
('amit12@gmail.com', '62b03283937fb', 5, 2, 1, 1, '2022-06-20 09:45:09'),
('amit12@gmail.com', '62af7573be00d', 1, 2, 1, 1, '2022-06-20 09:45:32'),
('amit12@gmail.com', '55897338a6659', -2, 5, 1, 4, '2022-06-20 09:46:04');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('55892169bf6a7', 'usermod', '55892169d2efc'),
('55892169bf6a7', 'useradd', '55892169d2f05'),
('55892169bf6a7', 'useralter', '55892169d2f09'),
('55892169bf6a7', 'groupmod', '55892169d2f0c'),
('5589216a3646e', '751', '5589216a48713'),
('5589216a3646e', '752', '5589216a4871a'),
('5589216a3646e', '754', '5589216a4871f'),
('5589216a3646e', '755', '5589216a48722'),
('558922117fcef', 'echo', '5589221195248'),
('558922117fcef', 'print', '558922119525a'),
('558922117fcef', 'printf', '5589221195265'),
('558922117fcef', 'cout', '5589221195270'),
('55892211e44d5', 'int a', '55892211f1f97'),
('55892211e44d5', '$a', '55892211f1fa7'),
('55892211e44d5', 'long int a', '55892211f1fb4'),
('55892211e44d5', 'int a$', '55892211f1fbd'),
('558922894c453', 'cin>>a;', '558922895ea0a'),
('558922894c453', 'cin<<a;', '558922895ea26'),
('558922894c453', 'cout>>a;', '558922895ea34'),
('558922894c453', 'cout<a;', '558922895ea41'),
('558922899ccaa', 'cout', '55892289aa7cf'),
('558922899ccaa', 'cin', '55892289aa7df'),
('558922899ccaa', 'print', '55892289aa7eb'),
('558922899ccaa', 'printf', '55892289aa7f5'),
('558923538f48d', '255.0.0.0', '558923539a46c'),
('558923538f48d', '255.255.255.0', '558923539a480'),
('558923538f48d', '255.255.0.0', '558923539a48b'),
('558923538f48d', 'none of these', '558923539a495'),
('55892353f05c4', '192.168.1.100', '5589235405192'),
('55892353f05c4', '172.168.16.2', '55892354051a3'),
('55892353f05c4', '10.0.0.0.1', '55892354051b4'),
('55892353f05c4', '11.11.11.11', '55892354051be'),
('558973f4389ac', 'containing root file-system required during bootup', '558973f462e44'),
('558973f4389ac', ' Contains only scripts to be executed during bootup', '558973f462e56'),
('558973f4389ac', ' Contains root-file system and drivers required to be preloaded during bootup', '558973f462e61'),
('558973f4389ac', 'None of the above', '558973f462e6b'),
('558973f4c46f2', 'Kernel', '558973f4d4abe'),
('558973f4c46f2', 'Shell', '558973f4d4acf'),
('558973f4c46f2', 'Commands', '558973f4d4ad9'),
('558973f4c46f2', 'Script', '558973f4d4ae3'),
('558973f51600d', 'Boot Loading', '558973f526f9d'),
('558973f51600d', ' Boot Record', '558973f526fb9'),
('558973f51600d', ' Boot Strapping', '558973f526fc5'),
('558973f51600d', ' Booting', '558973f526fce'),
('558973f55d269', ' Quick boot', '558973f57aef1'),
('558973f55d269', 'Cold boot', '558973f57af07'),
('558973f55d269', ' Hot boot', '558973f57af17'),
('558973f55d269', ' Fast boot', '558973f57af27'),
('558973f5abb1a', 'bash', '558973f5e7623'),
('558973f5abb1a', ' Csh', '558973f5e7636'),
('558973f5abb1a', ' ksh', '558973f5e7640'),
('558973f5abb1a', ' sh', '558973f5e764a'),
('5589751a63091', 'q', '5589751a81bd6'),
('5589751a63091', 'wq', '5589751a81be8'),
('5589751a63091', ' both (a) and (b)', '5589751a81bf4'),
('5589751a63091', ' none of the mentioned', '5589751a81bfd'),
('5589751ad32b8', ' moves screen down one page', '5589751adbdbd'),
('5589751ad32b8', 'moves screen up one page', '5589751adbdce'),
('5589751ad32b8', 'moves screen up one line', '5589751adbdd8'),
('5589751ad32b8', ' moves screen down one line', '5589751adbde2'),
('5589751b304ef', ' yy', '5589751b3b04d'),
('5589751b304ef', 'yw', '5589751b3b05e'),
('5589751b304ef', 'yc', '5589751b3b069'),
('5589751b304ef', ' none of the mentioned', '5589751b3b073'),
('5589751b749c9', 'X', '5589751b9a98c'),
('5589751b749c9', 'x', '5589751b9a9a5'),
('5589751b749c9', 'D', '5589751b9a9b7'),
('5589751b749c9', 'd', '5589751b9a9c9'),
('5589751bd02ec', 'autoindentation is not possible in vi editor', '5589751bdadaa'),
('62af731cf0c54', 'Amit Shah', '62af731cf26f6'),
('62af731cf0c54', 'Rajnath Singh', '62af731cf2700'),
('62af731cf0c54', 'piyush goyal', '62af731cf2701'),
('62af731cf0c54', 'smriti irani', '62af731cf2702'),
('62af731d0294e', 'Mahanadi', '62af731d032a6'),
('62af731d0294e', 'Narmada', '62af731d032ab'),
('62af731d0294e', 'Son', '62af731d032ac'),
('62af731d0294e', 'Ganga', '62af731d032ad'),
('62af731d053b9', 'Rann of Kachchh', '62af731d05e9f'),
('62af731d053b9', 'Arabian Sea', '62af731d05ea3'),
('62af731d053b9', 'Lake Sambhar', '62af731d05ea4'),
('62af731d053b9', 'Gulf of Cambay', '62af731d05ea5'),
('62af731d0e782', 'Kota', '62af731d0f672'),
('62af731d0e782', 'Chamera', '62af731d0f675'),
('62af731d0e782', 'Kakrapara', '62af731d0f676'),
('62af731d0e782', 'Narora', '62af731d0f677'),
('62af731d12ee6', 'Assam', '62af731d133a5'),
('62af731d12ee6', 'Nagaland', '62af731d133ac'),
('62af731d12ee6', 'Arunachal Pradesh', '62af731d133ad'),
('62af731d12ee6', 'All of these', '62af731d133ae'),
('62af759942ee2', 'a', '62af75994376c'),
('62af759942ee2', 'b', '62af759943773'),
('62af759942ee2', 'c', '62af759943774'),
('62af759942ee2', 'd', '62af759943775'),
('62af759945d4f', 'a', '62af7599460dd'),
('62af759945d4f', 'b', '62af7599460ee'),
('62af759945d4f', 'c', '62af7599460ef'),
('62af759945d4f', 'd', '62af7599460f0'),
('62b03325cd430', 'big data analysis', '62b03325ce1ec'),
('62b03325cd430', 'bad data analysis ', '62b03325ce1f1'),
('62b03325cd430', 'bomb difusion analysis', '62b03325ce1f2'),
('62b03325cd430', 'badass ', '62b03325ce1f3'),
('62b03325d0e7f', 'Abhisek', '62b03325d1b2f'),
('62b03325d0e7f', 'Simran kutti', '62b03325d1b34'),
('62b03325d0e7f', 'Shrawan Devta', '62b03325d1b35'),
('62b03325d0e7f', 'Bewda barwar', '62b03325d1b36');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('558920ff906b8', '55892169bf6a7', 'what is command for changing user information??', 4, 1),
('558920ff906b8', '5589216a3646e', 'what is permission for view only for other??', 4, 2),
('558921841f1ec', '558922117fcef', 'what is command for print in php??', 4, 1),
('558921841f1ec', '55892211e44d5', 'which is a variable of php??', 4, 2),
('5589222f16b93', '558922894c453', 'what is correct statement in c++??', 4, 1),
('5589222f16b93', '558922899ccaa', 'which command is use for print the output in c++?', 4, 2),
('558922ec03021', '558923538f48d', 'what is correct mask for A class IP???', 4, 1),
('558922ec03021', '55892353f05c4', 'which is not a private IP??', 4, 2),
('55897338a6659', '558973f4389ac', 'On Linux, initrd is a file', 4, 1),
('55897338a6659', '558973f4c46f2', 'Which is loaded into memory when system is booted?', 4, 2),
('55897338a6659', '558973f51600d', ' The process of starting up a computer is known as', 4, 3),
('55897338a6659', '558973f55d269', ' Bootstrapping is also known as', 4, 4),
('55897338a6659', '558973f5abb1a', 'The shell used for Single user mode shell is:', 4, 5),
('5589741f9ed52', '5589751a63091', ' Which command is used to close the vi editor?', 4, 1),
('5589741f9ed52', '5589751ad32b8', ' In vi editor, the key combination CTRL+f', 4, 2),
('5589741f9ed52', '5589751b304ef', ' Which vi editor command copies the current line of the file?', 4, 3),
('5589741f9ed52', '5589751b749c9', ' Which command is used to delete the character before the cursor location in vi editor?', 4, 4),
('5589741f9ed52', '5589751bd02ec', ' Which one of the following statement is true?', 4, 5),
('62af6e98e9e4d', '62af731cf0c54', 'Who is the home minister of the cabinet of India?', 4, 1),
('62af6e98e9e4d', '62af731d0294e', 'Which one of the following river flows between Vindhyan and Satpura ranges?', 4, 2),
('62af6e98e9e4d', '62af731d053b9', 'River Luni originates near Pushkar and drains into which one of the following?', 4, 3),
('62af6e98e9e4d', '62af731d0e782', 'Which of the following is not a nuclear power center?', 4, 4),
('62af6e98e9e4d', '62af731d12ee6', 'Guwahati High Court is the judicature of\r\n', 4, 5),
('62af7573be00d', '62af759942ee2', 'test 1', 4, 1),
('62af7573be00d', '62af759945d4f', 'test 2', 4, 2),
('62b03283937fb', '62b03325cd430', 'full form of bda', 4, 1),
('62b03283937fb', '62b03325d0e7f', 'Who is the faculty?', 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `sahi` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`eid`, `title`, `sahi`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('558920ff906b8', 'Linux : File Managment', 2, 1, 2, 5, '', 'linux', '2015-06-23 09:03:59'),
('558921841f1ec', 'Php Coding', 2, 1, 2, 5, '', 'PHP', '2015-06-23 09:06:12'),
('5589222f16b93', 'C++ Coding', 2, 1, 2, 5, '', 'c++', '2015-06-23 09:09:03'),
('558922ec03021', 'Networking', 2, 1, 2, 5, '', 'networking', '2015-06-23 09:12:12'),
('55897338a6659', 'Linux:startup', 2, 1, 5, 10, '', 'linux', '2015-06-23 14:54:48'),
('5589741f9ed52', 'Linux :vi Editor', 2, 1, 5, 10, '', 'linux', '2015-06-23 14:58:39'),
('62af6e98e9e4d', 'General Knowledge', 4, 1, 5, 10, 'General knowledge is information that has been accumulated over time through various mediums, sources. It excludes specialized learning that can only be obtained with extensive training and information confined to a single medium. General knowledge is an essential component of crystallized intelligence.', 'Gk', '2022-06-19 18:44:40'),
('62af7573be00d', 'Test ', 2, 1, 2, 3, 'some test introd', 'test', '2022-06-19 19:13:55'),
('62b03283937fb', 'Bda', 5, 0, 2, 10, 'ujyjyhkj', 'bda', '2022-06-20 08:40:35'),
('62b03fee32bce', 'Information Theory Coding', 4, 1, 2, 10, 'ITC Midterm for IT 7th sem students, please submit on time', 'ITC', '2022-06-20 09:37:50');

-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(50) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('Shreya.suroliya001@gmail.com', 4, '2022-05-17 19:00:04'),
('ser@gmail.com', -1, '2022-06-18 19:21:25'),
('amit12@gmail.com', 4, '2022-06-20 09:46:04'),
('lakshita@gmail.com', 25, '2022-06-20 08:45:17');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mob` bigint(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `gender`, `college`, `email`, `mob`, `password`) VALUES
('Amit Verma', 'M', 'Computer Science', 'amit12@gmail.com', 4884839932, '62aff5e676a5c89f4203ecd2ae6478c8'),
('Lakshita Sharma', 'F', 'Computer Science', 'lakshita@gmail.com', 1234567890, '4db555d05ae909338bbcde2fc1b08c4d'),
('Lakshita', 'F', 'Information Technology', 'ser@gmail.com', 9667133788, '53e6086284353cb73d4979f08537d950'),
('Shreya Suroliya', 'F', 'Electronics & Computer', 'Shreya.suroliya001@gmail.com', 9667133788, 'dab95a786e2d2de4938aeb6dd44c51e7');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
