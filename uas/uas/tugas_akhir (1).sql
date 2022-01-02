-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2021 at 05:59 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas_akhir`
--

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id_pasien` int(6) NOT NULL,
  `dokter_penangan` varchar(50) NOT NULL,
  `nama_pasien` varchar(50) NOT NULL,
  `Kecamatan` varchar(20) NOT NULL,
  `tanggal_vaksin` date NOT NULL,
  `keluhan` varchar(100) NOT NULL,
  `diagnosa` varchar(100) DEFAULT NULL,
  `biaya` varchar(10) NOT NULL,
  `bayar` int(5) DEFAULT NULL,
  `tindakan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id_pasien`, `dokter_penangan`, `nama_pasien`, `Kecamatan`, `tanggal_vaksin`, `keluhan`, `diagnosa`, `biaya`, `bayar`, `tindakan`) VALUES
(1, 'Junita Ruth Veron', 'Sezairi', 'Sukaaku', '2021-12-01', 'batuk-batuk,pilek', 'flu ringan', 'GRATIS', 0, 'Sudah Divaksin'),
(3, 'Siti Ainul Nisa', 'Jeje Rich', 'Sukakamu', '2021-12-03', 'tidak ada', 'sehat', 'GRATIS', 0, 'Sudah divaksin'),
(6, 'Moh Faizal Fariz', 'Nikita', 'Sukakamu', '2021-12-05', 'sesak-sesak', 'asma ringan', 'GRATIS', 0, 'Ditunda vaksin'),
(9, 'Renando Satriya', 'Josuadmartch', 'Sukaaku', '2021-12-07', 'tidak ada', 'sehat', 'GRATIS', 0, 'Sudah divaksin'),
(13, 'Junita Ruth Veron', 'Goho', 'Sukaaku', '2021-12-09', 'tidak ada', 'sehat', 'GRATIS', 0, 'Sudah Divaksin'),
(15, 'Moh Faizal Fariz', 'Ninuls', 'Sukakamu', '2021-12-11', 'demam ringan', 'flu', 'GRATIS', 0, 'Ditunda Vaksin'),
(16, 'Renando Satriya', 'Memer', 'Sukakamu', '2021-12-13', 'sesak-sesak', 'asma ringan', 'GRATIS', 0, 'Sudah Divaksin'),
(19, 'Siti Ainul NIsa', 'Juki', 'Sukaaku', '2021-12-15', 'pusing,mual', 'gejala demam', 'GRATIS', 0, 'Ditunda Vaksin'),
(20, 'Siti Ainul NIsa', 'Julietwati', 'Sukakamu', '2021-12-17', 'muntah-muntah,bab', 'diare', 'GRATIS', 0, 'Sudah Divaksin'),
(27, 'Junita Ruth Veron', 'Josua Rietchy', 'Sukaaku', '2021-12-19', 'tidak ada', 'sehat', 'GRATIS', 0, 'Sudah divaksin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pasien`
--

CREATE TABLE `tbl_pasien` (
  `id_pasien` int(6) NOT NULL,
  `nama_pasien` varchar(40) NOT NULL,
  `Kecamatan` varchar(50) NOT NULL,
  `alamat` varchar(40) NOT NULL,
  `jenis_kelamin` char(1) NOT NULL,
  `no_telepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pasien`
--

INSERT INTO `tbl_pasien` (`id_pasien`, `nama_pasien`, `Kecamatan`, `alamat`, `jenis_kelamin`, `no_telepon`) VALUES
(1, 'Sezairi', 'Sukaaku', 'Banyuwangi', 'L', '088821223790'),
(3, 'Jeje Rich', 'Sukakamu', 'Bogor', 'P', '081258290239'),
(6, 'Nikita', 'Sukakamu', 'Sempaja', 'P', '081232123343'),
(9, 'Josuadmartch', 'Sukaaku', 'Sangatta', 'L', '081256547777'),
(13, 'Goho', 'Sukaaku', 'Samarinda', 'L', '082834762222'),
(15, 'Ninuls', 'Sukakamu', 'Jakarta', 'P', '087838885621'),
(16, 'Memer', 'Sukakamu', 'Samarinda', 'P', '0127833457659'),
(19, 'Juki ', 'Sukaaku', 'Sorong', 'L', '087723425401'),
(20, 'Julietwati', 'Sukakamu', 'Medan', 'P', '089544447767'),
(27, 'Josua Rietchy', 'Sukaaku', 'Samarinda', 'L', '081288891213');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id_pasien`);

--
-- Indexes for table `tbl_pasien`
--
ALTER TABLE `tbl_pasien`
  ADD PRIMARY KEY (`id_pasien`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id_pasien` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tbl_pasien`
--
ALTER TABLE `tbl_pasien`
  MODIFY `id_pasien` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
