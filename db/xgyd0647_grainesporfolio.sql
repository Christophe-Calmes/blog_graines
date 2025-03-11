-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 11 mars 2025 à 21:45
-- Version du serveur : 8.0.41-0ubuntu0.24.04.1
-- Version de PHP : 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `xgyd0647_grainesporfolio`
--

-- --------------------------------------------------------

--
-- Structure de la table `banIP`
--

CREATE TABLE `banIP` (
  `id` int NOT NULL,
  `BanIP` varchar(60) NOT NULL,
  `dateCreat` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Structure de la table `dataSite`
--

CREATE TABLE `dataSite` (
  `idDataSite` int NOT NULL,
  `titre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `sousTitre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `titreHTML` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `dataSite`
--

INSERT INTO `dataSite` (`idDataSite`, `titre`, `sousTitre`, `description`, `titreHTML`) VALUES
(1, 'R5 - V3', 'Le jeux de figurines recyclées', 'jeux de figurines, recyclé, écologique, règles gratuite', 'Projet R5');

-- --------------------------------------------------------

--
-- Structure de la table `journaux`
--

CREATE TABLE `journaux` (
  `idConnexion` int NOT NULL,
  `ipUser` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `idUser` int NOT NULL DEFAULT '0',
  `login` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `mdpHacker` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `dateHeure` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `okConnexion` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `journaux`
--

INSERT INTO `journaux` (`idConnexion`, `ipUser`, `idUser`, `login`, `mdpHacker`, `dateHeure`, `okConnexion`) VALUES
(1, '::1', 59, 'Aresh', '0', '2025-03-05 22:24:53', 1),
(2, '::1', 1, 'Admin', '0', '2025-03-05 23:27:12', 1),
(3, '::1', 59, 'Aresh', '0', '2025-03-05 23:30:55', 1),
(4, '::1', 58, 'Gestionnaire', '0', '2025-03-05 23:32:15', 1),
(5, '::1', 59, 'Aresh', '0', '2025-03-06 09:14:09', 1),
(6, '::1', 59, 'Aresh', '0', '2025-03-06 09:39:36', 1),
(7, '::1', 0, 'Camille', 'christophe', '2025-03-06 09:39:51', 0),
(8, '::1', 60, 'Camille', '0', '2025-03-06 09:40:03', 1),
(9, '::1', 59, 'Aresh', '0', '2025-03-06 09:44:56', 1),
(10, '::1', 58, 'Gestionnaire', '0', '2025-03-06 14:03:48', 1),
(11, '::1', 59, 'Aresh', '0', '2025-03-07 00:16:30', 1),
(12, '::1', 58, 'Gestionnaire', '0', '2025-03-07 00:18:15', 1),
(13, '::1', 59, 'Aresh', '0', '2025-03-07 00:22:05', 1),
(14, '::1', 59, 'Aresh', '0', '2025-03-09 22:01:20', 1),
(15, '::1', 58, 'Gestionnaire', '0', '2025-03-10 11:07:18', 1),
(16, '::1', 58, 'Gestionnaire', '0', '2025-03-10 11:30:39', 1),
(17, '::1', 1, 'Admin', '0', '2025-03-10 11:32:30', 1),
(18, '::1', 58, 'Gestionnaire', '0', '2025-03-10 11:33:32', 1),
(19, '::1', 59, 'Aresh', '0', '2025-03-10 18:24:02', 1),
(20, '::1', 58, 'Gestionnaire', '0', '2025-03-10 19:56:42', 1),
(21, '::1', 59, 'Aresh', '0', '2025-03-11 13:07:45', 1),
(22, '::1', 59, 'Aresh', '0', '2025-03-11 14:35:00', 1),
(23, '::1', 58, 'Gestionnaire', '0', '2025-03-11 15:01:22', 1),
(24, '::1', 59, 'Aresh', '0', '2025-03-11 15:01:48', 1),
(25, '::1', 59, 'Aresh', '0', '2025-03-11 18:13:59', 1),
(26, '::1', 58, 'Gestionnaire', '0', '2025-03-11 18:26:12', 1),
(27, '::1', 59, 'Aresh', '0', '2025-03-11 18:26:26', 1),
(28, '::1', 58, 'Gestionnaire', '0', '2025-03-11 18:27:26', 1),
(29, '::1', 58, 'Gestionnaire', '0', '2025-03-11 20:26:50', 1),
(30, '::1', 59, 'Aresh', '0', '2025-03-11 20:29:52', 1),
(31, '::1', 58, 'Gestionnaire', '0', '2025-03-11 20:32:29', 1),
(32, '::1', 58, 'Gestionnaire', '0', '2025-03-11 20:48:49', 1),
(33, '::1', 59, 'Aresh', '0', '2025-03-11 20:48:56', 1),
(34, '::1', 58, 'Gestionnaire', '0', '2025-03-11 21:32:03', 1),
(35, '::1', 59, 'Aresh', '0', '2025-03-11 21:32:15', 1),
(36, '::1', 58, 'Gestionnaire', '0', '2025-03-11 21:32:48', 1),
(37, '::1', 59, 'Aresh', '0', '2025-03-11 21:39:17', 1),
(38, '::1', 58, 'Gestionnaire', '0', '2025-03-11 21:41:19', 1),
(39, '::1', 59, 'Aresh', '0', '2025-03-11 21:43:36', 1),
(40, '::1', 58, 'Gestionnaire', '0', '2025-03-11 22:35:13', 1),
(41, '::1', 1, 'Admin', '0', '2025-03-11 22:35:40', 1),
(42, '::1', 58, 'Gestionnaire', '0', '2025-03-11 22:39:04', 1),
(43, '::1', 1, 'Admin', '0', '2025-03-11 22:39:19', 1);

-- --------------------------------------------------------

--
-- Structure de la table `menuNav`
--

CREATE TABLE `menuNav` (
  `idMenuDeroulant` int NOT NULL,
  `titreMenu` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `menuNav`
--

INSERT INTO `menuNav` (`idMenuDeroulant`, `titreMenu`) VALUES
(1, 'Administration du site'),
(6, 'Administration User'),
(12, 'News'),
(13, 'Admin Evenements'),
(15, 'Evenements'),
(16, 'Admin Réserver tables'),
(17, 'Reservations'),
(20, 'Firewall'),
(21, 'Univers'),
(22, 'Special rules'),
(23, 'Special rules membre'),
(24, 'Weapon Gestionnaire'),
(25, 'Weapons Membre'),
(26, 'miniatures'),
(27, 'Vehicles'),
(28, 'Compagnies'),
(29, 'Admin blog'),
(30, 'Administration R5');

-- --------------------------------------------------------

--
-- Structure de la table `modules`
--

CREATE TABLE `modules` (
  `id` int NOT NULL,
  `module` varchar(30) NOT NULL,
  `valide` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `modules`
--

INSERT INTO `modules` (`id`, `module`, `valide`) VALUES
(1, 'Graines', 1),
(16, 'Blog', 1);

-- --------------------------------------------------------

--
-- Structure de la table `navigation`
--

CREATE TABLE `navigation` (
  `idNav` int NOT NULL,
  `nomNav` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cheminNav` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `menuVisible` tinyint(1) NOT NULL,
  `zoneMenu` int NOT NULL,
  `ordre` tinyint NOT NULL,
  `niveau` tinyint(1) NOT NULL,
  `valide` tinyint(1) NOT NULL DEFAULT '1',
  `deroulant` tinyint NOT NULL DEFAULT '0',
  `targetRoute` varchar(22) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `idModule` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `navigation`
--

INSERT INTO `navigation` (`idNav`, `nomNav`, `cheminNav`, `menuVisible`, `zoneMenu`, `ordre`, `niveau`, `valide`, `deroulant`, `targetRoute`, `idModule`) VALUES
(72, 'connexion', 'modules/connexion/connexion.php', 1, 0, 10, 0, 1, 0, '8115637472316835', 1),
(73, 'inscription', 'modules/users/inscription.php', 0, 0, 0, 0, 1, 0, '4427443426545', 1),
(74, 'Deconnexion', 'modules/securiter/deconnexion.php', 1, 0, 20, 2, 1, 0, '98955486766', 1),
(75, 'Deconnexion', 'modules/securiter/deconnexion.php', 1, 0, 20, 1, 1, 0, '11662169526164', 1),
(76, 'Administration du site', 'modules/navigation/erreurNav.php', 1, 0, 1, 2, 1, 1, '55115544685', 1),
(77, 'Ajout lien de nav', 'modules/navigation/menuAdmin/creationNouveuMenu.php', 1, 1, 1, 2, 1, 0, '5681514976767', 1),
(78, 'Titres et SEO', 'modules/dataSite/titreInfo.php', 1, 1, 2, 2, 1, 0, '5686859414440', 1),
(81, 'Brassage des liens', 'modules/navigation/menuAdmin/dynamique.php', 1, 1, 2, 2, 1, 0, '6164478184413185', 1),
(82, 'Ajout menu déroulant', 'modules/navigation/menuAdmin/ajoutMenuDeroulant.php', 1, 1, 2, 2, 1, 1, '7533563623516894', 1),
(85, 'Administration User', 'modules/navigation/erreurNav.php', 1, 0, 1, 2, 1, 6, '365410550445', 1),
(86, 'Users Actif', 'modules/users/administration/droitUser.php', 1, 6, 1, 2, 1, 6, '589126694019', 1),
(87, 'Route Form', 'modules/navigation/menuAdmin/ajoutRouteForm.php', 1, 1, 2, 2, 1, 0, '15906465627969', 1),
(88, 'Users Anciens ', 'modules/users/administration/droitUserNonValide.php', 1, 6, 2, 2, 1, 0, '607516636674', 1),
(89, 'Profil', 'modules/users/administration/profilUser.php', 1, 0, 19, 1, 1, 0, '307414435560642', 1),
(90, 'Profil', 'modules/users/administration/profilUser.php', 1, 0, 1, 2, 1, 0, '1748406274441', 1),
(91, 'Journeaux de log', 'modules/journaux/journaux.php', 1, 20, 1, 2, 1, 0, '1927314512', 1),
(92, 'Admin nav', 'modules/navigation/menuAdmin/adminMenu.php', 1, 1, 2, 2, 1, 0, '01671655102', 1),
(93, 'modification lien nav', 'modules/navigation/menuAdmin/modificationNav.php', 0, 0, 0, 2, 1, 0, '554646861628846', 1),
(95, 'Admin modules', 'modules/navigation/menuAdmin/administrationModules.php', 1, 1, 7, 2, 1, 1, '433625450215', 1),
(99, 'Add roles', 'modules/users/administration/addRole.php', 1, 6, 3, 2, 0, 0, '07235456649081059126', 1),
(100, 'Deco', 'modules/securiter/deconnexion.php', 1, 0, 20, 3, 1, 0, '61437620881', 1),
(101, 'Profil', 'modules/users/administration/profilUser.php', 1, 0, 19, 3, 1, 0, '811359615657566', 1),
(104, 'cgu', 'modules/cgu/cgu.php', 0, 0, 0, 1, 1, 0, '5841545475941', 1),
(136, 'cgu', 'modules/cgu/cgu.php', 0, 0, 0, 0, 1, 0, '6004478660997940', 1),
(137, 'cguUser', 'modules/cgu/cgu.php', 0, 0, 0, 1, 1, 0, '145887415636154', 1),
(138, 'cguUser', 'modules/cgu/cgu.php', 0, 0, 0, 3, 1, 0, '36034669822', 1),
(140, 'Lost Password', 'modules/users/administration/lostPassword.php', 0, 0, 0, 0, 1, 0, '117554256971255', 1),
(141, 'Inscription', 'modules/users/inscription.php', 1, 0, 1, 0, 0, 0, '46902325427385654690', 1),
(148, 'Firewall', 'modules/navigation/erreurNav.php', 1, 0, 2, 2, 1, 20, '9699529468558', 1),
(150, 'IP ban panel', 'modules/journaux/ipBanPanel.php', 1, 20, 2, 2, 1, 0, '9520095251506595', 1),
(151, 'Accueil', 'modules/navigation/pageGeneral.php', 1, 0, 0, 0, 1, 0, '33561986820557', 1),
(152, 'Accueil', 'modules/navigation/pageGeneral.php', 1, 0, 0, 1, 1, 0, '68330289094', 1),
(153, 'Accueil', 'modules/navigation/pageGeneral.php', 1, 0, 0, 2, 1, 0, '02115283624378', 1),
(206, 'Admin blog', 'modules/navigation/erreurNav.php', 1, 0, 3, 3, 1, 29, '5337864953054946', 16),
(207, 'Add new article', 'modules/blog/administration/addNewArticle.php', 1, 29, 1, 3, 1, 0, '862329403034', 16),
(208, 'Add Categories', 'modules/blog/administration/addCategorie.php', 1, 29, 2, 3, 1, 0, '6643646550434462', 16),
(209, 'Acceuil', 'modules/navigation/pageGeneral.php', 1, 0, 1, 3, 1, 0, '52575730289645', 1),
(210, 'paginationArticle', 'modules/blog/public/paginationArticles.php', 0, 0, 0, 0, 1, 0, '50991583625', 16),
(211, 'paginationArticle', 'modules/blog/public/paginationArticles.php', 0, 0, 0, 1, 1, 0, '50489687065', 16),
(212, 'paginationArticle', 'modules/blog/public/paginationArticles.php', 0, 0, 0, 2, 1, 0, '6323656756824404', 16),
(213, 'paginationArticle', 'modules/blog/public/paginationArticles.php', 0, 0, 0, 3, 1, 0, '8541625261', 16),
(214, 'displayOneArticleOfBlog', 'modules/blog/public/displayOneArticle.php', 0, 0, 0, 0, 1, 0, '195653511506070', 16),
(215, 'displayOneArticleOfBlog', 'modules/blog/public/displayOneArticle.php', 0, 0, 0, 1, 1, 0, '2730646367', 16),
(216, 'displayOneArticleOfBlog', 'modules/blog/public/displayOneArticle.php', 0, 0, 0, 2, 1, 0, '65111424598541', 16),
(217, 'displayOneArticleOfBlog', 'modules/blog/public/displayOneArticle.php', 0, 0, 0, 3, 1, 0, '419974085524', 16),
(218, 'displayOneArticleOfBlog', 'modules/blog/administration/displayOneArticleAdmin.php', 0, 0, 0, 3, 1, 0, '4199740845698', 16),
(219, 'Add picture for blog', 'modules/blog/administration/addPictureBlog.php', 1, 29, 3, 3, 1, 0, '2733530154135364', 16);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `idRole` int NOT NULL,
  `typeRole` varchar(15) NOT NULL,
  `accreditation` tinyint DEFAULT NULL,
  `valide` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Déchargement des données de la table `roles`
--

INSERT INTO `roles` (`idRole`, `typeRole`, `accreditation`, `valide`) VALUES
(1, 'Visiteur', 0, 1),
(4, 'Membre', 1, 1),
(6, 'Administrateur', 2, 1),
(9, 'Gestionnaire', 3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `routageForm`
--

CREATE TABLE `routageForm` (
  `idForm` int NOT NULL,
  `chemin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `securiter` tinyint(1) NOT NULL DEFAULT '0',
  `valide` tinyint(1) NOT NULL DEFAULT '1',
  `route` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `idModule` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `routageForm`
--

INSERT INTO `routageForm` (`idForm`, `chemin`, `securiter`, `valide`, `route`, `idModule`) VALUES
(1, 'modules/users/CUD/Create/inscriptionUser.php', 0, 1, '32051150618353524754', 1),
(2, 'modules/securiter/connexionUser.php', 0, 1, '626044355668848249', 1),
(3, 'modules/users/CUD/Update/activationUser.php', 0, 1, '12051668466686995561', 1),
(4, 'modules/navigation/CUD/Create/addLien.php', 2, 1, '4842267612507458', 1),
(5, 'modules/dataSite/CUD/Update/updateDataSite.php', 2, 1, '94526571732912163', 1),
(6, 'modules/navigation/CUD/Create/addMenusDeroulant.php', 2, 1, '821716546668599665', 1),
(7, 'modules/navigation/CUD/Create/addRouteForm.php', 2, 1, '47964416497134541', 1),
(14, 'modules/users/CUD/Update/modAdminUser.php', 2, 1, '45485533324634', 1),
(16, 'modules/users/CUD/Update/emailUser.php', 1, 1, '21174211159753455', 1),
(17, 'modules/users/CUD/Update/loginUser.php', 1, 1, '14605180526997', 1),
(18, 'modules/users/CUD/Update/mdpUser.php', 1, 1, '55692971554761', 1),
(19, 'modules/journaux/deleteLog.php', 2, 1, '9845646709464074561', 1),
(20, 'modules/navigation/CUD/update/updateLienNav.php', 2, 1, '387465805279322674', 1),
(21, 'modules/navigation/CUD/Delete/deleteLienNav.php', 2, 1, '654795232630669845', 1),
(22, 'modules/users/CUD/Update/desincriptionUser.php', 1, 1, '448505614394678646', 1),
(23, 'modules/navigation/CUD/update/updateModule.php', 2, 1, '844163548041396256', 1),
(25, 'modules/navigation/CUD/Create/addModule.php', 2, 1, '6759464022474346894', 1),
(29, 'modules/users/CUD/Create/addRoles.php', 2, 1, '588699406564322', 1),
(56, 'modules/users/CUD/Update/sendToken.php', 0, 1, '926766468786712', 1),
(57, 'modules/users/CUD/Update/updatePassword.php', 0, 1, '464563711554136128', 1),
(63, 'modules/journaux/CD/Delete/deleteBanIP.php', 2, 1, '14875622729497612', 1),
(64, 'modules/journaux/CD/Creat/addIPBAN.php', 2, 1, '6653521264052116232', 1),
(65, 'modules/journaux/CD/Creat/addIPBANfromJounaux.php', 2, 1, '509143100265064', 1),
(129, 'modules/blog/CUD/creat/addNewArticle.php', 3, 1, '248755499484367', 16),
(130, 'modules/blog/CUD/creat/addCategorie.php', 3, 1, '9733518748764265', 16),
(131, 'modules/blog/CUD/update/updateCategorie.php', 3, 1, '4486357813659565', 16),
(132, 'modules/blog/CUD/update/updateArticle.php', 3, 1, '66066469226840626203', 16),
(133, 'modules/blog/CUD/Delete/deleteArticle.php', 3, 1, '56095996566170514055', 16),
(134, 'modules/blog/CUD/creat/addPictureBlog.php', 3, 1, '59211903761656954476', 16);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `idUser` int NOT NULL,
  `token` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `prenom` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nom` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `login` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `mdp` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `valide` tinyint(1) NOT NULL DEFAULT '1',
  `role` tinyint(1) NOT NULL DEFAULT '1',
  `dateCreation` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`idUser`, `token`, `email`, `prenom`, `nom`, `login`, `mdp`, `valide`, `role`, `dateCreation`) VALUES
(1, 'PO8cHYXBvpPit0FM', 'christophe.calmes2020@laposte.net', 'Christophe', 'Calmes', 'Admin', '$2y$10$oADkGPsXhTD1m1.vawEEJevfSC1BwODMOuCHCntUrBQgpV5TmLy6S', 1, 2, '2022-06-12 14:26:13'),
(57, 'w2jbaXpwin', 'christophe.calmes22@gmail.com', 'Christophe', 'Calmes', 'Membre', '$2y$10$XyTgD4YJUyRXmYb5rJ7IGeCw5c..lxXVGNCEw2XdpS6GOtOfzvGfW', 1, 1, '2024-05-15 14:33:10'),
(58, 'N8ZxluECm7', 'gestionnaire@gmail.com', 'Christophe', 'Calmes', 'Gestionnaire', '$2y$10$gIj/T1GuebPFWQwoR0GBcueEDa6Rc30/03E7.WE/Qp6rnbaZUy132', 1, 3, '2024-05-15 16:28:55'),
(59, 'xgCAB3VRIs8Wzzmo', 'aresh@gmail.com', 'Christophe', 'Calmes', 'Aresh', '$2y$10$gt8CLzPRNbKJDBkuMl3DY.etNoPWYRxs/0ll.XgQ6xdIzkzD2GGRS', 1, 1, '2024-06-17 17:19:46'),
(60, 'nb6Kg9sMxZ', 'johnblanche@gmail.com', 'Camille', 'Calmes', 'Camille', '$2y$10$tQEGVWBd.n8i5vM.hWbJIO6A9VgBmY28zwYFS2SHPy1RJtdCBJpQK', 1, 1, '2025-03-05 15:27:50');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `banIP`
--
ALTER TABLE `banIP`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `dataSite`
--
ALTER TABLE `dataSite`
  ADD PRIMARY KEY (`idDataSite`);

--
-- Index pour la table `journaux`
--
ALTER TABLE `journaux`
  ADD PRIMARY KEY (`idConnexion`);

--
-- Index pour la table `menuNav`
--
ALTER TABLE `menuNav`
  ADD PRIMARY KEY (`idMenuDeroulant`);

--
-- Index pour la table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `navigation`
--
ALTER TABLE `navigation`
  ADD PRIMARY KEY (`idNav`),
  ADD KEY `lierModule` (`idModule`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`idRole`);

--
-- Index pour la table `routageForm`
--
ALTER TABLE `routageForm`
  ADD PRIMARY KEY (`idForm`),
  ADD KEY `lienModule` (`idModule`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `banIP`
--
ALTER TABLE `banIP`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `dataSite`
--
ALTER TABLE `dataSite`
  MODIFY `idDataSite` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `journaux`
--
ALTER TABLE `journaux`
  MODIFY `idConnexion` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT pour la table `menuNav`
--
ALTER TABLE `menuNav`
  MODIFY `idMenuDeroulant` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `modules`
--
ALTER TABLE `modules`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `navigation`
--
ALTER TABLE `navigation`
  MODIFY `idNav` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=226;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `idRole` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `routageForm`
--
ALTER TABLE `routageForm`
  MODIFY `idForm` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=140;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `idUser` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `navigation`
--
ALTER TABLE `navigation`
  ADD CONSTRAINT `lierModule` FOREIGN KEY (`idModule`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `routageForm`
--
ALTER TABLE `routageForm`
  ADD CONSTRAINT `lienModule` FOREIGN KEY (`idModule`) REFERENCES `modules` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
