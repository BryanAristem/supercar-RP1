-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mar. 31 mars 2026 à 19:02
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(5, 'bryanrambelo@gmail.com', '$2y$10$HjS2mTPxuSn4n8vE0EIvgO/eZT.w.2Q9enEcasGmTvFa6Kz3/sCOu');

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
(13, 3, 'Service Navette', 'Navette de l\'aéroport vers le véhicule de location');

-- --------------------------------------------------------

--
-- Structure de la table `essai`
--

DROP TABLE IF EXISTS `essai`;
CREATE TABLE IF NOT EXISTS `essai` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `voiture_id` int DEFAULT NULL,
  `voiture_nom` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lieurecup` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `lieudepot` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `daterecup` date DEFAULT NULL,
  `datedepot` date DEFAULT NULL,
  `heurerecup` time DEFAULT NULL,
  `statut` varchar(20) COLLATE utf8mb4_general_ci DEFAULT 'en_attente',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `essai`
--

INSERT INTO `essai` (`id`, `nom`, `prenom`, `email`, `voiture_id`, `voiture_nom`, `lieurecup`, `lieudepot`, `daterecup`, `datedepot`, `heurerecup`, `statut`) VALUES
(1, 'Rambeloarisoa', 'Bryan', 'bryanrambelo@gmail.com', NULL, 'Ferrari F8 Tributo', 'Rose Hill', 'Trianon', '2025-12-05', '2025-12-28', '10:30:00', 'termine'),
(2, 'Dupont', 'Marie', 'marie.dupont@email.com', NULL, 'Lamborghini Huracán', 'Port Louis', 'Quatre Bornes', '2025-12-15', '2025-12-18', '14:00:00', 'en_attente'),
(3, 'Martin', 'Pierre', 'pierre.martin@email.com', NULL, 'Porsche 911 GT3', 'Curepipe', 'Phoenix', '2025-12-20', '2025-12-22', '09:00:00', 'accepte'),
(4, 'Rambeloarisoa', 'Bryan', 'bryanrambelo@gmail.com', NULL, NULL, 'Rose Hill', 'Trianon ', '2025-12-12', '2025-12-22', '12:52:00', 'en_attente'),
(5, 'Rambelo', 'Bryanyves ', 'bryanrambeloarisoa@gmail.com', 20, 'Toyota Supra', 'Rose Hille', 'Trianon', '2025-12-14', '2025-12-24', '14:14:00', 'en_attente'),
(6, 'Rambelo', 'Bryanyves ', 'bryanrambeloarisoa@gmail.com', 20, 'Toyota Supra', 'Rose Hille', 'Trianon', '2025-12-14', '2025-12-24', '14:14:00', 'en_attente'),
(7, 'Rambelo', 'Bryanyves ', 'bryanrambeloarisoa@gmail.com', 20, 'Toyota Supra', 'Rose Hille', 'Trianon', '2025-12-14', '2025-12-24', '14:14:00', 'en_attente'),
(8, 'Rambeloarisoa', 'Bryan', 'bryanrambelo@gmail.com', 16, 'Mercedes CLE', 'Rose Hill', 'rose hill', '2026-03-27', '2026-03-28', '15:53:00', 'en_attente'),
(9, 'Rambeloarisoa', 'Bryan', 'bryanrambelo@gmail.com', 18, 'Mercedes GLE', 'pepe', 'popo', '2026-03-27', '2026-03-28', '06:01:00', 'en_attente');

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
  `photo` varchar(255) DEFAULT 'default.png',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `inscription`
--

INSERT INTO `inscription` (`id`, `nom`, `prenom`, `email`, `ville`, `password`, `date_inscription`, `photo`) VALUES
(1, 'Rambelo', 'Bryan', 'bryanrambelo@gmail.com', 'Quatre Bornes', '$2y$10$gxoYI0N0KIIycsn0whhQ1.MUQYCDIgpOVGq35fU94gofZFqFGFJj.', '2026-03-30 11:46:54', 'uploads/profil_1.jpeg'),
(2, 'Bryan', 'bry', 'bryan@gmail.com', 'Tamatave', '$2y$10$cy3apgcEivrP8.6ucA0gMua03eH5Zung3NAASl3b2q/Z03aYURtRG', '2026-03-30 18:29:34', 'uploads/profil_1774895374_5d4e031e.jpg'),
(3, 'first', 'one', 'one@gmail.com', 'Quatre Bornes', '$2y$10$xQXmj9QuPDuTHtlljQ0VFeGTPqQNCbufKiqh8iFBvfAeh.OWatuTm', '2026-03-30 18:35:38', 'uploads/profil_1774895738_5af62df5.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `expiry` datetime NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `expiry`) VALUES
('supercarsclients@gmail.com', '6e5d2b061092f23a3cf89fbef59271c0bf132cac5264b1a537cf4cb9f5c1f6ed', '2026-03-30 11:01:49');

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
