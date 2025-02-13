CREATE DATABASE  IF NOT EXISTS `fishdata` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `fishdata`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: fishdata
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `booking_table`
--

DROP TABLE IF EXISTS `booking_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_table` (
  `Tran_id` int NOT NULL AUTO_INCREMENT,
  `v_name` varchar(255) DEFAULT NULL,
  `v_contact` varchar(255) DEFAULT NULL,
  `v_address` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `price` int DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`Tran_id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_table`
--

LOCK TABLES `booking_table` WRITE;
/*!40000 ALTER TABLE `booking_table` DISABLE KEYS */;
INSERT INTO `booking_table` VALUES (45,'vendor','87287428','near chavdi naka','TUNA','large',' large tune',10,2000,'Place order','2023-12-16');
/*!40000 ALTER TABLE `booking_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_table`
--

DROP TABLE IF EXISTS `customer_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_table` (
  `cust_id` int NOT NULL AUTO_INCREMENT,
  `cust_name` varchar(255) DEFAULT NULL,
  `cust_mail` varchar(255) DEFAULT NULL,
  `cust_contact` varchar(255) DEFAULT NULL,
  `cust_address` varchar(255) DEFAULT NULL,
  `total_purchase` int DEFAULT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_table`
--

LOCK TABLES `customer_table` WRITE;
/*!40000 ALTER TABLE `customer_table` DISABLE KEYS */;
INSERT INTO `customer_table` VALUES (13,'Sahil Sutar',NULL,'2365978654',NULL,365),(14,'Dinesh Thakur',NULL,'2566728920',NULL,507),(15,'Swapnil Patil',NULL,'5648785432',NULL,468),(16,'Rahul Shinde',NULL,'5163215687',NULL,672),(17,'Vedant Kadam',NULL,'8765345678',NULL,1088);
/*!40000 ALTER TABLE `customer_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_table`
--

DROP TABLE IF EXISTS `login_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_table`
--

LOCK TABLES `login_table` WRITE;
/*!40000 ALTER TABLE `login_table` DISABLE KEYS */;
INSERT INTO `login_table` VALUES (1,'admin','1234',NULL,NULL);
/*!40000 ALTER TABLE `login_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_table`
--

DROP TABLE IF EXISTS `product_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_table` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `price` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  `sp_price` int DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_table`
--

LOCK TABLES `product_table` WRITE;
/*!40000 ALTER TABLE `product_table` DISABLE KEYS */;
INSERT INTO `product_table` VALUES (55,'Salmon','Premium Wild-caught salmon','Finfish',40,9000,'2023-12-11',100),(56,'Shrimp','Freshly dried shrimp','Shellfish',98,2450,'2023-12-11',55),(57,'Cod','Large Size, dried and salted','Large',126,15732,'2023-12-15',89),(58,'Anchovies','small size , dried and salted','small',92,11140,'2023-12-15',96),(59,'Bombay Duck','Bombay Duck- small size dried and salted','small',92,8397,'2023-12-15',52),(60,'Herring','Herring- medium size dried and salted','medium',71,6461,'2023-12-15',91),(61,'Sardines','saradines-small size, dries and salted','Small',2,500,'2023-12-16',250),(62,'Tuna','Tuna - smal and dried','small',40,1000,'2023-12-16',100);
/*!40000 ALTER TABLE `product_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_table`
--

DROP TABLE IF EXISTS `sales_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_table` (
  `transaction_id` int NOT NULL AUTO_INCREMENT,
  `invoice_id` int NOT NULL,
  `pname` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `price` int DEFAULT NULL,
  `cust_name` varchar(255) DEFAULT NULL,
  `cust_phone` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_table`
--

LOCK TABLES `sales_table` WRITE;
/*!40000 ALTER TABLE `sales_table` DISABLE KEYS */;
INSERT INTO `sales_table` VALUES (40,5790,'Salmon','Finfish',2,200,'Sahil Sutar','2365978654','2023-08-15','05:44:30'),(41,5790,'Shrimp','Shellfish',3,165,'Sahil Sutar','2365978654','2023-08-15','05:44:30'),(42,1014,'Cod','Large',4,356,'Dinesh Thakur','2566728920','2023-09-15','05:46:09'),(43,1014,'Anchovies','small',1,96,'Dinesh Thakur','2566728920','2023-09-15','05:46:09'),(44,1014,'Shrimp','Shellfish',1,55,'Dinesh Thakur','2566728920','2023-09-15','05:46:09'),(45,2861,'Bombay Duck','small',2,104,'Swapnil Patil','5648785432','2023-10-15','05:48:28'),(46,2861,'Herring','medium',4,364,'Swapnil Patil','5648785432','2023-10-15','05:48:28'),(47,8189,'Anchovies','small',1,96,'Rahul Shinde','5163215687','2023-11-15','05:50:11'),(48,8189,'Shrimp','Shellfish',4,220,'Rahul Shinde','5163215687','2023-11-15','05:50:11'),(49,8189,'Cod','Large',4,356,'Rahul Shinde','5163215687','2023-11-15','05:50:11'),(50,3439,'Salmon','Finfish',8,800,'Vedant Kadam','8765345678','2023-12-15','05:51:16'),(51,3439,'Anchovies','small',3,288,'Vedant Kadam','8765345678','2023-12-15','05:51:16'),(52,6292,'Bombay Duck','small',2,104,'Amit Ambavkar','8379987749','2023-12-16','10:50:04'),(53,6292,'Anchovies','small',1,96,'Amit Ambavkar','8379987749','2023-12-16','10:50:04'),(54,3862,'Shrimp','Shellfish',2,110,'Amit Ambavkar','8379987749','2023-12-16','12:12:23'),(55,3862,'Cod','Large',4,356,'Amit Ambavkar','8379987749','2023-12-16','12:12:23');
/*!40000 ALTER TABLE `sales_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_table`
--

DROP TABLE IF EXISTS `vendor_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor_table` (
  `Tran_id` int NOT NULL AUTO_INCREMENT,
  `v_name` varchar(255) DEFAULT NULL,
  `v_contact` varchar(255) DEFAULT NULL,
  `v_address` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `quantity` float DEFAULT NULL,
  `price` int DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`Tran_id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_table`
--

LOCK TABLES `vendor_table` WRITE;
/*!40000 ALTER TABLE `vendor_table` DISABLE KEYS */;
INSERT INTO `vendor_table` VALUES (65,'Vendor_461','4898674642','17,Market Road','Cod','Large','Large Size, dried and salted',88,16800,'2023-07-15'),(66,'Vendor_115','9867321567','84,Beach lane','Anchovies','small','small size , dried and salted',61,11716,'2023-08-15'),(67,'Vendor_292','8796543217','51, Beach Lane','Bombay Duck','small','Bombay Duck- small size dried and salted',98,8605,'2023-09-15'),(68,'vendor_393','4523768965','77,Main Street','cod','small','cod-small size dried and salted',50,2646,'2023-10-15'),(69,'Vendor_923','7889786745','75,Market road','shrimp','medium','shrimp- medium size, dried and salted',78,7555,'2023-11-15'),(70,'Vendor_584','8372839837','8 main street','Herring','medium','Herring- medium size dried and salted',75,6825,'2023-12-15'),(71,'Vendor_430','8734560932','79, Market Road','Anchovies','small','Anchovies- small size, dried and salted',94,11140,'2023-12-15'),(73,'vendor_87','8308645543','near chavdi nka','Tuna','small','Tuna - smal and dried',10,1000,'2023-12-16'),(74,'vendor2','7834873833','near chavdi naka','Tuna','large','Large Tuna',30,4000,'2023-12-16');
/*!40000 ALTER TABLE `vendor_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `worker_table`
--

DROP TABLE IF EXISTS `worker_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `worker_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `salary` int DEFAULT NULL,
  `payment_done` int DEFAULT NULL,
  `payment_pending` int DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `worker_table`
--

LOCK TABLES `worker_table` WRITE;
/*!40000 ALTER TABLE `worker_table` DISABLE KEYS */;
INSERT INTO `worker_table` VALUES (1,'Rohan Thakur','123456789','rohit@gmail.com','Superwiser','near vadgaon',300000,1300,298700,'2023-11-17'),(2,'Jayesh lad','8327252888','Jayesh@gmail.com','worker','near vashi',200000,0,200000,'2023-12-15');
/*!40000 ALTER TABLE `worker_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-17 11:48:58
