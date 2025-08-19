-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2024 at 11:48 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `delivery`
--

-- --------------------------------------------------------

--
-- Table structure for table `carrinho`
--

CREATE TABLE `carrinho` (
  `id` int(11) NOT NULL,
  `id_venda` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `quantidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `carrinho`
--

INSERT INTO `carrinho` (`id`, `id_venda`, `id_produto`, `cpf`, `quantidade`) VALUES
(224, 0, 13, '111.111.111-11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `nome_url` varchar(50) NOT NULL,
  `produtos` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `categorias`
--

INSERT INTO `categorias` (`id`, `nome`, `descricao`, `imagem`, `nome_url`, `produtos`) VALUES
(1, 'Bebidas', 'Bebidas', 'bebidas.jpeg', 'bebidas', 4),
(2, 'Sanduíches Artesanais', 'Sanduíches Artesanais', 'artesanal.jpeg', 'sanduiches-artesanais', 2),
(8, 'Sanduíches', 'Sanduíches', 'sanduiches.jpeg', 'sanduiches', 3);

-- --------------------------------------------------------

--
-- Table structure for table `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `rua` varchar(100) NOT NULL,
  `numero` varchar(20) NOT NULL,
  `bairro` varchar(50) NOT NULL,
  `cidade` varchar(50) NOT NULL,
  `estado` varchar(5) NOT NULL,
  `cep` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `locais`
--

CREATE TABLE `locais` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `locais`
--

INSERT INTO `locais` (`id`, `nome`) VALUES
(1, 'Jardim Micena'),
(2, 'Jardim Municipal'),
(3, 'Paraíso'),
(4, 'Jardim Arapuã'),
(5, 'Vila Maria'),
(8, 'Centro'),
(9, 'Vila Mariana');

-- --------------------------------------------------------

--
-- Table structure for table `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `descricao` varchar(50) NOT NULL,
  `descricao_longa` varchar(600) NOT NULL,
  `valor` decimal(8,2) NOT NULL,
  `categoria` int(11) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `nome_url` varchar(50) NOT NULL,
  `combo` varchar(10) DEFAULT NULL,
  `vendas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `produtos`
--

INSERT INTO `produtos` (`id`, `nome`, `descricao`, `descricao_longa`, `valor`, `categoria`, `imagem`, `nome_url`, `combo`, `vendas`) VALUES
(12, 'Chessburguer', 'Carne e Queijo', 'Delicioso Chessburguer com carne bovina, queijo, maionese, picles, ketchup!!', 9.99, 8, 'sanduiche 1.jpeg', 'chessburguer', NULL, 0),
(13, 'Bufalo Burguer', 'Gigante e Saboroso', 'Um Sanduíche gigantesco, pra quem tem muita fome, a base de carne bovina, cheddar ....', 12.50, 8, 'sanduiche 2.jpeg', 'bufalo-burguer', NULL, 0),
(15, 'Sanduiche Gourmet', 'Delicioso Artesanal', 'Um Delicioso sanduiche artesenal, carne de frango ....', 10.00, 2, 'gourmet.jpeg', 'sanduiche-gourmet', NULL, 0),
(18, 'Combo Artesanais', '2 Sanduiches', 'Dois Deliciosos sanduiches artesanais', 18.00, 2, 'promocao artesanais.jpeg', 'combo-artesanais', 'Sim', 0),
(19, 'Combo Sanduíches', '3 Sanduiches', 'Trez Gigantescos sanduiches...', 29.99, 8, 'promocao sanduinches.jpeg', 'combo-sanduiches', 'Sim', 0),
(20, 'Coca Cola Lata', '350 ML', 'Refrigerante Coca Cola Lata', 3.50, 1, 'WhatsApp Image 2020-05-13 at 22.38.18.jpeg', 'coca-cola-lata', NULL, 0),
(21, 'Agua Mineral', 'Garrafa 200 ML', 'Agua Mineral', 2.00, 1, 'WhatsApp Image 2020-05-13 at 22.41.30.jpeg', 'agua-mineral', NULL, 0),
(22, 'Suco Lata', '290 ML', 'Suco de Lata 290 ML', 2.90, 1, 'WhatsApp Image 2020-05-13 at 22.45.31.jpeg', 'suco-lata', NULL, 0),
(23, 'Cerveja Lata', '350 ML', 'Cerveja Lata', 4.50, 1, 'WhatsApp Image 2020-05-13 at 22.49.20.jpeg', 'cerveja-lata', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `senha` varchar(35) NOT NULL,
  `nivel` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `telefone`, `usuario`, `senha`, `nivel`) VALUES
(21, 'Administrador', '000.000.000-00', '3333-3333', 'felipe@gmail.com', '123', 'Admin'),
(23, 'felipe1', '111.111.111-11', '(11) 11111-1111', 'felipe1@hotmail.com', '12345', 'Cliente');

-- --------------------------------------------------------

--
-- Table structure for table `vendas`
--

CREATE TABLE `vendas` (
  `id` int(11) NOT NULL,
  `cliente` varchar(20) NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `total_pago` decimal(8,2) NOT NULL,
  `troco` decimal(8,2) NOT NULL,
  `tipo_pgto` varchar(30) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `status` varchar(25) NOT NULL,
  `pago` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `vendas`
--

INSERT INTO `vendas` (`id`, `cliente`, `total`, `total_pago`, `troco`, `tipo_pgto`, `data`, `hora`, `status`, `pago`) VALUES
(20, '111.111.111-11', 51.99, 52.00, 0.01, 'Dinheiro', '2024-10-10', '18:31:08', 'Concluído', 'Não');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carrinho`
--
ALTER TABLE `carrinho`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locais`
--
ALTER TABLE `locais`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carrinho`
--
ALTER TABLE `carrinho`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `locais`
--
ALTER TABLE `locais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
