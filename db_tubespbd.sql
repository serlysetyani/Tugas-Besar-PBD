-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2020 at 11:09 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_tubespbd`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` varchar(20) NOT NULL,
  `id_penjual` varchar(20) NOT NULL,
  `nama_barang` varchar(100) NOT NULL,
  `jumlah_barang` int(5) NOT NULL,
  `kondisi` varchar(5) NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `id_penjual`, `nama_barang`, `jumlah_barang`, `kondisi`, `deskripsi`, `harga`) VALUES
('B001', 'S001', 'Iphone 12 Mini', 10, 'Baru', 'New Iphone series 2020 with nothing special', 22000000),
('B002', 'S003', 'Bluetooth Speaker Robot', 5, 'Baru', 'Speaker murah suara menggelegar', 75000),
('B003', 'S002', 'LP David Bowie Young Americans', 1, 'Bekas', 'used vinyl', 250000),
('B004', 'S004', 'Buku What if? by Randall Munroe', 7, 'Baru', 'What If?: Serious Scientific Answers to Absurd Hypothetical Questions is a non-fiction book by Randall Munroe in which the author answers hypothetical science questions sent to him by readers of his webcomic, xkcd.', 350000),
('B005', 'S004', 'Buku Xkcd: Volume 0', 3, 'Baru', 'Randall Munroe describesxkcd as a webcomic of romance, sarcasm, math, and language. While it\'s practically required reading in the geek community,xkcd fans are as varied as the comic\'s subject matter. This book creates laughs from science jokes on one page to relationship humor on another.', 300000),
('B006', 'S001', 'Iphone 7 Plus 64GB', 1, 'Bekas', 'Iphone bekas masih mulus penggunaan normal', 4000000),
('B007', 'S008', 'Figma Jin Sakai', 3, 'Baru', 'MISB and original from Japan Material: ABS,PVC Height: H=155mm (6.05in)', 1420000),
('B008', 'S008', 'Figma Nishibe Ai', 1, 'Baru', 'MISB and original from Japan Material: ABS,PVC Height: H=13cm (5.07in)', 1010000),
('B009', 'S010', 'Netflix Sharing Account', 100, 'Baru', 'Netflix Sharing Account murah', 35000),
('B010', 'S010', 'Spotify Premium', 100, 'Baru', 'Spotify Premium Murah', 25000);

-- --------------------------------------------------------

--
-- Table structure for table `jasa_pengiriman`
--

