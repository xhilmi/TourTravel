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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_admin`
--

LOCK TABLES `tbl_admin` WRITE;
/*!40000 ALTER TABLE `tbl_admin` DISABLE KEYS */;
INSERT INTO `tbl_admin` VALUES (3,'Kuning.jpg','werert','qweqwewq','2','hhhj'),(4,'DSC02584-removebg-cropped.png','hilmi','hilmi','1','hilmi'),(6,'0d5e159404933b4185268a4d13c574ee.jpg','operator','operator','2','Pandu'),(7,'','yasaid','yasa123','1','Arnanda Nuryasa');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_bukti`
--

LOCK TABLES `tbl_bukti` WRITE;
/*!40000 ALTER TABLE `tbl_bukti` DISABLE KEYS */;
INSERT INTO `tbl_bukti` VALUES (19,32,'TMPDOODLE1483291958727.jpg'),(20,32,'TMPDOODLE1483291958727.jpg'),(26,41,'image.png'),(27,42,'image.png'),(28,43,'simage.png');
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_hotel`
--

LOCK TABLES `tbl_hotel` WRITE;
/*!40000 ALTER TABLE `tbl_hotel` DISABLE KEYS */;
INSERT INTO `tbl_hotel` VALUES (1,'Embe Enem Homestay',420000,'<p style=\"text-align: justify;\"><strong>Dirancang</strong> <em>untuk</em> wisata <img src=\"plugins/tinymce/plugins/emoticons/img/smiley-innocent.gif\" alt=\"\" />plesir dan bisnis, Campago Resort Hotel terletak strategis di Bukittinggi; salah satu daerah lokal terkenal. Hotel ini tidak terlalu jauh dari pusat kota, hanya dari sini dan umumnya hanya membutuhkan waktu 90 menit untuk mencapai bandara. Dengan lokasinya yang strategis, hotel ini menawarkan akses mudah ke destinasi yang wajib dilihat di kota ini.</p>\r\n<p style=\"text-align: justify;\">Fasilitas dan pelayanan yang ditawarkan Campago Resort Hotel menjaminkan penginapan menyenangkan bagi para tamu. Ketika menginap di properti yang luar biasa ini, para tamu dapat menikmati wi-fi di tempat-tempat umum, ruang merokok , concierge, layanan laundry, tur.</p>\r\n<p style=\"text-align: justify;\">Campago Resort Hotel memiliki 22 kamar tidur yang semuanya dirancang dengan citarasa tinggi untuk menyediakan kenyamanan seperti televisi, meja tulis, internet (wireless), AC, kulkas. Hotel ini menyediakan sejumlah fasilitas rekreasi seperti kolam (anak), taman, lapangan tenis, klub anak. Fasilitas super dan lokasi yang cemerlang menjadikan Campago Resort Hotel tempat yang sempurna untuk menikmati penginapan Anda selama di Bukittinggi.</p>\r\n<h3>Kebijakan Hotel</h3>\r\n<ul>\r\n<li>Minimum umur tamu adalah: 1 tahun</li>\r\n<li>Tamu berumur diatas 7 tahun dianggap sebagai tamu dewasa</li>\r\n<li>Ekstra bed tergantung pada kamar yang Anda pilih, silahkan cek kebijakan setiap kamar untuk detil lebih lanjut</li>\r\n</ul>\r\n<table style=\"margin-left: auto; margin-right: auto;\">\r\n<tbody>\r\n<tr>\r\n<td>Bayi dibawah 1 tahun</td>\r\n<td>Tidak diizinkan untuk menginap</td>\r\n</tr>\r\n<tr>\r\n<td>Bayi 1 tahun</td>\r\n<td>Menginap gratis dengan menggunakan tempat tidur yang tersedia. Catatan, biaya tambahan kemungkinan dikenakan jika Anda membutuhkan ranjang bayi</td>\r\n</tr>\r\n<tr>\r\n<td>Anak-anak 2-7 tahun</td>\r\n<td>Harus menggunakan ekstra bed</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3>Fasilitas Hotel</h3>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Fasilitas</td>\r\n<td>coffee shop, concierge, fasilitas rapat,layanan kamar, layanan kamar 24 jam, layanan laundry, restoran, ruang keluarga, ruang merokok, wi-fi di tempat-tempat umum, Wi-Fi gratis di semua kamar</td>\r\n</tr>\r\n<tr>\r\n<td>Olahraga dan Rekreasi</td>\r\n<td>klub anak, kolam (anak), lapangan tenis, taman</td>\r\n</tr>\r\n<tr>\r\n<td>Internet dalam Kamar</td>\r\n<td>Akses WiFi gratis</td>\r\n</tr>\r\n<tr>\r\n<td>Parkir</td>\r\n<td>tempat parkir mobil</td>\r\n</tr>\r\n</tbody>\r\n</table>','tugu.png'),(3,'De Laxston Hotel',250000,'<p style=\"text-align: justify;\">Dirancang untuk wisata plesir dan bisnis, Campago Resort Hotel terletak strategis di Bukittinggi; salah satu daerah lokal terkenal. Hotel ini tidak terlalu jauh dari pusat kota, hanya dari sini dan umumnya hanya membutuhkan waktu 90 menit untuk mencapai bandara. Dengan lokasinya yang strategis, hotel ini menawarkan akses mudah ke destinasi yang wajib dilihat di kota ini.</p>\r\n<p style=\"text-align: justify;\">Fasilitas dan pelayanan yang ditawarkan Campago Resort Hotel menjaminkan penginapan menyenangkan bagi para tamu. Ketika menginap di properti yang luar biasa ini, para tamu dapat menikmati wi-fi di tempat-tempat umum, ruang merokok , concierge, layanan laundry, tur.</p>\r\n<p style=\"text-align: justify;\">Campago Resort Hotel memiliki 22 kamar tidur yang semuanya dirancang dengan citarasa tinggi untuk menyediakan kenyamanan seperti televisi, meja tulis, internet (wireless), AC, kulkas. Hotel ini menyediakan sejumlah fasilitas rekreasi seperti kolam (anak), taman, lapangan tenis, klub anak. Fasilitas super dan lokasi yang cemerlang menjadikan Campago Resort Hotel tempat yang sempurna untuk menikmati penginapan Anda selama di Bukittinggi.</p>\r\n<h3>Kebijakan Hotel</h3>\r\n<ul>\r\n<li>Minimum umur tamu adalah: 1 tahun</li>\r\n<li>Tamu berumur diatas 7 tahun dianggap sebagai tamu dewasa</li>\r\n<li>Ekstra bed tergantung pada kamar yang Anda pilih, silahkan cek kebijakan setiap kamar untuk detil lebih lanjut</li>\r\n</ul>\r\n<table style=\"margin-left: auto; margin-right: auto;\">\r\n<tbody>\r\n<tr>\r\n<td>Bayi dibawah 1 tahun</td>\r\n<td>Tidak diizinkan untuk menginap</td>\r\n</tr>\r\n<tr>\r\n<td>Bayi 1 tahun</td>\r\n<td>Menginap gratis dengan menggunakan tempat tidur yang tersedia. Catatan, biaya tambahan kemungkinan dikenakan jika Anda membutuhkan ranjang bayi</td>\r\n</tr>\r\n<tr>\r\n<td>Anak-anak 2-7 tahun</td>\r\n<td>Harus menggunakan ekstra bed</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3>Fasilitas Hotel</h3>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Fasilitas</td>\r\n<td>coffee shop, concierge, fasilitas rapat,layanan kamar, layanan kamar 24 jam, layanan laundry, restoran, ruang keluarga, ruang merokok, wi-fi di tempat-tempat umum, Wi-Fi gratis di semua kamar</td>\r\n</tr>\r\n<tr>\r\n<td>Olahraga dan Rekreasi</td>\r\n<td>klub anak, kolam (anak), lapangan tenis, taman</td>\r\n</tr>\r\n<tr>\r\n<td>Internet dalam Kamar</td>\r\n<td>Akses WiFi gratis</td>\r\n</tr>\r\n<tr>\r\n<td>Parkir</td>\r\n<td>tempat parkir mobil</td>\r\n</tr>\r\n</tbody>\r\n</table>','Screenshot 2023-06-19 172614.png'),(5,'Hotel Patria Garden',290000,'<p style=\"text-align: justify;\">Jika apa yang Anda cari adalah hotel yang terletak strategis di Bukittinggi, carilah Hotel Benteng. Hanya 30. Km dari sini, hotel bintang 1 ini dapat secara mudah diakses dari bandara. Dengan lokasinya yang strategis, hotel ini menawarkan akses mudah ke destinasi yang wajib dilihat di kota ini.</p>\r\n<p style=\"text-align: justify;\">Hotel Benteng juga menawari banyak fasilitas untuk memperkaya penginapan Anda di Bukittinggi. Ketika menginap di properti yang luar biasa ini, para tamu dapat menikmati tur, wi-fi di tempat-tempat umum, layanan antar jemput, kotak penyimpanan aman, transfer bandara/hotel.</p>\r\n<p style=\"text-align: justify;\">Para tamu dapat memilih dari 37 kamar yang semuanya dilengkapi dengan atmosfir damai dan harmonis. Lagipula, beberapa persembahan rekreasi dari hotel ini akan menjamin Anda jauh dari kebosanan selama penginapan Anda. Apapun rencana kunjungan Anda, Hotel Benteng adalah pilihan bagus untuk penginapan di Bukittinggi.</p>\r\n<h3>Kebijakan Hotel</h3>\r\n<ul>\r\n<li>Tamu berumur diatas 10 tahun dianggap sebagai tamu dewasa.</li>\r\n<li>Ekstra bed tergantung pada kamar yang Anda pilih, silahkan cek kebijakan setiap kamar untuk detil lebih lanjut.</li>\r\n</ul>\r\n<table style=\"margin-left: auto; margin-right: auto;\">\r\n<tbody>\r\n<tr>\r\n<td>Bayi 0-1 tahun</td>\r\n<td>Menginap gratis dengan menggunakan tempat tidur yang tersedia. Catatan, biaya tambahan kemungkinan dikenakan jika Anda membutuhkan ranjang bayi</td>\r\n</tr>\r\n<tr>\r\n<td>Anak-anak 2-10 tahun</td>\r\n<td>Harus menggunakan ekstra bed</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3>Fasilitas Hotel</h3>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Fasilitas</td>\r\n<td>bar, fasilitas rapat, kotak penyimpanan aman, layanan antar jemput, layanan kamar, layanan kamar 24 jam, layanan laundry, restoran, sewa sepeda, transfer bandara/hotel, wi-fi di tempat-tempat umum, Wi-Fi gratis di semua kamar</td>\r\n</tr>\r\n<tr>\r\n<td>Internet dalam Kamar</td>\r\n<td>Akses WiFi gratis</td>\r\n</tr>\r\n<tr>\r\n<td>Parkir</td>\r\n<td>tempat parkir mobil</td>\r\n</tr>\r\n</tbody>\r\n</table>','garden.png'),(6,'Hotel Puri Perdana',185000,'<p style=\"text-align: justify;\">Ketika mengunjungi Bukittinggi, Anda akan merasa berada di rumah di Hotel Mitra Arena, dimana menawarkan akomodasi yang berkualitas dengan layanan luar biasa. Dari sini, para tamu dapat menikmati akses mudah ke semua hal yang dapat ditemukan di sebuah kota yang hidup. Dengan lokasinya yang strategis, hotel ini menawarkan akses mudah ke destinasi yang wajib dilihat di kota ini.</p>\r\n<p style=\"text-align: justify;\">Di Hotel Mitra Arena, setiap usaha dilakukan untuk membuat tamu merasa nyaman. Dan untuk hal ini, hotel menyediakan yang terbaik untuk pelayanan dan perlengkapannya. Hotel ini menawarkan sejumlah fasilitas di tempat untuk memuaskan segala jenis tamu.</p>\r\n<p style=\"text-align: justify;\">Sebagai tambahan, semua kamar tamu memiliki sejumlah kenyamanan seperti AC, kulkas, shower, televisi, ruangan bebas rokok untuk menyenangi semakin banyak tamu. Baik Anda adalah orang yang senang fitness atau hanya ingin bersantai setelah beraktivitas sepanjang hari, Anda akan dihibur dengan fasilitas rekreasi kelas atas seperti taman. Ketika Anda mencari penginapan yang nyaman di Bukittinggi, jadikanlah Hotel Mitra Arena rumah Anda ketika Anda berlibur.</p>\r\n<h3>Kebijakan Hotel</h3>\r\n<ul>\r\n<li>Tamu berumur diatas 12 tahun dianggap sebagai tamu dewasa.</li>\r\n<li>Ekstra bed tergantung pada kamar yang Anda pilih, silahkan cek kebijakan setiap kamar untuk detil lebih lanjut.</li>\r\n</ul>\r\n<table style=\"margin-left: auto; margin-right: auto;\">\r\n<tbody>\r\n<tr>\r\n<td>Bayi 0-2 tahun</td>\r\n<td>Menginap gratis dengan menggunakan tempat tidur yang tersedia. Catatan, biaya tambahan kemungkinan dikenakan jika Anda membutuhkan ranjang bayi</td>\r\n</tr>\r\n<tr>\r\n<td>Anak-anak 3-12 tahun</td>\r\n<td>Menginap gratis jika menggunakan ranjang yang tersedia.</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3>Fasilitas Hotel</h3>\r\n<table>\r\n<tbody>\r\n<tr>\r\n<td>Fasilitas</td>\r\n<td>restoran, ruang merokok</td>\r\n</tr>\r\n<tr>\r\n<td>Olahraga dan Rekreasi</td>\r\n<td>taman</td>\r\n</tr>\r\n<tr>\r\n<td>Parkir</td>\r\n<td>tempat parkir mobil</td>\r\n</tr>\r\n</tbody>\r\n</table>','puri.png'),(8,'Rumah Sendiri',250000,'<p>Sangant nyaman sekali</p>','20150101_093040A.jpg'),(9,'The Alana Hotel ',550000,'<p>Hotel Terbaik&nbsp;</p>','alanahotel.png');
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pesan`
--

