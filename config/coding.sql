-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Bulan Mei 2020 pada 15.55
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `coding`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `landing`
--

CREATE TABLE `landing` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `landing`
--

INSERT INTO `landing` (`id`, `nama`, `tanggal`, `status`) VALUES
(1, 'azri', '2020-04-25', 'tau deh'),
(2, 'hafiz', '2020-05-09', 'ok'),
(3, 'Farhan Nur Irsyad', '2020-05-11', ''),
(4, 'Azzam M', '2020-05-15', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mhs`
--

CREATE TABLE `mhs` (
  `id` int(11) NOT NULL,
  `nama` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mhs`
--

INSERT INTO `mhs` (`id`, `nama`) VALUES
(1, 'Jamaludin'),
(2, 'Sanusi'),
(3, 'Muhammad Haikal'),
(4, 'Roki sinamuna'),
(5, 'Diki Alfarabi Hadi'),
(6, 'Samsul Bahri'),
(7, 'Khairul Bahri'),
(8, 'Samsul Arifin'),
(9, 'Sumantini'),
(10, 'Aisyah Nur Hikmah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanggalan`
--

CREATE TABLE `tanggalan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `tanggal` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tanggalan`
--

INSERT INTO `tanggalan` (`id`, `nama`, `tanggal`) VALUES
(1, 'M Hafiz ', '2020-05-10 00:00:00'),
(2, 'azri global komputer', '2020-05-10 00:00:00'),
(3, 'M Hafiz ', '2020-05-10 00:00:00'),
(4, 'M Hafiz ', '2020-05-10 00:00:00'),
(5, 'dian', '2020-05-10 04:00:31');

-- --------------------------------------------------------

--
-- Struktur dari tabel `upload`
--

CREATE TABLE `upload` (
  `id_upload` int(3) NOT NULL,
  `nama_file` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `tgl_upload` date NOT NULL,
  `hits` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `upload`
--

INSERT INTO `upload` (`id_upload`, `nama_file`, `deskripsi`, `tgl_upload`, `hits`) VALUES
(1, 'IZIN_USAHA_.pdf', 'fdsfds fdsafdas fdasfds fdsa', '2020-05-11', 0),
(2, 'Kelas V Tema 8 BS.pdf', 'rger fggfsdg gfd', '2020-05-11', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `landing`
--
ALTER TABLE `landing`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `mhs`
--
ALTER TABLE `mhs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tanggalan`
--
ALTER TABLE `tanggalan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `upload`
--
ALTER TABLE `upload`
  ADD PRIMARY KEY (`id_upload`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `landing`
--
ALTER TABLE `landing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `mhs`
--
ALTER TABLE `mhs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `tanggalan`
--
ALTER TABLE `tanggalan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `upload`
--
ALTER TABLE `upload`
  MODIFY `id_upload` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