CREATE TABLE `jasa_pengiriman` (
  `id_jasapengiriman` varchar(20) NOT NULL,
  `nama_jasapengiriman` varchar(100) NOT NULL,
  `lama_pengiriman` varchar(20) NOT NULL,
  `tarif_ongkir` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jasa_pengiriman`
--

INSERT INTO `jasa_pengiriman` (`id_jasapengiriman`, `nama_jasapengiriman`, `lama_pengiriman`, `tarif_ongkir`) VALUES
('C001', 'JNE', '10 hari', 50000),
('C002', 'JNT', '9 hari', 45000),
('C003', 'Wahana Express', '8 hari', 40000),
('C004', 'Pahala Express', '7 hari', 35000),
('C005', 'Lion Parcel', '6 hari', 30000),
('C006', 'POS Indonesia', '5 hari', 25000),
('C007', 'Tiki', '4 hari', 20000),
('C008', 'Pandu Logistics', '3 hari', 15000),
('C009', 'First Logistics', '2 hari ', 10000),
('C010', 'Sicepat Express', '1 hari', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `metode_pembayaran`
--

CREATE TABLE `metode_pembayaran` (
  `id_pembayaran` varchar(20) NOT NULL,
  `no_rekening` int(20) NOT NULL,
  `metode_pembayaran` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `metode_pembayaran`
--

INSERT INTO `metode_pembayaran` (`id_pembayaran`, `no_rekening`, `metode_pembayaran`) VALUES
('PAY01', 123456789, 'Bank BNI'),
('PAY02', 234567890, 'Bank BCA'),
('PAY03', 345678901, 'Bank BRI'),
('PAY04', 45678901, 'Bank Mandiri'),
('PAY05', 567890123, 'Bank Maybank Indonesia'),
('PAY06', 678901234, 'Bank DBS'),
('PAY07', 789012345, 'Bank HSBC'),
('PAY08', 890123456, 'Bank Woori Saudara'),
('PAY09', 901234567, 'Bank Danamon'),
('PAY10', 987654321, 'Raboo Bank');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembeli`
--

CREATE TABLE `tb_pembeli` (
  `id_pembeli` varchar(20) NOT NULL,
  `nama_pembeli` varchar(100) NOT NULL,
  `no_telepon` int(13) NOT NULL,
  `alamat_pembeli` text NOT NULL,
  `provinsi` varchar(50) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `kode_pos` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pembeli`
--

INSERT INTO `tb_pembeli` (`id_pembeli`, `nama_pembeli`, `no_telepon`, `alamat_pembeli`, `provinsi`, `kota`, `kecamatan`, `kode_pos`) VALUES
('P001', 'Serly Setyani', 8661234, 'Pesona Bali No.9', 'Jawa Barat', 'Bandung', 'Dayeuhkolot', 40257),
('P002', 'Rania Azzahra', 8661235, 'Jl. Umayah No.123', 'Jawa Barat', 'Bandung', 'Dayeuhkolot', 40257),
('P003', 'Laura Imanuela Mustamu', 8661236, 'Jl. Umayah No.124', 'Jawa Barat', 'Bandung', 'Dayeuhkolot', 40257),
('P004', 'Lucinta Luna', 866666, 'Jl. Rusak No.666', 'Jakarta', 'Jakarta Barat', 'Tambora', 11220),
('P005', 'David Robert Jones', 861947, 'Jl. Gatot Subroto No.10', 'Bali', 'Karangasem', 'Kubu', 80853),
('P006', 'Anne Twist', 8661237, 'Dian Regency 57', 'Jawa Timur', 'Sidoarjo', 'Waru', 61256),
('P007', 'James Bond', 8660007, 'Bukit Darmo Golf Regency 007,\n', 'Jawa Timur', 'Surabaya', 'Dukuhpakis', 60226),
('P008', 'Michael Clifford', 8661239, 'Jl. Simpang Graha Famili I B', 'Jawa Timur', 'Surabaya', 'Wiyung', 60228),
('P009', 'Antono', 8664444, 'Soekarno Hatta 200', 'Jawa Timur', 'Malang', 'Lowokwaru', 65141),
('P010', 'Budi Namaku', 8668888, 'Jl. Menuju Surga 1', 'Jawa Barat', 'Bandung', 'Buah batu', 40287);

-- --------------------------------------------------------

--
-- Table structure for table `tb_penjual`
--

CREATE TABLE `tb_penjual` (
  `id_penjual` varchar(20) NOT NULL,
  `nama_penjual` varchar(100) NOT NULL,
  `nama_toko` varchar(100) NOT NULL,
  `alamat_penjual` text NOT NULL,
  `provinsi` varchar(50) NOT NULL,
  `kota` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `kode_pos` int(6) NOT NULL,
  `no_telepon` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_penjual`
--

INSERT INTO `tb_penjual` (`id_penjual`, `nama_penjual`, `nama_toko`, `alamat_penjual`, `provinsi`, `kota`, `kecamatan`, `kode_pos`, `no_telepon`) VALUES
('S001', 'Sujono', 'Berkah Jaya', 'jl. Jonggol 1', 'Jawa Barat', 'Bogor', 'Cibinong', 16830, 8771234),
('S002', 'Miller', 'Millers Records', 'Jl. Umalas II No.78', 'Bali', 'Badung', 'Kuta Utara', 80361, 8675577),
('S003', 'Rudi', 'Maju Jaya', 'gg. Jolotundo 10', 'Jawa Timur', 'Bondowoso', 'Krajan', 68282, 8876231),
('S004', 'Sunaryo', 'Cahaya Toko', 'Karang Tengah', 'Jawa Timur', 'Bondowoso', 'Tamanan', 68263, 8656543),
('S005', 'Vreya', 'Toko Tidak Maju Mundur', 'Raya Bojongsoang No.200', 'Jawa Barat', 'Bandung', 'Bojongsoang', 40257, 9878734),
('S006', 'Tukul Arwana', 'Toko Hahahihi', 'Ahmad Yani 20', 'Jawa Timur', 'Surabaya', 'Siwalankerto', 60236, 9879872),
('S007', 'Komeng', 'Lucu Shop', 'Jl. Siwalankerto No.190', 'Jawa Timur', 'Surabaya', 'Siwalankerto', 60236, 8775577),
('S008', 'Kurniadi', 'SummyShop', 'Jl. Entah beranta', 'Jakarta', 'Jakarta Barat', 'Tambora', 11220, 8777721),
('S009', 'Ale', 'Makmur Jaya', 'Raya Tropodo 56', 'Jawa Timur', 'Sidoarjo', 'Waru', 61256, 8662736),
('S010', 'Siwi', 'Toko Matahari', 'Siwalankerto No.120', 'Jawa Timur', 'Surabaya', 'Siwalankerto', 60236, 8787726);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` varchar(20) NOT NULL,
  `id_pembeli` varchar(20) NOT NULL,
  `id_barang` varchar(20) NOT NULL,
  `id_penjual` varchar(20) NOT NULL,
  `id_jasapengiriman` varchar(20) NOT NULL,
  `id_pembayaran` varchar(20) NOT NULL,
  `total_harga` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_pembeli`, `id_barang`, `id_penjual`, `id_jasapengiriman`, `id_pembayaran`, `total_harga`) VALUES
('T001', 'P001', 'B003', 'S002', 'C010', 'PAY04', 260000),
('T002', 'P001', 'B004', 'S004', 'C010', 'PAY04', 360000),
('T003', 'P004', 'B010', 'S010', 'C010', 'PAY03', 35000),
('T004', 'P004', 'B007', 'S008', 'C001', 'PAY05', 14700000),
('T005', 'P002', 'B001', 'S001', 'C010', 'PAY02', 22001000),
('T006', 'P003', 'B006', 'S001', 'C010', 'PAY07', 4001000),
('T007', 'P007', 'B007', 'S008', 'C010', 'PAY01', 1430000),
('T008', 'P008', 'B010', 'S010', 'C010', 'PAY09', 35000),
('T009', 'P009', 'B009', 'S010', 'C010', 'PAY07', 45000),
('T010', 'P010', 'B009', 'S010', 'C010', 'PAY05', 45000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD KEY `id_penjual` (`id_penjual`);

--
-- Indexes for table `jasa_pengiriman`
--
ALTER TABLE `jasa_pengiriman`
  ADD PRIMARY KEY (`id_jasapengiriman`);

--
-- Indexes for table `metode_pembayaran`
--
ALTER TABLE `metode_pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`);

--
-- Indexes for table `tb_pembeli`
--
ALTER TABLE `tb_pembeli`
  ADD PRIMARY KEY (`id_pembeli`);

--
-- Indexes for table `tb_penjual`
--
ALTER TABLE `tb_penjual`
  ADD PRIMARY KEY (`id_penjual`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_pembeli` (`id_pembeli`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_penjual` (`id_penjual`),
  ADD KEY `id_jasapengiriman` (`id_jasapengiriman`),
  ADD KEY `id_pembayaran` (`id_pembayaran`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`id_penjual`) REFERENCES `tb_penjual` (`id_penjual`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_pembeli`) REFERENCES `tb_pembeli` (`id_pembeli`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`),
  ADD CONSTRAINT `transaksi_ibfk_3` FOREIGN KEY (`id_penjual`) REFERENCES `tb_penjual` (`id_penjual`),
  ADD CONSTRAINT `transaksi_ibfk_4` FOREIGN KEY (`id_jasapengiriman`) REFERENCES `jasa_pengiriman` (`id_jasapengiriman`),
  ADD CONSTRAINT `transaksi_ibfk_5` FOREIGN KEY (`id_pembayaran`) REFERENCES `metode_pembayaran` (`id_pembayaran`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
