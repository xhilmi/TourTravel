-- MariaDB dump 10.19  Distrib 10.5.16-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: thanos_tour
-- ------------------------------------------------------
-- Server version	10.5.16-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foto` varchar(50) NOT NULL,
  `user_admin` varchar(20) NOT NULL,
  `pass_admin` varchar(20) NOT NULL,
  `level` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_admin`
--

LOCK TABLES `tbl_admin` WRITE;
/*!40000 ALTER TABLE `tbl_admin` DISABLE KEYS */;
INSERT INTO `tbl_admin` VALUES (4,'optimues.jpg','admin','admin','1','admin'),(8,'optimues.jpg','operator','operator','2','operator');
/*!40000 ALTER TABLE `tbl_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_bukti`
--

DROP TABLE IF EXISTS `tbl_bukti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_bukti` (
  `id_bukti` int(11) NOT NULL AUTO_INCREMENT,
  `id_pesan` int(11) NOT NULL,
  `file` text NOT NULL,
  PRIMARY KEY (`id_bukti`),
  KEY `id_pesan` (`id_pesan`),
  CONSTRAINT `tbl_bukti_ibfk_1` FOREIGN KEY (`id_pesan`) REFERENCES `tbl_pesan` (`id_pesan`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bukti`
--

LOCK TABLES `tbl_bukti` WRITE;
/*!40000 ALTER TABLE `tbl_bukti` DISABLE KEYS */;
INSERT INTO `tbl_bukti` VALUES (29,46,'optimues.jpg');
/*!40000 ALTER TABLE `tbl_bukti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_hotel`
--

DROP TABLE IF EXISTS `tbl_hotel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_hotel` (
  `id_hotel` int(11) NOT NULL AUTO_INCREMENT,
  `hotel` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `ket_hotel` text NOT NULL,
  `foto` varchar(50) NOT NULL,
  PRIMARY KEY (`id_hotel`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_hotel`
--

LOCK TABLES `tbl_hotel` WRITE;
/*!40000 ALTER TABLE `tbl_hotel` DISABLE KEYS */;
INSERT INTO `tbl_hotel` VALUES (10,'Adinda Hotel',159000,'<p>Hotel lainnya yang bisa dijadikan tempat menginap saat liburan di kawasan Pantai Parangtritis adalah Adinda Hotel.</p>\r\n<p><br />Jaraknya sekitar 800 meter dari pantai dan bisa ditempuh dalam waktu 13 menit berjalan kaki.</p>\r\n<p><br />Alamat Hotel Adinda ada di Jalan Parangtritis - Panggang Nomor 2010, Mancingan, Parangtritis, Kecamatan Kretek, Kabupaten Bantul.</p>\r\n<p><br />Fasilitas yang didapatkan para tamu, di antaranya AC, parkir gratis, WiFi, minuman kemasan, dan resepsionis 24 jam.</p>\r\n<p><br />Adapun interior hotelnya didominasi oleh kayu, mulai dari dinding hingga perabotannya.</p>\r\n<p><br />Harga sewa per malamnya mulai dari Rp 159.000 untuk kamar dengan tipe Superior.</p>','adinda-hotel.png'),(11,'OYO 1533 The Paris Ocean',158000,'<p>Penginapan satu ini berlokasi cukup dekat dengan Pantai Parangtritis, yaitu sekitar 600 meter dan bisa ditempuh dengan jalan kaki selama kira-kira tujuh menit.</p>\r\n<p>Harga yang ditawarkan jika memilih menginap di tempat yang beralamat di Jalan Parangtritis Nomor KM-28, Kecamatan Kretek, Kabupaten Bantul, ini cukup terjangkau. Biaya sewa per malamnya mulai dari Rp 158.000.</p>\r\n<p>Fasilitas yang ditawarkan, di antaranya AC, televisi, kasur ukuran queen, dan kamar mandi pribadi.</p>','oyo.png'),(12,'Villa Alcheringa',850000,'<p>Villa Alcheringa adalah tempat istirahat pribadi dengan empat kamar tidur yang ada di Mancingan, Parangtritis, Kecamatan Kretek, Kabupaten Bantul.</p>\r\n<p>Jaraknya dari Pantai Parangtritis tak terlalu jauh atau sekitar satu km.</p>\r\n<p>Wisatawan bisa mencapainya dalam waktu kira-kira lima menit naik kendaraan.</p>\r\n<p>Arsitektur vila ini seperti rumah joglo dengan kolam renang dan halaman.</p>\r\n<p>Tarif menginap di tempat ini, berdasarkan situs resminya, mulai dari Rp 850.000 per malamnya.</p>','villa.png'),(13,'Queen of The South Resort',1200000,'<p>Jarak dari Queen of the South Resort dari Pantai Parangtritis sekitar dua km, serta bisa ditempuh dalam waktu kurang lebih delapan menit jika naik kendaraan.</p>\r\n<p>Konsep yang diusung oleh Queen of The South Resort bertemakan Jawa dan Bali dengan gaya tradisional.</p>\r\n<p>Nuansa Bali dapat terlihat dari interior kamarnya yang sebagaian besar menghadap langsung ke arah Laut Selatan.</p>\r\n<p>Alamat resor ini ada di Jalan Parangrejo Nomor 13/RW 13, Parang Reja, Girijati, Purwosari, Kabupaten Gunung Kidul.</p>\r\n<p>Tarif per malamnya bervariasi berdasarkan situs web perjalanan yang dipilih para wisatawan, yaitu mulai dari Rp 1,2 juta.</p>\r\n<p>&nbsp;</p>','queen.jpeg'),(14,'Edge Resort Yogyakarta',1300000,'<p>Pilihan tempat istirahat di dekat Pantai Parangtritis selanjutnya adalah Edge Resort Yogyakarta.</p>\r\n<p>Resor yang berlokasi di Jalan Gua Langse, Area Hutan, Giricahyo, Purwosari, ini berjarak sekitar tiga km dari Pantai Parangtritis.</p>\r\n<p>Jika tamu ingin menuju ke kawasan Pantai Parangtritis, mereka membutuhkan waktu berkendara kira-kira 12 menit.</p>\r\n<p>Kamar-kamar di Edge Resort Yogyakarta berhiaskan batu alam di bagian lantai dan dindingnya.</p>\r\n<p>Kamarnya memiliki teras yang menghadap langsung pantai dengan tempat duduk dari kayu untuk bersantai.</p>\r\n<p>Harga menginap per malamnya berbeda tergantung situs web perjalanan, dimulai dari Rp 1,3 juta.</p>','edge-min(1).png');
/*!40000 ALTER TABLE `tbl_hotel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_paket`
--

DROP TABLE IF EXISTS `tbl_paket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_paket` (
  `id_paket` int(11) NOT NULL AUTO_INCREMENT,
  `nama_paket` varchar(50) NOT NULL,
  `harga_paket` int(11) NOT NULL,
  `ket_paket` text NOT NULL,
  PRIMARY KEY (`id_paket`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_paket`
--

LOCK TABLES `tbl_paket` WRITE;
/*!40000 ALTER TABLE `tbl_paket` DISABLE KEYS */;
INSERT INTO `tbl_paket` VALUES (1,'Paket Paling Hemat',250000,'<p><span style=\"color: #ffcc00;\">Xenia + Pantai Parangtritis +&nbsp;Penginapan&nbsp;<em>(2 Hari 1 Malam)</em></span></p>'),(2,'Paket Pantai Hemat',600000,'<p><span style=\"color: #ffcc00;\">Avanza + Pantai&nbsp;<em>(Parangtritis, Parangkusumo, Depok)&nbsp;</em>+ Penginapan&nbsp;<em>(3 Hari 2 Malam)</em><br /></span></p>\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: 494px; top: 25.3229px;\">&nbsp;</div>'),(5,'Paket Pantai Lengkap',1000000,'<p><span style=\"color: #ffcc00;\">Avanza <em>(Driver)</em> + Pantai <em>(Parangtritis, Parangkusumo, Depok)</em> + Penginapan <em>(2 Hari 1 Malam)</em></span></p>'),(6,'Paket Tahun Baru',750000,'<p><span style=\"color: #ffcc00;\">Avanza&nbsp;<em>(Driver)</em>&nbsp;+&nbsp;Heha&nbsp;<em>(Sky View, Ocean View)</em>&nbsp;+ Penginapan&nbsp;<em>(2 Hari 1 Malam)</em></span></p>'),(7,'Paket Grand Master',3000000,'<p><span style=\"color: #ffcc00;\">Avanza&nbsp;<em>(Driver)</em>&nbsp;+&nbsp;Tour Guide + Pantai&nbsp;<em>(Parangtritis, Parangkusumo, Depok) + </em>Heha <em>(Sky View, Ocean View)</em> + Obelix Hill&nbsp;+ Penginapan&nbsp;<em>(3 Hari 2 Malam)</em></span></p>'),(8,'Paket Ava Aza',550000,'<p><span style=\"color: #ffcc00;\">Avanza + Bensin +&nbsp;Snack + Air Mineral&nbsp;+ Pantai <em>(Parangtritis)</em> + Penginapan&nbsp;<em>(3 Hari 2 Malam)</em></span></p>'),(9,'Paket Mini Max',4150000,'<p><span style=\"color: #ffcc00;\">Bus <em>(Driver)</em>&nbsp;+ Tour Guide + Bensin +&nbsp;Snack + Air Mineral + Pantai <em>(Parangtritis, Parangkusumo, Depok)&nbsp;+ </em>Penginapan&nbsp;<em><em>(2 Hari 1 Malam)</em></em></span></p>\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: 80px; top: 25.3229px;\">&nbsp;</div>'),(10,'Paket Hai Es',2250000,'<p><span style=\"color: #ffcc00;\"><em>Hiace Premio (Driver)</em>&nbsp;+ Tour Guide + Bensin +&nbsp;Snack + Air Mineral + Pantai&nbsp;<em>(Parangtritis, Parangkusumo, Depok)&nbsp;+ </em>Penginapan&nbsp;<em><em>(2 Hari 1 Malam)</em></em></span></p>');
/*!40000 ALTER TABLE `tbl_paket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pesan`
--

DROP TABLE IF EXISTS `tbl_pesan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pesan` (
  `id_pesan` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `id_paket` int(11) NOT NULL,
  `id_hotel` int(11) NOT NULL,
  `tgl_pesan` date NOT NULL,
  `tgl_tour` date NOT NULL,
  `status` char(2) NOT NULL DEFAULT 'S1',
  PRIMARY KEY (`id_pesan`),
  KEY `id_user` (`id_user`),
  KEY `id_paket` (`id_paket`),
  KEY `id_hotel` (`id_hotel`),
  KEY `id_paket_2` (`id_paket`),
  KEY `id_paket_3` (`id_paket`),
  CONSTRAINT `tbl_pesan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_pesan_ibfk_2` FOREIGN KEY (`id_paket`) REFERENCES `tbl_paket` (`id_paket`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tbl_pesan_ibfk_3` FOREIGN KEY (`id_hotel`) REFERENCES `tbl_hotel` (`id_hotel`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pesan`
--

LOCK TABLES `tbl_pesan` WRITE;
/*!40000 ALTER TABLE `tbl_pesan` DISABLE KEYS */;
INSERT INTO `tbl_pesan` VALUES (46,23,1,10,'2023-06-24','2023-06-30','S2');
/*!40000 ALTER TABLE `tbl_pesan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `foto` varchar(50) NOT NULL,
  `nama_user` varchar(30) NOT NULL,
  `email_user` varchar(50) NOT NULL,
  `no_hp` varchar(14) NOT NULL,
  `no_rek` varchar(50) NOT NULL,
  `nama_rek` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(12) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jekel` varchar(1) NOT NULL,
  `alamat` text NOT NULL,
  PRIMARY KEY (`id_user`),
  KEY `id_user` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (23,'optimues.jpg','user','user@gmail.com','085790365889','8899987','user','user','user','1999-01-01','L','Yogyakarta');
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tempat`
--

DROP TABLE IF EXISTS `tempat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tempat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `konten` varchar(500) NOT NULL,
  `gambar` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempat`
--

LOCK TABLES `tempat` WRITE;
/*!40000 ALTER TABLE `tempat` DISABLE KEYS */;
INSERT INTO `tempat` VALUES (2,'Pantai Depok','<p>Pantai Depok adalah salah satu destinasi wisata di Bantul, Yogyakarta, Indonesia. Terkenal dengan keindahan pantainya yang eksotis, pasir putihnya yang lembut, serta ombaknya yang cocok untuk berselancar. Di sekitar pantai, pengunjung dapat menemukan berbagai fasilitas wisata seperti restoran, penginapan, dan toko-toko souvenir.</p>','depok.jpg'),(3,'Pantai Parangkusumo','<p>Pantai Parangkusumo terletak di Yogyakarta, Indonesia. Terkenal dengan pemandangan matahari terbit yang indah, pantai ini sering digunakan untuk upacara tradisional. Dengan legenda Ratu Pantai Selatan, pantai ini menjadi destinasi wisata yang menarik bagi pecinta alam dan budaya. Cocok untuk menikmati keindahan alam sekaligus merasakan kearifan lokal.</p>','parangkusumo.jpg'),(5,'Heha Sky View','<p>Heha Sky View adalah destinasi wisata baru di Yogyakarta, Indonesia yang menawarkan pengalaman menakjubkan berupa terbang di atas ketinggian. Pengunjung dapat menikmati flying fox dan sky bridge sambil menikmati pemandangan indah sekitar Heha Sky View. Tempat ini cocok bagi pengunjung yang mencari sensasi baru dan menantang di Yogyakarta.</p>','hehaskyview.jpg'),(10,'Obelix Hill','<p>Obelix Hill adalah salah satu tempat wisata yang terletak di Bantul, Yogyakarta, Indonesia. Dikenal dengan keindahan panorama pegunungan yang menakjubkan, pengunjung dapat menikmati berbagai kegiatan seperti berfoto dan melihat sunrise atau sunset. Obelix Hill adalah tempat yang tepat untuk menikmati keindahan alam Yogyakarta.</p>','obelixhills.jpg'),(14,'Heha Ocean View','<p>Heha Ocean View adalah destinasi wisata baru di Yogyakarta, Indonesia. Terletak di dataran tinggi Sambi, tempat ini menawarkan pemandangan laut yang menakjubkan dari ketinggian. Selain itu, pengunjung juga dapat menikmati berbagai kegiatan seperti flying fox dan sky bridge. Heha Ocean View adalah tempat yang cocok untuk menikmati keindahan alam Yogyakarta.</p>','hehaoceanview.jpg'),(15,'Pantai Parangtritis','<p>Pantai Parangtritis di Yogyakarta, Indonesia memiliki pesona yang menawan dengan pasir putih dan ombak besar. Selain menikmati pantai, pengunjung juga dapat menikmati kuliner khas dan tradisi turun temurun seperti upacara Labuhan dan Jalan Laku Pandan. Cocok untuk menikmati keindahan alam dan budaya di daerah Istimewa Yogyakarta.</p>','parangtritis.jpg');
/*!40000 ALTER TABLE `tempat` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-24 15:42:02
