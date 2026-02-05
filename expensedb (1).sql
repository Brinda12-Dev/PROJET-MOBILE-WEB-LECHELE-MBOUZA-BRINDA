-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : jeu. 05 fév. 2026 à 17:16
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `expensedb`
--

-- --------------------------------------------------------

--
-- Structure de la table `app_user`
--

CREATE TABLE `app_user` (
  `id` bigint(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `app_user`
--

INSERT INTO `app_user` (`id`, `username`, `email`, `password`) VALUES
(2, 'leche', 'leche@test.com', 'monpassword123'),
(3, 'alice_dupont', 'alice@test.com', 'pass123'),
(4, 'bob_marley', 'bob@test.com', 'pass123'),
(5, 'charlie_rose', 'charlie@test.com', 'pass123'),
(6, 'david_beck', 'david@test.com', 'pass123'),
(7, 'eve_online', 'eve@test.com', 'pass123'),
(8, 'lili', 'lili@test.com', '123456');

-- --------------------------------------------------------

--
-- Structure de la table `budget`
--

CREATE TABLE `budget` (
  `id` bigint(20) NOT NULL,
  `amount` decimal(38,2) DEFAULT NULL,
  `budget_month` int(11) NOT NULL,
  `budget_year` int(11) NOT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `budget`
--

INSERT INTO `budget` (`id`, `amount`, `budget_month`, `budget_year`, `category_id`, `user_id`) VALUES
(7, '50000.00', 0, 2026, 2, 8),
(8, '100000.00', 0, 2026, 3, 8),
(9, '30000.00', 0, 2026, 6, 8),
(11, '25000.00', 0, 2026, 8, 8),
(17, '200000.00', 0, 2026, 11, 8),
(20, '300000.00', 1, 2026, 6, 8),
(22, '200000.00', 1, 2026, 12, 8),
(23, '50000.00', 1, 2026, 3, 8);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`, `icon`) VALUES
(2, 'Transport', 'car'),
(3, 'Alimentation', 'pizza-outline'),
(4, 'Plaisir', 'food'),
(6, 'Loisirs', 'fun'),
(7, 'Entrées', 'work'),
(8, 'Santé', 'medkit-outline'),
(11, 'SPORT', 'work'),
(12, 'MENAGE', 'shopping');

-- --------------------------------------------------------

--
-- Structure de la table `transaction`
--

CREATE TABLE `transaction` (
  `id` bigint(20) NOT NULL,
  `amount` decimal(38,2) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `date` date NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `category_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `transaction`
--

INSERT INTO `transaction` (`id`, `amount`, `description`, `date`, `type`, `category_id`, `user_id`) VALUES
(7, '500000.00', 'Salaire Janvier', '2026-01-25', 'INCOME', 7, 8),
(8, '40000.00', 'Courses supermarché', '2026-01-28', 'EXPENSE', 3, 8),
(9, '20000.00', 'Plein essence', '2026-01-29', 'EXPENSE', 2, 8),
(10, '12000.00', 'Achat médicaments', '2026-01-30', 'EXPENSE', 8, 8),
(11, '15000.00', 'Dîner entre amis', '2026-01-30', 'EXPENSE', 6, 8),
(12, '80000.00', 'Sale de gym', '2026-01-29', 'EXPENSE', 11, 8),
(16, '20000.00', 'EQUIPEMMENT', '2026-01-30', 'EXPENSE', NULL, NULL),
(17, '30000.00', 'CHAUSSURE', '2026-01-30', 'EXPENSE', NULL, NULL),
(18, '1000000.00', 'SALAIRE', '2026-02-05', 'INCOME', 7, 8),
(19, '20000.00', 'Maneige', '2026-02-12', 'EXPENSE', NULL, NULL),
(20, '1000.00', 'BANANE', '2026-01-30', 'EXPENSE', 11, 8),
(21, '500.00', 'Plaisirs', '2026-01-30', 'EXPENSE', 6, 8),
(22, '50000.00', 'Plaisirs', '2026-02-10', 'EXPENSE', 6, 8),
(25, '10000.00', 'RESTOC CHIC', '2026-02-05', 'EXPENSE', 12, 8),
(26, '100000.00', 'BALADE', '2026-02-05', 'EXPENSE', 6, 8),
(27, '10000.00', 'VOYAGE', '2026-01-20', 'EXPENSE', 2, 8),
(28, '10000.00', 'EPICESIE', '2026-02-05', 'EXPENSE', 6, 8),
(29, '10000.00', 'MARCHE 14', '2026-01-13', 'EXPENSE', 2, 8),
(31, '10000.00', 'BAFOUSSAM', '2026-01-21', 'EXPENSE', 2, 8),
(32, '10000.00', 'medicaments', '2026-02-05', 'EXPENSE', 8, 8);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `app_user`
--
ALTER TABLE `app_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `budget`
--
ALTER TABLE `budget`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_budget_category` (`category_id`),
  ADD KEY `fk_budget_user` (`user_id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_transaction_category` (`category_id`),
  ADD KEY `fk_transaction_user` (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `app_user`
--
ALTER TABLE `app_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `budget`
--
ALTER TABLE `budget`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `budget`
--
ALTER TABLE `budget`
  ADD CONSTRAINT `fk_budget_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_budget_user` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `fk_transaction_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_transaction_user` FOREIGN KEY (`user_id`) REFERENCES `app_user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
