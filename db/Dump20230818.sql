-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: localhost    Database: userDB
-- ------------------------------------------------------
-- Server version	8.0.29

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adminTable`
--

DROP TABLE IF EXISTS `adminTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adminTable` (
  `userId` int NOT NULL AUTO_INCREMENT,
  `user` varchar(45) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminTable`
--

-- LOCK TABLES `adminTable` WRITE;
-- /*!40000 ALTER TABLE `adminTable` DISABLE KEYS */;
-- INSERT INTO `adminTable` VALUES (1,'j4jebra@gmail.com','$2b$10$Hpzyf2nhtLAVKaZ1Ky0hvOBilQ6kuiMlnKmB6P9vTOmQ2rRNE8mxe');
-- /*!40000 ALTER TABLE `adminTable` ENABLE KEYS */;
-- UNLOCK TABLES;

--
-- Table structure for table `appointmentTable`
--

DROP TABLE IF EXISTS `appointmentTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointmentTable` (
  `appointment_id` int NOT NULL AUTO_INCREMENT,
  `cus_name` varchar(45) DEFAULT NULL,
  `cus_no` varchar(45) DEFAULT NULL,
  `cus_email` varchar(45) DEFAULT NULL,
  `string_app_date` varchar(45) DEFAULT NULL,
  `doctor_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`appointment_id`),
  KEY `doctor_name_idx` (`doctor_name`),
  CONSTRAINT `doctor_name` FOREIGN KEY (`doctor_name`) REFERENCES `doctors` (`doctor_name`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointmentTable`
--

LOCK TABLES `appointmentTable` WRITE;
/*!40000 ALTER TABLE `appointmentTable` DISABLE KEYS */;
INSERT INTO `appointmentTable` VALUES 
(12,'John Doe','1234567890','john.doe@example.com','2022-06-16','Dr. Elon Mishra'),
(13,'Jane Smith','2345678901','jane.smith@example.com','2022-06-24','Dr. Deepak Singh'),
(14,'Robert Johnson','3456789012','robert.johnson@example.com','2022-06-25','Dr. Harshit Gupta'),
(15,'Emily Davis','4567890123','emily.davis@example.com','2022-07-02','Dr. Shruti Tiwari');
/*!40000 ALTER TABLE `appointmentTable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doctors`
--

DROP TABLE IF EXISTS `doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `doctors` (
  `doctor_id` int NOT NULL,
  `doctor_name` varchar(45) NOT NULL,
  `doctor_expertise` varchar(45) NOT NULL,
  PRIMARY KEY (`doctor_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doctors`
--

LOCK TABLES `doctors` WRITE;
/*!40000 ALTER TABLE `doctors` DISABLE KEYS */;
INSERT INTO `doctors` VALUES (1,'Dr. Elon Mishra','expert doctor child specialist'),(2,'Dr. Deepak Singh','expert doctor cardiologist'),(3,'Dr. Harshit Gupta','expert doctor physician'),(4,'Dr. Shruti Tiwari','expert doctor physician');
/*!40000 ALTER TABLE `doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reviews`
--

DROP TABLE IF EXISTS `Reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Reviews` (
  `rwr_id` int NOT NULL AUTO_INCREMENT,
  `rwr_name` varchar(45) DEFAULT NULL,
  `rwr_email` varchar(45) DEFAULT NULL,
  `rwr_text` longtext,
  PRIMARY KEY (`rwr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reviews`
--

LOCK TABLES `Reviews` WRITE;
/*!40000 ALTER TABLE `Reviews` DISABLE KEYS */;
INSERT INTO `Reviews` VALUES 
(1,'Robert Hall','robert.hall@example.com','This is a review text for entry 1.'),
(2,'Mary Allen','mary.allen@example.com','This is a review text for entry 2.'),
(3,'William Young','william.young@example.com','This is a review text for entry 3.'),
(4,'Patricia King','patricia.king@example.com','This is a review text for entry 4.'),
(5,'Thomas Wright','thomas.wright@example.com','This is a review text for entry 5.'),
(6,'Barbara Scott','barbara.scott@example.com','This is a review text for entry 6.'),
(7,'Charles Harris','charles.harris@example.com','This is a review text for entry 7.'),
(8,'Linda Nelson','linda.nelson@example.com','This is a review text for entry 8.'),
(9,'Joseph Carter','joseph.carter@example.com','This is a review text for entry 9.'),
(10,'Margaret Phillips','margaret.phillips@example.com','This is a review text for entry 10.'),
(11,'Christopher Mitchell','christopher.mitchell@example.com','This is a review text for entry 11.'),
(12,'John Smith','john.smith@example.com','This is a new review. Feel free to change the text.'),
(13,'Jane Doe','jane.doe@example.com','Another review text can go here.'),
(14,'Alice Johnson','alice.johnson@example.com','Feel free to modify this review as well.'),
(15,'Michael Brown','michael.brown@example.com','This is a placeholder review text.'),
(16,'Emily Davis','emily.davis@example.com','You can replace this text with an actual review.'),
(17,'David Miller','david.miller@example.com','This is a sample review. Modify as needed.'),
(18,'Sarah Wilson','sarah.wilson@example.com','Feel free to change this review text.'),
(19,'Brian Taylor','brian.taylor@example.com','This is a placeholder for a review.'),
(20,'Laura Clark','laura.clark@example.com','Replace this text with an actual review.'),
(21,'James Lewis','james.lewis@example.com','This is a sample review. Modify as needed.'),
(22,'Karen Walker','karen.walker@example.com','Feel free to change this review text.');

/*!40000 ALTER TABLE `Reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tutorial`
--

DROP TABLE IF EXISTS `tutorial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tutorial` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `title` (`title`,`description`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tutorial`
--

LOCK TABLES `tutorial` WRITE;
/*!40000 ALTER TABLE `tutorial` DISABLE KEYS */;
/*!40000 ALTER TABLE `tutorial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userTable`
--

DROP TABLE IF EXISTS `userTable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userTable` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `usr_name` varchar(45) DEFAULT NULL,
  `usr_mail` varchar(45) DEFAULT NULL,
  `usr_no` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userTable`
--

LOCK TABLES `userTable` WRITE;
/*!40000 ALTER TABLE `userTable` DISABLE KEYS */;
INSERT INTO `userTable` VALUES (1,'deepak','j4jebra@gmail.com','9755742792'),(2,'piyush','piyush@yahoo.com','717171717717');
/*!40000 ALTER TABLE `userTable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-18 19:42:20
