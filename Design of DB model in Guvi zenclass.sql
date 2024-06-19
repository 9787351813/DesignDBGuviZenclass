CREATE TABLE `student` (
  `studentid` INT PRIMARY KEY AUTO_INCREMENT,
  `studentname` VARCHAR(255),
  `mobilenumber` VARCHAR(255) UNIQUE,
  `email` VARCHAR(255) UNIQUE,
  `mentorname` VARCHAR(255),
  `batchid` INT,
  `batchname` VARCHAR(255)
);

CREATE TABLE `task` (
  `taskid` INT PRIMARY KEY AUTO_INCREMENT,
  `taskname` VARCHAR(255) UNIQUE,
  `studentid` INT,
  `mentorid` INT,
  `mentorname` VARCHAR(25),
  `batchname` VARCHAR(50)
);

CREATE TABLE `mentor` (
  `mentorid` INT PRIMARY KEY AUTO_INCREMENT,
  `email` VARCHAR(50) UNIQUE,
  `contactno` VARCHAR(15) UNIQUE,
  `assignedbatch` VARCHAR(100)
);

CREATE TABLE `batch` (
  `batchid` INT PRIMARY KEY AUTO_INCREMENT,
  `batchname` VARCHAR(255),
  `totalstudents` INT,
  `mentorid` INT
);

CREATE TABLE `query` (
  `queryid` INT PRIMARY KEY AUTO_INCREMENT,
  `querytext` TEXT,
  `studentid` INT,
  `mentorid` INT
);

CREATE TABLE `dashboard` (
  `dashboardid` INT PRIMARY KEY AUTO_INCREMENT,
  `studentid` INT,
  `mentorid` INT,
  `batchid` INT
);

CREATE TABLE `mockinterview` (
  `mockinterviewid` INT PRIMARY KEY AUTO_INCREMENT,
  `studentid` INT,
  `mentorid` INT,
  `batchid` INT
);

ALTER TABLE `student` ADD FOREIGN KEY (`batchid`) REFERENCES `batch` (`batchid`);

ALTER TABLE `task` ADD FOREIGN KEY (`studentid`) REFERENCES `student` (`studentid`);

ALTER TABLE `task` ADD FOREIGN KEY (`mentorid`) REFERENCES `mentor` (`mentorid`);

ALTER TABLE `batch` ADD FOREIGN KEY (`mentorid`) REFERENCES `mentor` (`mentorid`);

ALTER TABLE `query` ADD FOREIGN KEY (`studentid`) REFERENCES `student` (`studentid`);

ALTER TABLE `query` ADD FOREIGN KEY (`mentorid`) REFERENCES `mentor` (`mentorid`);

ALTER TABLE `dashboard` ADD FOREIGN KEY (`studentid`) REFERENCES `student` (`studentid`);

ALTER TABLE `dashboard` ADD FOREIGN KEY (`mentorid`) REFERENCES `mentor` (`mentorid`);

ALTER TABLE `dashboard` ADD FOREIGN KEY (`batchid`) REFERENCES `batch` (`batchid`);

ALTER TABLE `mockinterview` ADD FOREIGN KEY (`studentid`) REFERENCES `student` (`studentid`);

ALTER TABLE `mockinterview` ADD FOREIGN KEY (`mentorid`) REFERENCES `mentor` (`mentorid`);

ALTER TABLE `mockinterview` ADD FOREIGN KEY (`batchid`) REFERENCES `batch` (`batchid`);
