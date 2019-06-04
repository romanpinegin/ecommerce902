-- MySQL dump 10.13  Distrib 5.7.26, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: ecom902
-- ------------------------------------------------------
-- Server version	5.7.26-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Бытовая техника'),(2,'Продукты');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback_request`
--

DROP TABLE IF EXISTS `feedback_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` int(11) NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback_request`
--

LOCK TABLES `feedback_request` WRITE;
/*!40000 ALTER TABLE `feedback_request` DISABLE KEYS */;
INSERT INTO `feedback_request` VALUES (1,'Роман','roman.pinegin@gmail.com',1,'aasda'),(2,'Роман','roman.pinegin@gmail.com',1,'dasdasdadasdssdadasd'),(3,'Роман Пинегин','roman.pinegin@gmail.com',2,'vbjhvdasxchjnmccad');
/*!40000 ALTER TABLE `feedback_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration_versions`
--

LOCK TABLES `migration_versions` WRITE;
/*!40000 ALTER TABLE `migration_versions` DISABLE KEYS */;
INSERT INTO `migration_versions` VALUES ('20190423172315','2019-04-23 17:27:14'),('20190423174400','2019-04-23 17:45:44'),('20190430165928','2019-04-30 17:00:24'),('20190430171315','2019-04-30 17:13:33'),('20190502231714','2019-05-02 23:17:40'),('20190503002505','2019-05-03 00:25:33'),('20190503163041','2019-05-03 16:30:54'),('20190507163623','2019-05-07 16:36:37'),('20190507175036','2019-05-07 17:50:50'),('20190513170049','2019-05-13 17:01:01'),('20190513174958','2019-05-13 17:50:09');
/*!40000 ALTER TABLE `migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `is_paid` tinyint(1) NOT NULL,
  `amount` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F5299398A76ED395` (`user_id`),
  CONSTRAINT `FK_F5299398A76ED395` FOREIGN KEY (`user_id`) REFERENCES `site_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,NULL,'2019-05-10 14:30:02',1,0,187200),(2,NULL,'2019-05-11 00:03:28',1,0,251800),(3,NULL,'2019-05-12 17:50:01',1,0,1441800),(4,NULL,'2019-05-12 22:25:04',1,0,2321800),(5,NULL,'2019-05-13 21:03:56',1,0,2321800),(6,NULL,'2019-05-14 23:17:16',1,0,20000),(7,NULL,'2019-05-20 23:34:11',1,0,3941800),(8,NULL,'2019-05-21 19:13:16',1,0,2321800),(9,NULL,'2019-05-21 20:58:30',1,0,2321800);
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_item`
--

DROP TABLE IF EXISTS `order_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `count` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_52EA1F094584665A` (`product_id`),
  KEY `IDX_52EA1F098D9F6D38` (`order_id`),
  CONSTRAINT `FK_52EA1F094584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `FK_52EA1F098D9F6D38` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_item`
--

LOCK TABLES `order_item` WRITE;
/*!40000 ALTER TABLE `order_item` DISABLE KEYS */;
INSERT INTO `order_item` VALUES (1,1,4,1800,7200,1),(2,2,1,20000,20000,1),(3,3,1,160000,160000,1),(4,1,1,1800,1800,2),(5,2,1,20000,20000,2),(6,3,1,160000,160000,2),(7,4,1,70000,70000,2),(8,1,1,1800,1800,3),(9,2,1,20000,20000,3),(10,3,8,160000,1280000,3),(11,4,2,70000,140000,3),(12,3,1,1600000,1600000,4),(13,4,1,700000,700000,4),(14,2,1,20000,20000,4),(15,1,1,1800,1800,4),(16,1,1,1800,1800,5),(17,2,1,20000,20000,5),(18,3,1,1600000,1600000,5),(19,4,1,700000,700000,5),(20,2,1,20000,20000,6),(21,1,1,1800,1800,7),(22,2,2,20000,40000,7),(23,3,2,1600000,3200000,7),(24,4,1,700000,700000,7),(36,1,1,1800,1800,8),(37,2,1,20000,20000,8),(38,3,1,1600000,1600000,8),(39,4,1,700000,700000,8),(40,1,1,1800,1800,9),(41,2,1,20000,20000,9),(42,3,1,1600000,1600000,9),(43,4,1,700000,700000,9);
/*!40000 ALTER TABLE `order_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `price` int(11) NOT NULL,
  `count` int(11) DEFAULT NULL,
  `is_top` tinyint(1) NOT NULL DEFAULT '0',
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `image_original_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'Вода Моршиньска 0.5','Водичка',1800,3,0,'1','5cd9aec943eda738938652.jpg','2019-05-21 20:58:30','voda-mineralnaya-morshinska-n-gaz-05l.jpg'),(2,'Мышь Vinga','Мышка',20000,NULL,1,'2','74553462_images_11264472762.jpg','2019-05-21 20:58:30',NULL),(3,'Ноутбук HP EliteBook Folio 9470m','Ноутбук неплохой с подсветочкой)))',1600000,NULL,0,'2','5cd9af8060275062911587.jpg','2019-05-21 20:58:32','hpelite.jpg'),(4,'Смартфон','IPhone 6s 32GB',700000,NULL,0,'2','5cd9afaf6c485071495932.jpeg','2019-05-21 20:58:33','iphone.jpeg');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `IDX_CDFC73564584665A` (`product_id`),
  KEY `IDX_CDFC735612469DE2` (`category_id`),
  CONSTRAINT `FK_CDFC735612469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_CDFC73564584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (1,2),(2,1),(3,1),(4,1);
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_user`
--

DROP TABLE IF EXISTS `site_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username_canonical` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_canonical` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_B6096BB092FC23A8` (`username_canonical`),
  UNIQUE KEY `UNIQ_B6096BB0A0D96FBF` (`email_canonical`),
  UNIQUE KEY `UNIQ_B6096BB0C05FB297` (`confirmation_token`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_user`
--

LOCK TABLES `site_user` WRITE;
/*!40000 ALTER TABLE `site_user` DISABLE KEYS */;
INSERT INTO `site_user` VALUES (1,'admin','admin','admin@supershop@com','admin@supershop@com',1,NULL,'$2y$13$ULzN55dPn5C0Lg5mSlErxOIY1I8djlT/aoo/1CCUkDoflpDYetVby','2019-05-21 20:46:28',NULL,NULL,'a:1:{i:0;s:10:\"ROLE_ADMIN\";}');
/*!40000 ALTER TABLE `site_user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-04 19:43:40
