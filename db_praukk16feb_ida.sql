-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2023 at 07:29 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_praukk16feb_ida`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_bahan`
--

CREATE TABLE `tb_bahan` (
  `id_bahan` int(10) NOT NULL,
  `nama_bahan` varchar(30) NOT NULL,
  `jenis_bahan` varchar(50) NOT NULL,
  `stok` int(10) NOT NULL,
  `harga` int(10) NOT NULL,
  `kondisi` enum('baik','rusak') NOT NULL,
  `tgl_masuk` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_bahan`
--

INSERT INTO `tb_bahan` (`id_bahan`, `nama_bahan`, `jenis_bahan`, `stok`, `harga`, `kondisi`, `tgl_masuk`) VALUES
(8, 'tempe', 'kolll', 123, 2000, 'rusak', '0000-00-00'),
(9, 'sayur', 'kursi', 23455, 500, 'rusak', '2023-02-28'),
(10, 'sepatu', 'adidas', 2300, 3000, 'baik', '2023-02-16');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(10) NOT NULL,
  `nama_user` varchar(30) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `id_bahan` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama_user`, `jabatan`, `id_bahan`) VALUES
(8, 'bella', 'swasta', 8),
(9, 'bunga', 'kerja', 9),
(10, 'bella', 'kuliah', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_bahan`
--
ALTER TABLE `tb_bahan`
  ADD PRIMARY KEY (`id_bahan`),
  ADD KEY `stok` (`stok`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_bahan` (`id_bahan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_bahan`
--
ALTER TABLE `tb_bahan`
  MODIFY `id_bahan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD CONSTRAINT `tb_user` FOREIGN KEY (`id_bahan`) REFERENCES `tb_bahan` (`id_bahan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
