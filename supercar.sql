-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 29 sep. 2025 à 11:56
-- Version du serveur : 8.3.0
-- Version de PHP : 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `supercar`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'bryanrambelo@gmail.com', '$2y$10$eWd1FWZtw3bl6.i5bp/KsOrAgXYiaZGKk6hJvwzFroLUGF1vIn7ua'),
(2, 'Aristem200407@gmail.com', '$2y$10$bs7dmFLy/6VYe0rJU33WcORylfpfUdTi22AGDQpdLekb4yUMSJdxC'),
(3, 'Supercarsadmin@gmail.com', '$2y$10$z4cEjyH5HMmj7oUZCTedLua1HuLF.1LT8DhFninFdukVswSPxKMKi');

-- --------------------------------------------------------

--
-- Structure de la table `contactez`
--

DROP TABLE IF EXISTS `contactez`;
CREATE TABLE IF NOT EXISTS `contactez` (
  `idclient` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(15) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `sujet` varchar(40) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idclient`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `contactez`
--

INSERT INTO `contactez` (`idclient`, `nom`, `email`, `sujet`, `message`) VALUES
(1, 'Bilounga ingrid', 'nkpweeingrid@gmail.com', 'nnnn', 'dyugguhkjo'),
(2, 'Bilounga ingrid', 'nkpweeingrid@gmail.com', 'nnnn', 'dyugguhkjo'),
(3, 'Jodelus', 'jodelus@gmail.com', 'jjjjjjjjjj', 'Bo,jiujnd'),
(4, 'ingrid ', 'h@gmail.com', 'journe', 'allo'),
(5, 'ingri', 'ing@gmail.com', 'bonjour', 'cava?'),
(6, 'bryan', 'bryanrambelo@gmail.com', 'rien', 'boff rien'),
(7, 'bryan', 'bryanrambelo@gmail.com', 'voiture ', 'merci '),
(8, 'Rambeloarisoa', 'bryanrambelo@gmail.com', 'ok', 'c&#039;est nul be le izy \r\n'),
(9, 'Rambeloarisoa', 'bryanrambelo@gmail.com', 'hog', 'fc');

-- --------------------------------------------------------

--
-- Structure de la table `details_service`
--

DROP TABLE IF EXISTS `details_service`;
CREATE TABLE IF NOT EXISTS `details_service` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_service` int NOT NULL,
  `nom` varchar(100) NOT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  KEY `id_service` (`id_service`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `details_service`
--

INSERT INTO `details_service` (`id`, `id_service`, `nom`, `description`) VALUES
(1, 1, 'Batterie', 'Remplacement ou recharge de batterie.'),
(2, 1, 'Plaquettes de frein', 'Changement des plaquettes pour une meilleure sécurité.'),
(3, 1, 'Courroie (kit complet)', 'Remplacement du kit de courroie de distribution.'),
(4, 1, 'Bougies', 'Remplacement des bougies d\'allumage.'),
(5, 1, 'Filtre', 'Changement de filtre à huile, air ou carburant.'),
(6, 1, 'Pneus', 'Montage et équilibrage de pneus.'),
(7, 1, 'Service Premium', 'Service de location de voiture avec chauffeur et options de luxe'),
(8, 2, 'Assurance Tout Risque', 'Assurance complète pour couvrir tous les types de dommages'),
(9, 3, 'Service Navette', 'Navette de l\'aéroport vers le véhicule de location'),
(10, 4, 'Assistance 24/7', 'Assistance disponible à tout moment en cas de besoin'),
(11, 1, 'Service Premium', 'Service de location de voiture avec chauffeur et options de luxe'),
(12, 2, 'Assurance Tout Risque', 'Assurance complète pour couvrir tous les types de dommages'),
(13, 3, 'Service Navette', 'Navette de l\'aéroport vers le véhicule de location'),
(14, 4, 'Assistance 24/7', 'Assistance disponible à tout moment en cas de besoin');

-- --------------------------------------------------------

--
-- Structure de la table `essai`
--

DROP TABLE IF EXISTS `essai`;
CREATE TABLE IF NOT EXISTS `essai` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `lieurecup` varchar(255) DEFAULT NULL,
  `lieudepot` varchar(255) DEFAULT NULL,
  `daterecup` date DEFAULT NULL,
  `datedepot` date DEFAULT NULL,
  `heurerecup` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `essai`
--

INSERT INTO `essai` (`id`, `nom`, `prenom`, `email`, `lieurecup`, `lieudepot`, `daterecup`, `datedepot`, `heurerecup`) VALUES
(2, 'luca', 'ing', 'kl@gmail.com', 'quatres bornes', 'saint jean', '0000-00-00', '0000-00-00', '12:30:00'),
(18, 'Rambeloarisoa', 'Bryan0009', 'rambelo@gmail.com', 'sodnac ', 'Trianon ', '2025-09-17', '2025-09-03', '17:18:00'),
(5, 'bryan', 'yves', 'bryanrambelo@gmail.com', 'sodnac', 'Maurice', '0000-00-00', '0000-00-00', '12:00:00'),
(6, 'car', 'sup', 'car@gmail.com', 'sodnac', 'quatre borne ', '0000-00-00', '0000-00-00', '12:00:00'),
(7, 'new', 'Isaac', 'bryanrambelo@gmail.com', 'sodnac crr ', 'SRR', '2025-04-18', '2025-04-13', '11:53:00'),
(8, 'bryan', 'Einstein', 'bryanrambelo@gmail.com', 'sodnac', 'SRR', '2025-04-02', '2025-04-03', '18:46:00'),
(9, 'bryan', 'yves', 'bryanrambelo@gmail.com', 'sodnac crr ', 'Maurice', '2025-04-04', '2025-04-26', '18:52:00'),
(11, 'bryan', 'America ', 'bryanrambelo@gmail.com', 'sodnac', 'SRR', '2025-04-01', '2025-04-26', '10:52:00'),
(12, 'bryan', 'America ', 'bryanrambelo@gmail.com', 'sodnac', 'SRR', '2025-04-01', '2025-04-26', '10:52:00'),
(17, 'clients ', 'clients de supercar ', 'supercar@gmail.com', 'Rose Hill', 'Trianon ', '2025-10-01', '2025-09-26', '17:00:00'),
(14, 'bryan', 'Isaac', 'bryanrambelo@gmail.com', 'sodnac crr ', 'huf', '2025-04-05', '2025-04-05', '15:14:00'),
(16, 'Daniel', 'Nav', 'Daniel@gmail.com', 'Rose Hill', 'Trianon ', '2025-09-03', '2025-09-06', '05:03:00');

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

DROP TABLE IF EXISTS `inscription`;
CREATE TABLE IF NOT EXISTS `inscription` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `ville` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `date_inscription` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `inscription`
--

INSERT INTO `inscription` (`id`, `nom`, `prenom`, `email`, `ville`, `password`, `date_inscription`) VALUES
(2, 'Ludeville', 'jean', 'jean@gmail.com', 'Yaounde', '$2y$10$Cu1mE29J3LiyDOvttcVo7OsrpnkdA103O9LtLDU37BBBKAsAdHxUC', '2025-03-27 07:03:50'),
(3, 'GABIE', 'Gabriel', 'Gabriel@gmail.com', 'st pierre', '$2y$10$CyXmCZlt9MFj6SUuK1EOd.xdKzltfez2U6oFUmgY/LkhTx21aymEC', '2025-03-28 02:08:46'),
(4, 'julie', 'Manana', 'julie@gmail.com', 'avenue surath', '$2y$10$m5dubgjqaSBqCXPm5a8DkOh5RGXaoVajaUu3QpWI7F/RZmF1b5a.u', '2025-03-31 10:52:27'),
(38, 'Clients', 'desupercar', 'supercarsclients@gmail.com', 'Quatre Bornes', '$2y$10$op9CEJtzKCroVe6qFXDatOW78VCQ.vDRueULjgmqhGFmDJJey8GSe', '2025-09-22 07:45:35'),
(37, 'Rambeloarisoa', 'Bryan', 'bryanrambelo@gmail.com', 'Tamatave', '$2y$10$GW9eYMVQ4csq6SEi2Cddme6t7cWPA8a1U1n2Q9d35UQtg1r3BYOSe', '2025-09-18 17:38:13'),
(9, 'bryan', 'Christinah', 'aristem@gmail.com', 'QUATRE ', '$2y$10$23vmyOSi9aCoM1oRxvJlJ./TGjOl1385qgsCeyXTcYskU9kmNLiM2', '2025-04-03 05:57:47'),
(10, 'naruto', 'Einstein', 'narutoshipnine@gmail.com', 'Quatre Bornes', '$2y$10$tehAXb7hhm3SbqySCHLnIu/NfTuo3Pk8w5O701GThKNf5n1pxdexK', '2025-04-10 05:03:44'),
(11, 'carmen', 'yves', 'carsuper@gmail.com', 'st jean ', '$2y$10$QoVlhgPWTREkp04841rdI.FZpOuwxaEq6jQwMVlzMX0BhU3wWQrCm', '2025-04-15 09:42:28'),
(13, 'tendry', 'Christinah', 'Ten0007@gmail.com', 'QUATRE BORNE', '$2y$10$gjPaCJFeSZJFzJbtFgP51uvZ25UfwymOd8H23IlDekE4qIGWmSrj6', '2025-04-16 16:51:27'),
(33, 'bryan', 'Aristem', 'bryan@gmail.com', 'QUATRE BORNE', '$2y$10$eA.IRcMH0irS5uBaUX6pYuB3lybyvDCB4gxfIHEYSebd6pG0CGQua', '2025-05-21 06:40:39'),
(36, 'DADA', 'Dani', 'Dadadani@gmail.com', 'fort', '$2y$10$Zc9mp6X2mbsIHJ/2th6MveZ5iUxI87.zDeczo10wwaLOkMoPGuTHe', '2025-09-18 17:14:46'),
(21, 'Captain ', 'America ', 'America@gmail.com', 'ville ', '$2y$10$wJQ4rjOYP8CW1PBWawy5J.xDS3GckIktSBl2ZQeFpH3vKF5stL88.', '2025-04-16 17:07:48'),
(23, 'Washing', 'America ', 'washing@gmail.com', 'washinton', '$2y$10$aonac0eWCZEwhd7rT0sujOryghbzi1cp7fYJUV8KMtLOSAVEGoYkq', '2025-04-16 17:14:02'),
(24, 'Washingtong', 'American', 'washingtond@gmail.com', 'Whashing', '$2y$10$1aCLAuo2tKPz3avInxkfmu/CxbP8X5JDsmYjeVAxnVum3KqmZ3Pzy', '2025-04-16 17:15:06'),
(28, 'supcar', 'Isakicar', 'isacar@gmail.com', 'QUATRE BORNE', '$2y$10$yWsW1KNFV3wHAjLWuctcNea53oWDMBydHTupPUQm9br9FTNnwSwJG', '2025-04-16 17:21:54');

-- --------------------------------------------------------

--
-- Structure de la table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Structure de la table `voiture`
--

DROP TABLE IF EXISTS `voiture`;
CREATE TABLE IF NOT EXISTS `voiture` (
  `id` int NOT NULL AUTO_INCREMENT,
  `marque` varchar(100) NOT NULL,
  `modele` varchar(100) NOT NULL,
  `prix` decimal(10,2) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `categorie` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `transmission` varchar(50) NOT NULL,
  `disponible` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `voiture`
--

INSERT INTO `voiture` (`id`, `marque`, `modele`, `prix`, `photo`, `categorie`, `description`, `transmission`, `disponible`) VALUES
(7, 'BMW', 'X5', 2000.00, 'images/bmwx5.jpeg', 'SUV', 'Intérieur spacieux et luxueux, conçu pour le confort et les performances robustes.', 'Automatique', 1),
(8, 'BMW', 'XM', 2000.00, 'images/bmwx.jpg', 'SUV', 'Moteur V8 biturbo 4.4L + moteur électrique, puissance combinée de 653 chevaux, intérieur luxueux et design audacieux.', 'Automatique', 1),
(9, 'BMW', 'G60', 2200.00, 'images/G60.jpg', 'SUV', 'Disponible en essence, diesel, hybride rechargeable et électrique, avec une puissance allant jusqu\'à 601 chevaux (i5 M60).', 'Automatique', 1),
(10, 'BMW', 'X3', 2500.00, 'images/X3.jpg', 'SUV', 'Disponible en essence, diesel et hybride rechargeable, puissance de 184 à 510 chevaux.', 'Automatique', 1),
(11, 'BMW', 'X7', 2600.00, 'images/X7.jpg', 'SUV', 'Jusqu\'à 7 places, suspensions adaptatives, finitions en cuir, écran multimédia avancé', 'Automatique', 1),
(12, 'BMW', 'IX', 2450.00, 'images/X7.jpg', 'SUV', 'La BMW iX incarne l’innovation électrique avec un design futuriste, un intérieur luxueux et des technologies de pointe. Pensée pour offrir confort, puissance et autonomie, elle redéfinit la conduite haut de gamme zéro émission.', 'Automatique', 1),
(13, 'Mercedes', 'EQS', 3000.00, 'images/eqs.jpg', 'Sedan', 'Le Mercedes EQS Sedan est un véhicule électrique de luxe offrant un confort exceptionnel et des performances impressionnantes.', 'Automatique', 1),
(14, 'Mercedes', 'EQS', 4000.00, 'images/eqssuv.jpg', 'SUV', 'Le Mercedes EQS SUV est un véhicule électrique de luxe offrant un confort exceptionnel et des performances impressionnantes.', 'Automatique', 1),
(15, 'Mercedes', 'Grand Sedan', 2300.00, 'images/grandsedan.jpg', 'Sedan', 'Le Mercedes Grand Sedan est un véhicule électrique de luxe offrant un confort exceptionnel et des performances impressionnantes.', 'Automatique', 1),
(16, 'Mercedes', 'CLE', 5000.00, 'images/clecabriolet.jpg', 'Cabriolet', 'Le Mercedes CLE Cabriolet est un véhicule électrique de luxe offrant un confort exceptionnel et des performances impressionnantes.', 'Automatique', 1),
(17, 'Mercedes', 'G-Class', 5000.00, 'images/gsuv.jpeg', 'SUV', 'Le Mercedes G-Class SUV est un véhicule électrique de luxe offrant un confort exceptionnel et des performances impressionnantes.', 'Automatique', 1),
(18, 'Mercedes', 'GLE', 3500.00, 'images/glecoupe.jpg', 'Coupe', 'Le Mercedes GLE Coupe est un véhicule électrique de luxe offrant un confort exceptionnel et des performances impressionnantes.', 'Automatique', 1),
(19, 'Toyota', '2000 GT', 15000.00, 'images/toy1.jpeg', 'Sport', 'Une voiture de sport emblématique des années 1960, conçue en collaboration avec Yamaha. Elle est équipée d\'un moteur avant central et d\'une transmission aux roues arrière.', 'Manuelle', 1),
(20, 'Toyota', 'Supra', 3000.00, 'images/toy2.jpg', 'Sport', 'Équipée d\'un moteur turbo de 3,0 litres en ligne. Elle peut passer de 0 à 100 km/h en seulement 3,9 secondes', 'Automatique', 1),
(21, 'Toyota', 'MR2', 4000.00, 'images/toy3.jpeg', 'Sport', 'Une voiture de sport compacte, connue pour son agilité et ses performances.La MR2 est appréciée pour sa maniabilité et son plaisir de conduite, ce qui en fait une excellente voiture pour les amateurs de sport automobile', 'Manuelle', 1),
(22, 'Toyota', 'Camry', 4000.00, 'images/toy7.jpeg', 'Berline', 'Une berline intermédiaire réputée pour son confort, sa fiabilité et ses performances.La Camry est idéale pour les trajets quotidiens et les longs voyages.', 'Automatique', 1),
(23, 'Toyota', '86', 6000.00, 'images/toy11.jpeg', 'Berline', 'Voiture de sport compacte et agile, appréciée pour ses performances et son plaisir de conduite.La Toyota 86 est conçue pour offrir une expérience de conduite sportive et engageante, idéale pour les amateurs de sensations fortes.', 'Manuelle', 1),
(24, 'Toyota', 'RAV4', 7000.00, 'images/toy12.jpeg', 'SUV', 'SUV populaire, apprécié pour sa polyvalence et ses performances.La RAV4 est idéale pour les trajets quotidiens et les aventures en plein air, offrant confort et fiabilité.', 'Automatique', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