LOCK TABLES `tbl_pesan` WRITE;
/*!40000 ALTER TABLE `tbl_pesan` DISABLE KEYS */;
INSERT INTO `tbl_pesan` VALUES (32,23,2,6,'2017-01-01','2017-01-20','S2'),(40,23,1,1,'2023-04-28','2023-04-07','S1'),(41,23,5,1,'2023-04-28','2023-05-24','S2'),(42,23,5,1,'2023-04-29','2030-10-22','S2'),(43,28,6,8,'2023-04-29','2023-08-01','S2'),(44,29,1,5,'2023-06-19','2023-06-06','S1'),(45,29,5,5,'2023-06-19','2023-06-29','S1');
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
INSERT INTO `tbl_user` VALUES (23,'an.jpg','hola','hola@gmail.com','085790365889','8899987','hola','hola','hola','1996-12-14','P','jalan wates blitar'),(27,'ungu.jpg','ungu','lelela@gmail.com','087654321','03-01644944','lele','lellebv','fortravel','2016-12-30','P','qwertyuiop'),(28,'Screenshot 2023-04-19 105215.png','master','master@master.com','018198191','10910981981','master','master','master','1999-03-10','L','master'),(29,'','yasaid','sosmed.yasa@gmail.com','','','','yasaid','yasa123','0000-00-00','L','');
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

-- Dump completed on 2023-06-24 14:36:38
