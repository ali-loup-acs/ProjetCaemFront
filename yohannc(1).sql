-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u1build0.15.04.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Mar 07 Février 2017 à 11:42
-- Version du serveur :  5.6.28-0ubuntu0.15.04.1
-- Version de PHP :  5.6.4-4ubuntu6.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `yohannc`
--

-- --------------------------------------------------------

--
-- Structure de la table `caem_activity`
--

CREATE TABLE IF NOT EXISTS `caem_activity` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `caem_type_activity_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `caem_city`
--

CREATE TABLE IF NOT EXISTS `caem_city` (
`id` int(11) NOT NULL,
  `name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `caem_district`
--

CREATE TABLE IF NOT EXISTS `caem_district` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `caem_city_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `caem_familly`
--

CREATE TABLE IF NOT EXISTS `caem_familly` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `caem_formula`
--

CREATE TABLE IF NOT EXISTS `caem_formula` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `caem_formula_activity`
--

CREATE TABLE IF NOT EXISTS `caem_formula_activity` (
`id` int(11) NOT NULL,
  `caem_activity_id` int(11) DEFAULT NULL,
  `caem_formula_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `caem_instrument`
--

CREATE TABLE IF NOT EXISTS `caem_instrument` (
`id` int(11) NOT NULL,
  `name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `caem_location`
--

CREATE TABLE IF NOT EXISTS `caem_location` (
`id` int(11) NOT NULL,
  `room` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `caem_city_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `caem_membership`
--

CREATE TABLE IF NOT EXISTS `caem_membership` (
`id` int(11) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `caem_people_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `caem_member_activity`
--

CREATE TABLE IF NOT EXISTS `caem_member_activity` (
`id` int(11) NOT NULL,
  `caem_activity_id` int(11) DEFAULT NULL,
  `caem_people_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `caem_payment`
--

CREATE TABLE IF NOT EXISTS `caem_payment` (
`id` int(11) NOT NULL,
  `price` float NOT NULL,
  `date` date NOT NULL,
  `caem_type_payment_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `caem_payments`
--

CREATE TABLE IF NOT EXISTS `caem_payments` (
`id` int(11) NOT NULL,
  `caem_payment_id` int(11) DEFAULT NULL,
  `caem_people_id` int(11) DEFAULT NULL,
  `caem_produit_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `caem_payment_detail`
--

CREATE TABLE IF NOT EXISTS `caem_payment_detail` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `caem_activity_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `caem_people`
--

CREATE TABLE IF NOT EXISTS `caem_people` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `family_name` varchar(255) NOT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `tel_fix` varchar(255) DEFAULT NULL,
  `tel_mob` varchar(255) DEFAULT NULL,
  `postal_code` int(11) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `image_right` tinyint(1) NOT NULL,
  `observation` text,
  `caem_city_id` int(11) DEFAULT NULL,
  `caem_district_id` int(11) DEFAULT NULL,
  `caem_familly_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `caem_people_instrument`
--

CREATE TABLE IF NOT EXISTS `caem_people_instrument` (
`id` int(11) NOT NULL,
  `caem_people_id` int(11) DEFAULT NULL,
  `caem_instrument_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `caem_people_people`
--

CREATE TABLE IF NOT EXISTS `caem_people_people` (
`id` int(11) NOT NULL,
  `caem_people_id` int(11) DEFAULT NULL,
  `caem_people_link_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `caem_people_type_people`
--

CREATE TABLE IF NOT EXISTS `caem_people_type_people` (
  `id` int(11) NOT NULL,
  `caem_people_id` int(11) NOT NULL,
  `caem_type_people_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `caem_plm_activity`
--

CREATE TABLE IF NOT EXISTS `caem_plm_activity` (
`id` int(11) NOT NULL,
  `hour_start` time NOT NULL,
  `hour_end` time NOT NULL,
  `date` date NOT NULL,
  `observation` text NOT NULL,
  `caem_location_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `caem_plm_activity_people`
--

CREATE TABLE IF NOT EXISTS `caem_plm_activity_people` (
`id` int(11) NOT NULL,
  `caem_plm_activity_id` int(11) DEFAULT NULL,
  `caem_member_activity_id` int(11) DEFAULT NULL,
  `caem_prof_activity_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `caem_produit`
--

CREATE TABLE IF NOT EXISTS `caem_produit` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `caem_activity_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `caem_prof_activity`
--

CREATE TABLE IF NOT EXISTS `caem_prof_activity` (
`id` int(11) NOT NULL,
  `caem_activity_id` int(11) DEFAULT NULL,
  `caem_people_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `caem_type_activity`
--

CREATE TABLE IF NOT EXISTS `caem_type_activity` (
`id` int(11) NOT NULL,
  `name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `caem_type_payment`
--

CREATE TABLE IF NOT EXISTS `caem_type_payment` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `caem_type_people`
--

CREATE TABLE IF NOT EXISTS `caem_type_people` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `caem_people_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `caem_user`
--

CREATE TABLE IF NOT EXISTS `caem_user` (
`id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `familly_name` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `caem_user_people`
--

CREATE TABLE IF NOT EXISTS `caem_user_people` (
`id` int(11) NOT NULL,
  `caem_user_id` int(11) DEFAULT NULL,
  `caem_people_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `caem_activity`
--
ALTER TABLE `caem_activity`
 ADD PRIMARY KEY (`id`), ADD KEY `ID_type_activite` (`caem_type_activity_id`);

--
-- Index pour la table `caem_city`
--
ALTER TABLE `caem_city`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `caem_district`
--
ALTER TABLE `caem_district`
 ADD PRIMARY KEY (`id`), ADD KEY `ID_ville` (`caem_city_id`);

--
-- Index pour la table `caem_familly`
--
ALTER TABLE `caem_familly`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `ID` (`id`);

--
-- Index pour la table `caem_formula`
--
ALTER TABLE `caem_formula`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `caem_formula_activity`
--
ALTER TABLE `caem_formula_activity`
 ADD PRIMARY KEY (`id`), ADD KEY `ID_activite` (`caem_activity_id`), ADD KEY `ID_formule` (`caem_formula_id`);

--
-- Index pour la table `caem_instrument`
--
ALTER TABLE `caem_instrument`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `caem_location`
--
ALTER TABLE `caem_location`
 ADD PRIMARY KEY (`id`), ADD KEY `ID_ville` (`caem_city_id`);

--
-- Index pour la table `caem_membership`
--
ALTER TABLE `caem_membership`
 ADD PRIMARY KEY (`id`), ADD KEY `ID_personne` (`caem_people_id`);

--
-- Index pour la table `caem_member_activity`
--
ALTER TABLE `caem_member_activity`
 ADD PRIMARY KEY (`id`), ADD KEY `ID_activite` (`caem_activity_id`), ADD KEY `ID_personne` (`caem_people_id`);

--
-- Index pour la table `caem_payment`
--
ALTER TABLE `caem_payment`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `ID` (`id`), ADD KEY `ID_type` (`caem_type_payment_id`);

--
-- Index pour la table `caem_payments`
--
ALTER TABLE `caem_payments`
 ADD PRIMARY KEY (`id`), ADD KEY `ID_paiement` (`caem_payment_id`), ADD KEY `ID_personne` (`caem_people_id`), ADD KEY `ID_Produit` (`caem_produit_id`);

--
-- Index pour la table `caem_payment_detail`
--
ALTER TABLE `caem_payment_detail`
 ADD PRIMARY KEY (`id`), ADD KEY `ID_activite` (`caem_activity_id`);

--
-- Index pour la table `caem_people`
--
ALTER TABLE `caem_people`
 ADD PRIMARY KEY (`id`), ADD KEY `ID_ville` (`caem_city_id`), ADD KEY `ID_quartier` (`caem_district_id`), ADD KEY `ID_famille` (`caem_familly_id`);

--
-- Index pour la table `caem_people_instrument`
--
ALTER TABLE `caem_people_instrument`
 ADD PRIMARY KEY (`id`), ADD KEY `ID_personne` (`caem_people_id`), ADD KEY `ID_instrument` (`caem_instrument_id`);

--
-- Index pour la table `caem_people_people`
--
ALTER TABLE `caem_people_people`
 ADD PRIMARY KEY (`id`), ADD KEY `ID_personne` (`caem_people_id`), ADD KEY `ID_personne_rattache` (`caem_people_link_id`);

--
-- Index pour la table `caem_people_type_people`
--
ALTER TABLE `caem_people_type_people`
 ADD KEY `caem_people_id` (`caem_people_id`), ADD KEY `caem_type_people_id` (`caem_type_people_id`);

--
-- Index pour la table `caem_plm_activity`
--
ALTER TABLE `caem_plm_activity`
 ADD PRIMARY KEY (`id`), ADD KEY `ID_lieu` (`caem_location_id`);

--
-- Index pour la table `caem_plm_activity_people`
--
ALTER TABLE `caem_plm_activity_people`
 ADD PRIMARY KEY (`id`), ADD KEY `ID_plm_activite` (`caem_plm_activity_id`), ADD KEY `ID_membre_activite` (`caem_member_activity_id`), ADD KEY `ID_prof_activite` (`caem_prof_activity_id`);

--
-- Index pour la table `caem_produit`
--
ALTER TABLE `caem_produit`
 ADD PRIMARY KEY (`id`), ADD KEY `ID_activite` (`caem_activity_id`);

--
-- Index pour la table `caem_prof_activity`
--
ALTER TABLE `caem_prof_activity`
 ADD PRIMARY KEY (`id`), ADD KEY `ID_activite` (`caem_activity_id`), ADD KEY `ID_personne` (`caem_people_id`);

--
-- Index pour la table `caem_type_activity`
--
ALTER TABLE `caem_type_activity`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `caem_type_payment`
--
ALTER TABLE `caem_type_payment`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `caem_type_people`
--
ALTER TABLE `caem_type_people`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `id` (`id`), ADD KEY `ID_personne` (`caem_people_id`), ADD KEY `id_2` (`id`);

--
-- Index pour la table `caem_user`
--
ALTER TABLE `caem_user`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `caem_user_people`
--
ALTER TABLE `caem_user_people`
 ADD PRIMARY KEY (`id`), ADD KEY `caem_user_id` (`caem_user_id`), ADD KEY `caem_people_id` (`caem_people_id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `caem_activity`
--
ALTER TABLE `caem_activity`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `caem_city`
--
ALTER TABLE `caem_city`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `caem_district`
--
ALTER TABLE `caem_district`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `caem_familly`
--
ALTER TABLE `caem_familly`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `caem_formula`
--
ALTER TABLE `caem_formula`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `caem_formula_activity`
--
ALTER TABLE `caem_formula_activity`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `caem_instrument`
--
ALTER TABLE `caem_instrument`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `caem_location`
--
ALTER TABLE `caem_location`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `caem_membership`
--
ALTER TABLE `caem_membership`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `caem_member_activity`
--
ALTER TABLE `caem_member_activity`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `caem_payment`
--
ALTER TABLE `caem_payment`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `caem_payments`
--
ALTER TABLE `caem_payments`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `caem_payment_detail`
--
ALTER TABLE `caem_payment_detail`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `caem_people`
--
ALTER TABLE `caem_people`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `caem_people_instrument`
--
ALTER TABLE `caem_people_instrument`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `caem_people_people`
--
ALTER TABLE `caem_people_people`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `caem_plm_activity`
--
ALTER TABLE `caem_plm_activity`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `caem_plm_activity_people`
--
ALTER TABLE `caem_plm_activity_people`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `caem_produit`
--
ALTER TABLE `caem_produit`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `caem_prof_activity`
--
ALTER TABLE `caem_prof_activity`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `caem_type_activity`
--
ALTER TABLE `caem_type_activity`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `caem_type_payment`
--
ALTER TABLE `caem_type_payment`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `caem_type_people`
--
ALTER TABLE `caem_type_people`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `caem_user`
--
ALTER TABLE `caem_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `caem_user_people`
--
ALTER TABLE `caem_user_people`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `caem_activity`
--
ALTER TABLE `caem_activity`
ADD CONSTRAINT `caem_activity_ibfk_1` FOREIGN KEY (`caem_type_activity_id`) REFERENCES `caem_type_activity` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `caem_district`
--
ALTER TABLE `caem_district`
ADD CONSTRAINT `caem_district_ibfk_1` FOREIGN KEY (`caem_city_id`) REFERENCES `caem_city` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `caem_formula_activity`
--
ALTER TABLE `caem_formula_activity`
ADD CONSTRAINT `caem_formula_activity_ibfk_1` FOREIGN KEY (`caem_activity_id`) REFERENCES `caem_activity` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `caem_formula_activity_ibfk_2` FOREIGN KEY (`caem_formula_id`) REFERENCES `caem_formula` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `caem_location`
--
ALTER TABLE `caem_location`
ADD CONSTRAINT `caem_location_ibfk_1` FOREIGN KEY (`caem_city_id`) REFERENCES `caem_city` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `caem_membership`
--
ALTER TABLE `caem_membership`
ADD CONSTRAINT `caem_membership_ibfk_1` FOREIGN KEY (`caem_people_id`) REFERENCES `caem_people` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `caem_member_activity`
--
ALTER TABLE `caem_member_activity`
ADD CONSTRAINT `caem_member_activity_ibfk_1` FOREIGN KEY (`caem_activity_id`) REFERENCES `caem_activity` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `caem_member_activity_ibfk_2` FOREIGN KEY (`caem_people_id`) REFERENCES `caem_people` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `caem_payment`
--
ALTER TABLE `caem_payment`
ADD CONSTRAINT `caem_payment_ibfk_1` FOREIGN KEY (`caem_type_payment_id`) REFERENCES `caem_type_payment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `caem_payments`
--
ALTER TABLE `caem_payments`
ADD CONSTRAINT `caem_payments_ibfk_1` FOREIGN KEY (`caem_payment_id`) REFERENCES `caem_payment` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `caem_payments_ibfk_2` FOREIGN KEY (`caem_people_id`) REFERENCES `caem_people` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `caem_payments_ibfk_3` FOREIGN KEY (`caem_produit_id`) REFERENCES `caem_produit` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `caem_payment_detail`
--
ALTER TABLE `caem_payment_detail`
ADD CONSTRAINT `caem_payment_detail_ibfk_1` FOREIGN KEY (`caem_activity_id`) REFERENCES `caem_activity` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `caem_people`
--
ALTER TABLE `caem_people`
ADD CONSTRAINT `caem_people_ibfk_1` FOREIGN KEY (`caem_city_id`) REFERENCES `caem_city` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `caem_people_ibfk_2` FOREIGN KEY (`caem_district_id`) REFERENCES `caem_district` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `caem_people_ibfk_3` FOREIGN KEY (`caem_familly_id`) REFERENCES `caem_familly` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `caem_people_instrument`
--
ALTER TABLE `caem_people_instrument`
ADD CONSTRAINT `caem_people_instrument_ibfk_1` FOREIGN KEY (`caem_people_id`) REFERENCES `caem_people` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `caem_people_instrument_ibfk_2` FOREIGN KEY (`caem_instrument_id`) REFERENCES `caem_instrument` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `caem_people_people`
--
ALTER TABLE `caem_people_people`
ADD CONSTRAINT `caem_people_people_ibfk_1` FOREIGN KEY (`caem_people_id`) REFERENCES `caem_people` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `caem_people_people_ibfk_2` FOREIGN KEY (`caem_people_link_id`) REFERENCES `caem_people` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `caem_people_type_people`
--
ALTER TABLE `caem_people_type_people`
ADD CONSTRAINT `caem_people_type_people_ibfk_1` FOREIGN KEY (`caem_people_id`) REFERENCES `caem_people` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `caem_people_type_people_ibfk_2` FOREIGN KEY (`caem_type_people_id`) REFERENCES `caem_type_people` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `caem_plm_activity`
--
ALTER TABLE `caem_plm_activity`
ADD CONSTRAINT `caem_plm_activity_ibfk_1` FOREIGN KEY (`caem_location_id`) REFERENCES `caem_location` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `caem_plm_activity_people`
--
ALTER TABLE `caem_plm_activity_people`
ADD CONSTRAINT `caem_plm_activity_people_ibfk_1` FOREIGN KEY (`caem_plm_activity_id`) REFERENCES `caem_plm_activity` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `caem_plm_activity_people_ibfk_2` FOREIGN KEY (`caem_member_activity_id`) REFERENCES `caem_member_activity` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `caem_plm_activity_people_ibfk_3` FOREIGN KEY (`caem_prof_activity_id`) REFERENCES `caem_prof_activity` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `caem_produit`
--
ALTER TABLE `caem_produit`
ADD CONSTRAINT `caem_produit_ibfk_1` FOREIGN KEY (`caem_activity_id`) REFERENCES `caem_activity` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `caem_prof_activity`
--
ALTER TABLE `caem_prof_activity`
ADD CONSTRAINT `caem_prof_activity_ibfk_1` FOREIGN KEY (`caem_activity_id`) REFERENCES `caem_activity` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `caem_prof_activity_ibfk_2` FOREIGN KEY (`caem_people_id`) REFERENCES `caem_people` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `caem_type_people`
--
ALTER TABLE `caem_type_people`
ADD CONSTRAINT `caem_type_people_ibfk_1` FOREIGN KEY (`caem_people_id`) REFERENCES `caem_people` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `caem_user_people`
--
ALTER TABLE `caem_user_people`
ADD CONSTRAINT `caem_user_people_ibfk_1` FOREIGN KEY (`caem_user_id`) REFERENCES `caem_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `caem_user_people_ibfk_2` FOREIGN KEY (`caem_people_id`) REFERENCES `caem_people` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
