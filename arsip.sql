-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2020 at 04:03 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arsip`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(120) NOT NULL,
  `nickname` varchar(120) NOT NULL,
  `password` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `berkas`
--

CREATE TABLE `berkas` (
  `id_berkas` int(11) NOT NULL,
  `no_berkas` varchar(120) NOT NULL,
  `nama_berkas` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berkas`
--

INSERT INTO `berkas` (`id_berkas`, `no_berkas`, `nama_berkas`) VALUES
(5, '1', 'kartu indonesia sehat'),
(212, '79', 'joko');

-- --------------------------------------------------------

--
-- Table structure for table `keuangan`
--

CREATE TABLE `keuangan` (
  `id_keuangan` int(11) NOT NULL,
  `no_berkas` varchar(200) NOT NULL,
  `nama_berkas` varchar(200) NOT NULL,
  `jenis_berkas` varchar(1000) NOT NULL,
  `bidang` varchar(200) NOT NULL,
  `bulan` varchar(200) NOT NULL,
  `tahun` varchar(200) NOT NULL,
  `box` varchar(200) NOT NULL,
  `Rak` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keuangan`
--

INSERT INTO `keuangan` (`id_keuangan`, `no_berkas`, `nama_berkas`, `jenis_berkas`, `bidang`, `bulan`, `tahun`, `box`, `Rak`, `file`, `status`) VALUES
(3, 'kjlksj', 'kjkj', 'kapitasi', 'dskk', 'k', 'k', 'kjkj', 'kj', '', 'Tersedia'),
(4, '12', 'uang', '', 'keuangan', 'juni', '2020', 'array', '67', '', '1'),
(5, '1234', 'wedrf', '', 'wderf', 'we', 'wdd', 'wd', 'wq', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `kpp`
--

CREATE TABLE `kpp` (
  `id_kpp` int(11) NOT NULL,
  `jenis_berkas` varchar(1100) NOT NULL,
  `no_berkas` varchar(200) NOT NULL,
  `nama_berkas` varchar(200) NOT NULL,
  `bidang` varchar(200) NOT NULL,
  `bulan` varchar(200) NOT NULL,
  `tahun` varchar(200) NOT NULL,
  `Rak` varchar(100) NOT NULL,
  `box` varchar(200) NOT NULL,
  `file` varchar(1000) NOT NULL,
  `status` varchar(129) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kpp`
--

INSERT INTO `kpp` (`id_kpp`, `jenis_berkas`, `no_berkas`, `nama_berkas`, `bidang`, `bulan`, `tahun`, `Rak`, `box`, `file`, `status`) VALUES
(1, 'dongeng', '12131', 'kanci;', 'kpp', 'jani', '2020', '989', 'oioi', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `p4`
--

CREATE TABLE `p4` (
  `id_p4` int(11) NOT NULL,
  `no_berkas` varchar(200) NOT NULL,
  `nama_berkas` varchar(200) NOT NULL,
  `jenis_berkas` varchar(200) NOT NULL,
  `bulan` varchar(200) NOT NULL,
  `bidang` varchar(100) NOT NULL,
  `tahun` varchar(200) NOT NULL,
  `box` varchar(200) NOT NULL,
  `Rak` varchar(100) NOT NULL,
  `file` varchar(1000) NOT NULL,
  `status` varchar(199) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `p4`
--

INSERT INTO `p4` (`id_p4`, `no_berkas`, `nama_berkas`, `jenis_berkas`, `bulan`, `bidang`, `tahun`, `box`, `Rak`, `file`, `status`) VALUES
(2, 'JXCJN', 'N', 'CNC', 'CNKN', 'KK', 'KN', 'KNK', 'KN', '', '0'),
(3, '322245', 'r4r43', '32r23e', '12re23', '321rd', '232', '123e2', '232r', '', 'Tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `peminjam`
--

CREATE TABLE `peminjam` (
  `id_peminjam` int(11) NOT NULL,
  `id_pengguna` int(11) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `tanggal_pengembalian` date NOT NULL,
  `status_peminjaman` varchar(50) NOT NULL,
  `status_pengembalian` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` int(11) NOT NULL,
  `nama` varchar(120) NOT NULL,
  `nickname` varchar(120) NOT NULL,
  `alamat` varchar(120) NOT NULL,
  `gendre` varchar(20) NOT NULL,
  `bidang` varchar(120) NOT NULL,
  `npp` varchar(100) NOT NULL,
  `password` varchar(120) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pmp`
--

CREATE TABLE `pmp` (
  `id_pmp` int(11) NOT NULL,
  `jenis_berkas` varchar(200) NOT NULL,
  `no_berkas` varchar(120) NOT NULL,
  `nama_berkas` varchar(2000) NOT NULL,
  `bidang` varchar(120) NOT NULL,
  `bulan` varchar(120) NOT NULL,
  `tahun` varchar(120) NOT NULL,
  `box` varchar(120) NOT NULL,
  `Rak` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pmp`
--

INSERT INTO `pmp` (`id_pmp`, `jenis_berkas`, `no_berkas`, `nama_berkas`, `bidang`, `bulan`, `tahun`, `box`, `Rak`, `file`, `status`) VALUES
(95934, 'kapitasi', '1221', 'jkn', 'pmp', 'maret', '2020', 'array', '65', '', 'Tersedia'),
(95935, 'role', '9090', 'kis', 'pmp', 'juni', '2002', 'poo', '89', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `pmr`
--

CREATE TABLE `pmr` (
  `id_pmr` int(11) NOT NULL,
  `no_berkas` varchar(120) NOT NULL,
  `nama_berkas` varchar(2000) NOT NULL,
  `jenis_berkas` varchar(100) NOT NULL,
  `bidang` varchar(100) NOT NULL,
  `bulan` varchar(1000) NOT NULL,
  `tahun` varchar(1000) NOT NULL,
  `Rak` varchar(129) NOT NULL,
  `box` varchar(120) NOT NULL,
  `file` varchar(2000) NOT NULL,
  `status` varchar(20000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pmr`
--

INSERT INTO `pmr` (`id_pmr`, `no_berkas`, `nama_berkas`, `jenis_berkas`, `bidang`, `bulan`, `tahun`, `Rak`, `box`, `file`, `status`) VALUES
(1, '20', 'jknn', 'role', 'pmr', 'januari', '2020', '67', '90', 'list_hatga_mobil.docx', '0'),
(3, 'kxcnkn', 'kn', '', 'knk', 'nkn', 'knkn', 'knknk', 'knk', 'LIST_DIKSAR1.docx', 'Tersedia'),
(7, 'xcnjnq', 'n', '', 'nlk', 'nkn', 'lknk', 'nk', 'nkn', '', '0'),
(8, 'ybhygg', 'qq2q', '', 'kjjpi', 'k', '22', 'kkl', 'loki', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `sdm`
--

CREATE TABLE `sdm` (
  `id_sdm` int(11) NOT NULL,
  `no_berkas` varchar(200) NOT NULL,
  `nama_berkas` varchar(200) NOT NULL,
  `jenis_berkas` varchar(1000) NOT NULL,
  `bidang` varchar(200) NOT NULL,
  `bulan` varchar(200) NOT NULL,
  `tahun` varchar(200) NOT NULL,
  `box` varchar(200) NOT NULL,
  `Rak` varchar(120) NOT NULL,
  `file` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sdm`
--

INSERT INTO `sdm` (`id_sdm`, `no_berkas`, `nama_berkas`, `jenis_berkas`, `bidang`, `bulan`, `tahun`, `box`, `Rak`, `file`, `status`) VALUES
(2, '45', 'koran', 'koste', 'sdm', 'maret', '2102', 'ray0', '69', 'kelvin(spk).xlsx', '0'),
(5, 'xjncjn', 'LK', '', 'N', 'KXMKM', 'KM', 'KMK', 'KM', '', '0'),
(6, 'dmfkmq', 'ks', '', 'mm', 'skmk', 'mk', 'skm', 'mskm', '', 'Tersedia'),
(7, 'sjajn', 'dj', '', 'kjn', 'n', 'jnkljn', 'lkn', 'lkn', '', 'Tersedia'),
(8, '121212', 'popopo', 'jjojok', 'p4', 'oipi', 'iii', 'iu', 'iuiu', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_peminjam` int(11) NOT NULL,
  `id_berkas` int(11) NOT NULL,
  `id_pengguna` int(11) NOT NULL,
  `tanggal_pinjam` date NOT NULL,
  `tanggal_kembali` date NOT NULL,
  `tanggal_pengembalian` date NOT NULL,
  `status_peminjaman` varchar(50) NOT NULL,
  `status_pengembalian` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `npp` int(128) NOT NULL,
  `name` varchar(128) NOT NULL,
  `bidang` varchar(128) NOT NULL,
  `nomor_hp` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(30) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(2) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_create` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `npp`, `name`, `bidang`, `nomor_hp`, `email`, `image`, `password`, `role_id`, `is_active`, `date_create`) VALUES
(1, 0, 'admin', '', '0', 'admin@gmail.com', 'default.jpg', '$2y$10$PHyD2C.h6BD2CLQy1K4xD.vYhX114z6SnhaB.7bCXZf.sGBSaka66', 1, 1, '0000-00-00'),
(12, 1928, 'Handyka Dwiska Putra', 'SDMUKP', '081291715380', 'handykadwisk@gmail.com', 'default.jpg', '$2y$10$ZYqKxFf8Cgq8jC8EliPfjO2PWbpuS.QeXA/3IVKcpdmNiBBT2SBBS', 2, 1, '0000-00-00'),
(13, 171013009, 'aif surganda', 'SDMUKP', '081291271867', 'alif@gmail.com', 'default.jpg', '$2y$10$/rrJovOMLA4FLojM4ilRE.8OGXBhL4fgvRK06UszWl6Z9/5eilFJm', 2, 1, '0000-00-00'),
(14, 1222, 'kelvin', 'PMP', '0123245321', 'kelvin@gmail.com', 'default.jpg', '$2y$10$7mizBeLorIjpXeughp6o4OGH6JcEMlGd8jJs6GtVCjKObxoK3PuLq', 2, 1, '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `berkas`
--
ALTER TABLE `berkas`
  ADD PRIMARY KEY (`id_berkas`);

--
-- Indexes for table `keuangan`
--
ALTER TABLE `keuangan`
  ADD PRIMARY KEY (`id_keuangan`);

--
-- Indexes for table `kpp`
--
ALTER TABLE `kpp`
  ADD PRIMARY KEY (`id_kpp`);

--
-- Indexes for table `p4`
--
ALTER TABLE `p4`
  ADD PRIMARY KEY (`id_p4`);

--
-- Indexes for table `peminjam`
--
ALTER TABLE `peminjam`
  ADD PRIMARY KEY (`id_peminjam`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id_pengguna`);

--
-- Indexes for table `pmp`
--
ALTER TABLE `pmp`
  ADD PRIMARY KEY (`id_pmp`);

--
-- Indexes for table `pmr`
--
ALTER TABLE `pmr`
  ADD PRIMARY KEY (`id_pmr`);

--
-- Indexes for table `sdm`
--
ALTER TABLE `sdm`
  ADD PRIMARY KEY (`id_sdm`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_peminjam`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `berkas`
--
ALTER TABLE `berkas`
  MODIFY `id_berkas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `keuangan`
--
ALTER TABLE `keuangan`
  MODIFY `id_keuangan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kpp`
--
ALTER TABLE `kpp`
  MODIFY `id_kpp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `p4`
--
ALTER TABLE `p4`
  MODIFY `id_p4` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `peminjam`
--
ALTER TABLE `peminjam`
  MODIFY `id_peminjam` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id_pengguna` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pmp`
--
ALTER TABLE `pmp`
  MODIFY `id_pmp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95936;

--
-- AUTO_INCREMENT for table `pmr`
--
ALTER TABLE `pmr`
  MODIFY `id_pmr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `sdm`
--
ALTER TABLE `sdm`
  MODIFY `id_sdm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_peminjam` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
