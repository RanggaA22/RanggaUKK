-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 01, 2024 at 08:06 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `bayar`
--

CREATE TABLE `bayar` (
  `id_bayar` bigint(20) NOT NULL,
  `nominal_uang` bigint(20) NOT NULL,
  `total_bayar` bigint(20) NOT NULL,
  `waktu_bayar` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bayar`
--

INSERT INTO `bayar` (`id_bayar`, `nominal_uang`, `total_bayar`, `waktu_bayar`) VALUES
(11, 5000, 2000, '2024-02-27 04:23:56'),
(22, 10000, 5000, '2024-02-27 00:51:24'),
(44, 30000, 25000, '2024-02-27 06:30:39'),
(55, 11000, 10000, '2024-02-27 06:33:10'),
(66, 10000, 7500, '2024-02-27 06:35:09'),
(77, 20000, 20000, '2024-02-27 06:54:41'),
(1025, 20000, 15000, '2024-02-27 00:53:47'),
(1234, 30000, 25000, '2024-03-01 02:35:17'),
(2222, 30000, 25000, '2024-02-29 01:17:42'),
(4944, 10000, 5000, '2024-02-28 08:54:13'),
(5697, 67567657, 45000, '2024-03-01 03:30:49'),
(6520, 100000, 50000, '2024-03-01 04:44:00'),
(7254, 50000, 5000, '2024-03-01 06:49:19'),
(7533, 10000, 10000, '2024-02-29 00:51:35'),
(9065, 20000, 10000, '2024-02-29 01:22:26');

-- --------------------------------------------------------

--
-- Table structure for table `tb_detailpjl`
--

CREATE TABLE `tb_detailpjl` (
  `id_detail` int(11) NOT NULL,
  `penjualan_id` int(11) NOT NULL,
  `produk_id` int(11) NOT NULL,
  `jumlah_produk` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_detailpjl`
--

INSERT INTO `tb_detailpjl` (`id_detail`, `penjualan_id`, `produk_id`, `jumlah_produk`) VALUES
(37, 22, 22, 1),
(38, 1025, 22, 3),
(39, 11, 11, 2),
(40, 44, 33, 5),
(41, 55, 44, 10),
(42, 66, 55, 15),
(43, 77, 44, 20),
(44, 4944, 22, 1),
(45, 7533, 11, 2),
(46, 2222, 22, 5),
(47, 9065, 4829, 2),
(48, 1234, 55, 5),
(49, 5697, 55, 9),
(50, 6520, 22, 10),
(51, 9041, 33, 2),
(52, 7254, 44, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_telepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat`, `no_telepon`) VALUES
(1, 'koyur', 'jenangan', '087755582369'),
(2, 'pino', 'fuji', '0899765895567'),
(8585, 'tthfg', 'hbfghbf', '5685'),
(9613, 'udin', 'jenangan', '097766665645'),
(454545, 'china', 'durian runtuh', '624456667888');

-- --------------------------------------------------------

--
-- Table structure for table `tb_penjualan`
--

CREATE TABLE `tb_penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `tanggal_penjualan` date NOT NULL DEFAULT current_timestamp(),
  `pelanggan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_penjualan`
--

INSERT INTO `tb_penjualan` (`id_penjualan`, `tanggal_penjualan`, `pelanggan_id`) VALUES
(11, '2024-02-03', 2),
(22, '2024-02-01', 1),
(44, '2024-02-07', 1),
(55, '2024-02-07', 1),
(66, '2024-02-07', 2),
(77, '2024-02-07', 1),
(123, '2024-03-07', 0),
(1002, '2024-03-01', 0),
(1025, '2024-02-01', 1),
(1234, '2024-03-01', 1),
(2222, '2024-02-28', 1),
(4675, '2024-03-07', 1),
(4944, '2024-02-09', 1),
(5365, '2024-03-07', 0),
(5622, '2024-03-07', 0),
(5697, '2024-03-04', 8585),
(6520, '2024-03-05', 2),
(7254, '2024-03-07', 0),
(7361, '2024-03-05', 8585),
(7533, '2024-02-01', 1),
(7841, '2024-03-01', 9613),
(9041, '2024-03-05', 2),
(9065, '2024-02-29', 9613),
(9490, '2024-03-07', 0),
(9999, '2024-03-07', 0),
(999999, '2024-03-07', 0),
(9000000, '2024-03-07', 0),
(2147483647, '2024-03-07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE `tb_produk` (
  `id_produk` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `satuan` varchar(200) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_produk`
--

INSERT INTO `tb_produk` (`id_produk`, `nama`, `satuan`, `harga`, `stok`) VALUES
(11, 'bumbu opor ayam', '/bungkus', 5000, 196),
(22, 'bumbu balado telur', '/bungkus', 5000, 34),
(33, 'bumbu oseng-oseng kangkung', '/bungkus', 5000, 98),
(44, 'bumbu Gado-gado', '/bungkus', 5000, 69),
(55, 'bumbu ayam goreng', '/bungkus', 5000, 121),
(789, 'bumbu rica-rica ayam', '/bungkus', 7000, 70),
(999, 'bumbu rendang', '/bungkus', 10000, 50),
(3175, 'bumbu cumi cumi pedas', '/bungkus', 5000, 40),
(4200, 'bumbu sayur capcai', '/bungkus', 7000, 30),
(4829, 'bumbu sate', '/bungkus', 5000, 98),
(6984, 'dodol garut', '/bungkus', 2000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nama`, `username`, `password`, `level`) VALUES
(9, 'Admin', 'admin@gmail.com', 'admin', 'admin'),
(10, 'kasir', 'kasir@gmail.com', 'kasir', 'kasir'),
(14, 'rangga', 'koyur@gmail.com', '123', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bayar`
--
ALTER TABLE `bayar`
  ADD PRIMARY KEY (`id_bayar`);

--
-- Indexes for table `tb_detailpjl`
--
ALTER TABLE `tb_detailpjl`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `penjualan_id` (`penjualan_id`,`produk_id`),
  ADD KEY `produk_id` (`produk_id`);

--
-- Indexes for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `tb_penjualan`
--
ALTER TABLE `tb_penjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `pelanggan` (`pelanggan_id`),
  ADD KEY `pelanggan_id` (`pelanggan_id`);

--
-- Indexes for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bayar`
--
ALTER TABLE `bayar`
  MODIFY `id_bayar` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9066;

--
-- AUTO_INCREMENT for table `tb_detailpjl`
--
ALTER TABLE `tb_detailpjl`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tb_penjualan`
--
ALTER TABLE `tb_penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483648;

--
-- AUTO_INCREMENT for table `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8095;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_detailpjl`
--
ALTER TABLE `tb_detailpjl`
  ADD CONSTRAINT `tb_detailpjl_ibfk_1` FOREIGN KEY (`produk_id`) REFERENCES `tb_produk` (`id_produk`) ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_detailpjl_ibfk_2` FOREIGN KEY (`penjualan_id`) REFERENCES `tb_penjualan` (`id_penjualan`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
