-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Dim 24 Décembre 2017 à 18:44
-- Version du serveur :  5.7.14
-- Version de PHP :  5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `swinghotel`
--

-- --------------------------------------------------------

--
-- Structure de la table `chambre`
--

CREATE TABLE `chambre` (
  `numero` int(11) NOT NULL,
  `nom` varchar(33) NOT NULL,
  `etage` int(11) NOT NULL,
  `comfort` int(11) NOT NULL,
  `type` varchar(33) NOT NULL,
  `prix` double NOT NULL,
  `Ajoute_par` varchar(100) NOT NULL,
  `employeID` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `chambre`
--

INSERT INTO `chambre` (`numero`, `nom`, `etage`, `comfort`, `type`, `prix`, `Ajoute_par`, `employeID`) VALUES
(1, 'E2C4TS', 2, 4, 'simple', 40, 'a', 38),
(2, 'E2C3TD', 2, 3, 'double', 60, 'a', 38),
(9, 'E3C3TD', 3, 3, 'double', 60, 'cyrine', 30),
(4, 'E3C4TS', 3, 4, 'simple', 40, 'a', 38),
(6, 'E1C1TS', 1, 1, 'simple', 10, 'Narjess', 26),
(8, 'E3C1TS', 3, 1, 'simple', 10, 'Narjess', 26);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `cin` varchar(8) NOT NULL,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `tel1` varchar(11) NOT NULL,
  `tel2` varchar(11) NOT NULL,
  `adresse` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`cin`, `nom`, `prenom`, `tel1`, `tel2`, `adresse`) VALUES
('09339062', 'med', 'bk', '99275343', '34334333', 'SOUSSA'),
('21222333', 'med', 'bk', '98332232', '', 'Sousse'),
('21212121', 'Q', 'Q', '22211122', '', 'S'),
('99933399', 'MED', 'MED', '33232233', '', 'MEEED'),
('08323444', 'ahmed', 'nebli', '99345432', '', 'Tunis');

-- --------------------------------------------------------

--
-- Structure de la table `employe`
--

CREATE TABLE `employe` (
  `id` int(11) NOT NULL,
  `identifiant` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `dateEmbauche` varchar(30) NOT NULL,
  `fonction` enum('Réceptionniste','Responsable','Chef_responsable') DEFAULT NULL,
  `sexe` enum('male','femelle') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `employe`
--

INSERT INTO `employe` (`id`, `identifiant`, `password`, `email`, `dateEmbauche`, `fonction`, `sexe`) VALUES
(21, 'medbk', 'tfadhel', 'med@med', '1-Mai-2018', 'Chef_responsable', 'femelle'),
(24, 'medbarka', 'med', 'medbarka@gmail.com', '20-Mai-2017', 'Réceptionniste', 'male'),
(23, 'medd', 'odkhel', 'med@gmail.com', '4-Juillet-2018', 'Réceptionniste', 'femelle'),
(26, 'Narjess', 's', 'nina@gmail.com', '4-Juin-2017', 'Réceptionniste', 'femelle'),
(27, 'ahmed', 'aha', 'ahmed@gmail.com', '4-Juillet-2017', 'Réceptionniste', 'male'),
(28, 'zied.elle', 'zied', 'zied.elleuch@gmail.com', '4-Mai-2018', 'Réceptionniste', 'male'),
(29, 'med.kerkni', 'echec', 'kerkni.forsen@yahoo.fr', '30-Decembre-2017', 'Réceptionniste', 'male'),
(30, 'cyrine', 'cyro', 'cycy@yahoo.fr', '30-Mai-2017', 'Chef_responsable', 'male');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `num` int(11) NOT NULL,
  `date_debut` datetime NOT NULL,
  `date_fin` datetime NOT NULL,
  `prix` float NOT NULL,
  `payement` varchar(40) NOT NULL,
  `nom_chambre` varchar(33) NOT NULL,
  `ajoute_par` varchar(100) NOT NULL,
  `client` varchar(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `reservation`
--

INSERT INTO `reservation` (`num`, `date_debut`, `date_fin`, `prix`, `payement`, `nom_chambre`, `ajoute_par`, `client`) VALUES
(2, '2017-12-22 00:00:00', '2017-12-23 00:00:00', 60, 'Par chéque', 'E2C3TD', 'Narjess', '09339062'),
(4, '2017-12-18 00:00:00', '2017-12-19 00:00:00', 10, 'Par carte bancaire', 'E3C1TS', 'Narjess', '09339062'),
(5, '2017-12-15 00:00:00', '2017-12-17 00:00:00', 20, 'Par carte bancaire', 'E3C1TS', 'Narjess', '09339062'),
(6, '2017-12-13 00:00:00', '2017-12-14 00:00:00', 20, 'Par chéque', 'E1C1TD', 'Narjess', '09339062'),
(8, '2017-12-30 00:00:00', '2018-01-02 00:00:00', 30, 'Par espéce', 'E3C1TS', 'Narjess', '09339062'),
(12, '2017-12-24 00:00:00', '2017-12-25 00:00:00', 40, 'Par carte bancaire', 'E2C4TS', 'Narjess', '09339062'),
(10, '2017-12-29 00:00:00', '2017-12-31 00:00:00', 40, 'Par espéce', 'E1C1TD', 'Narjess', '09339062'),
(13, '2017-12-30 00:00:00', '2018-01-01 00:00:00', 120, 'Par chéque', 'E2C3TD', 'cyrine', '08323444');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `chambre`
--
ALTER TABLE `chambre`
  ADD PRIMARY KEY (`numero`),
  ADD UNIQUE KEY `nom` (`nom`),
  ADD KEY `employeID` (`employeID`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`cin`);

--
-- Index pour la table `employe`
--
ALTER TABLE `employe`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`num`),
  ADD KEY `client` (`client`),
  ADD KEY `nom_chambre` (`nom_chambre`),
  ADD KEY `ajoute_par` (`ajoute_par`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `chambre`
--
ALTER TABLE `chambre`
  MODIFY `numero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `employe`
--
ALTER TABLE `employe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `num` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
