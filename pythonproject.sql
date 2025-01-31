-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 31 jan. 2025 à 22:50
-- Version du serveur : 11.8.0-MariaDB
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `pythonproject`
--

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add client', 6, 'add_client'),
(22, 'Can change client', 6, 'change_client'),
(23, 'Can delete client', 6, 'delete_client'),
(24, 'Can view client', 6, 'view_client'),
(25, 'Can add adresse', 7, 'add_adresse'),
(26, 'Can change adresse', 7, 'change_adresse'),
(27, 'Can delete adresse', 7, 'delete_adresse'),
(28, 'Can view adresse', 7, 'view_adresse'),
(29, 'Can add user', 8, 'add_user'),
(30, 'Can change user', 8, 'change_user'),
(31, 'Can delete user', 8, 'delete_user'),
(32, 'Can view user', 8, 'view_user'),
(33, 'Can add marchandise', 9, 'add_marchandise'),
(34, 'Can change marchandise', 9, 'change_marchandise'),
(35, 'Can delete marchandise', 9, 'delete_marchandise'),
(36, 'Can view marchandise', 9, 'view_marchandise'),
(37, 'Can add paiement', 10, 'add_paiement'),
(38, 'Can change paiement', 10, 'change_paiement'),
(39, 'Can delete paiement', 10, 'delete_paiement'),
(40, 'Can view paiement', 10, 'view_paiement');

-- --------------------------------------------------------

--
-- Structure de la table `djangoprojectexposer_adresse`
--

CREATE TABLE `djangoprojectexposer_adresse` (
  `id` int(11) NOT NULL,
  `num_rue` int(11) NOT NULL,
  `nom_rue` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `id_client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `djangoprojectexposer_adresse`
--

INSERT INTO `djangoprojectexposer_adresse` (`id`, `num_rue`, `nom_rue`, `city`, `state`, `latitude`, `longitude`, `id_client_id`) VALUES
(1, 12345, 'lomé nyekonakpoe', 'lome', 'IAI', 15, 45, 1);

-- --------------------------------------------------------

--
-- Structure de la table `djangoprojectexposer_client`
--

CREATE TABLE `djangoprojectexposer_client` (
  `id_client` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `img_client` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `djangoprojectexposer_client`
--

INSERT INTO `djangoprojectexposer_client` (`id_client`, `nom`, `prenom`, `img_client`, `email`) VALUES
(1, 'GROUPE6', 'python', 'images/REMI.jpeg', 'GROUPE6@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `djangoprojectexposer_marchandise`
--

CREATE TABLE `djangoprojectexposer_marchandise` (
  `numero_marchandise` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `description` longtext DEFAULT NULL,
  `prix` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `djangoprojectexposer_marchandise`
--

INSERT INTO `djangoprojectexposer_marchandise` (`numero_marchandise`, `nom`, `description`, `prix`) VALUES
(1, 'Ordinateur Portable', 'PC portable 15.6\" Core i5 8Go RAM', 799.99),
(2, 'Smartphone Android', 'Écran 6.4\" 128Go 48MP', 349.9),
(3, 'Casque Bluetooth', 'Réduction de bruit active', 129.5),
(4, 'Souris Gaming', 'RGB 6400DPI 7 boutons', 45),
(5, 'Clavier Mécanique', 'Switch Blue rétroéclairé', 89.9),
(6, 'Écran 24\"', 'Full HD 75Hz IPS', 149.95),
(7, 'Disque Dur 1To', 'SSD NVMe M.2', 79.99),
(8, 'Enceinte Bluetooth', 'Stéréo 20W IPX7', 59),
(9, 'Webcam HD', '1080p micro intégré', 39.9),
(10, 'Tablette Graphique', '4096 niveaux de pression', 129),
(11, 'Chargeur USB-C', '65W GaN compact', 29.95),
(12, 'Batterie Externe', '20000mAh USB PD', 49.9),
(13, 'Lunettes VR', 'Champ de vision 110°', 299),
(14, 'Drone 4K', 'Stabilisation 3 axes', 199.99),
(15, 'Montre Connectée', 'Suivi sportif 7 jours', 89),
(16, 'Imprimante Laser', 'Wi-Fi recto verso', 159.95),
(17, 'Routeur WiFi 6', 'AX3000 Dual Band', 129),
(18, 'NAS 2 Baies', 'RAID 0/1 8To', 299.9),
(19, 'Micro Casque', 'USB avec LED RGB', 69),
(20, 'Écran Tactique', 'Pour streamers 12 boutons', 79.95),
(21, 'Robot Cuiseur', 'Robot multifonction 12 programmes', 149.99),
(22, 'Tapis de Yoga', 'Antidérapant 6mm épaisseur', 29.95),
(23, 'Drone Miniature', 'HD 720p contrôle par smartphone', 79),
(24, 'Réveil Projecteur', 'Projection au plafond capteur luminosité', 59.9),
(25, 'Set de Couteaux', '6 pièces acier inoxydable', 89),
(26, 'Haut-parleur Solaire', 'Étanche IP67 charge USB', 45),
(27, 'Bouilloire Électrique', '1.8L arrêt automatique', 34.95),
(28, 'Tente 4 Saisons', '4 personnes imperméable', 199),
(29, 'Microscope Numérique', 'Grossissement 1000x sortie USB', 129),
(30, 'Set Lego Technique', 'Voiture de course 2500 pièces', 159.95),
(31, 'Thermomètre Intelligent', 'Connecté Bluetooth historique des données', 24.99),
(32, 'Trottinette Électrique', '25km/h autonomie 30km', 499),
(33, 'Miroir Cosmétique', 'LED 3x agrandissement portable', 39.95),
(34, 'Boussole Tactique', 'Étanche avec boussole miroir', 19),
(35, 'Set Pinceaux Maquillage', '12 pièces synthétiques professionnelles', 29),
(36, 'Sac de Randonnée', '60L système hydratation intégré', 129.95),
(37, 'Moniteur Bébé', 'Caméra HD vision nocturne', 89),
(38, 'Balance de Cuisine', 'Précision 0.1g écran LCD', 22.5),
(39, 'Tondeuse Barbe', '12 réglages étanche IPX7', 49.95),
(40, 'Set Golf Enfant', '6 clubs sac inclus', 69),
(41, 'Étagère Murale', 'Acier industriel 120cm', 79),
(42, 'Machine à Popcorn', 'Capacité 1200W bol amovible', 45),
(43, 'Tapis de Souris Gaming', 'RGB 80x30cm surface contrôle', 34.95),
(44, 'Thermomix Alternatif', '10 fonctions cuisson intelligente', 179),
(45, 'Pèse-personne Connecté', 'Analyse graisse/muscle', 55),
(46, 'Téléscope Débutant', 'Grossissement 400x trépied réglable', 149.95),
(47, 'Horloge Atmosphérique', 'Fonctionne avec changement de pression', 299),
(48, 'Set Calligraphie', 'Encres + 10 plumes + papier', 42),
(49, 'Coussin Massant', 'Chauffant 8 nœuds massants', 89.95),
(50, 'Aspirateur Robot', 'Cartographie laser auto-vidange', 399),
(51, 'Piano Numérique', '88 touches semi-lestées', 599),
(52, 'Set Mixologie', '50 accessoires cocktails', 129),
(53, 'Drone Sous-marin', 'Caméra 4K étanche 30m', 349),
(54, 'Réfrigérateur Vin', '12 bouteilles contrôle numérique', 199.95),
(55, 'Machine à Coudre', '110 programmes boutonnière auto', 229),
(56, 'Simulateur Vol', 'Manche + pédales compatible PC', 179),
(57, 'Tapis Chauffant', '150x80cm 6 températures', 129),
(58, 'Vélo d\'Appartement', '12 programmes suivi cardio', 299),
(59, 'Machine à Pain', '15 programmes cuve antiadhésive', 89.95),
(60, 'Hoverboard', '10km/h autonomie 15km', 199),
(61, 'Table de Massage', 'Pliable réglable hauteur', 159),
(62, 'Lunettes Nuit', 'Vision nocturne numérique', 249),
(63, 'Trampoline Jardin', '4m filet de sécurité', 349),
(64, 'Sèche-cheveux Pro', 'Ionique 2200W 3 vitesses', 89),
(65, 'Aquarium Numérique', '100L écran contrôle paramètres', 199.95),
(66, 'Set Poterie', 'Tour + argile + outils', 149),
(67, 'Sèche-linge Condensation', '8kg classe A+++', 429),
(68, 'Tablette Feuille', 'Reconnaissance écriture tactile', 129),
(69, 'Four Pizza', 'Pierre réfractaire 400°C', 159);

-- --------------------------------------------------------

--
-- Structure de la table `djangoprojectexposer_paiement`
--

CREATE TABLE `djangoprojectexposer_paiement` (
  `numero_paiement` int(11) NOT NULL,
  `marchandises` longtext NOT NULL,
  `montant_total` double NOT NULL,
  `date_paiement` datetime(6) NOT NULL,
  `est_valide` tinyint(1) NOT NULL,
  `token` uuid NOT NULL,
  `client_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `djangoprojectexposer_paiement`
--

INSERT INTO `djangoprojectexposer_paiement` (`numero_paiement`, `marchandises`, `montant_total`, `date_paiement`, `est_valide`, `token`, `client_id`) VALUES
(2, '[]', 0, '2025-01-31 21:34:20.480476', 1, '1842901d-4dbc-43c6-b56e-13a0fc787513', 1),
(3, '[]', 0, '2025-01-31 21:43:20.171095', 1, 'e7cdbeca-6eb4-4d60-a917-a6b20905a79f', 1);

-- --------------------------------------------------------

--
-- Structure de la table `djangoprojectexposer_user`
--

CREATE TABLE `djangoprojectexposer_user` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `djangoprojectexposer_user_groups`
--

CREATE TABLE `djangoprojectexposer_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `djangoprojectexposer_user_user_permissions`
--

CREATE TABLE `djangoprojectexposer_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(7, 'DjangoProjectexposer', 'adresse'),
(6, 'DjangoProjectexposer', 'client'),
(9, 'DjangoProjectexposer', 'marchandise'),
(10, 'DjangoProjectexposer', 'paiement'),
(8, 'DjangoProjectexposer', 'user'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2025-01-31 20:08:50.659409'),
(2, 'contenttypes', '0002_remove_content_type_name', '2025-01-31 20:08:50.799936'),
(3, 'auth', '0001_initial', '2025-01-31 20:08:51.261543'),
(4, 'auth', '0002_alter_permission_name_max_length', '2025-01-31 20:08:51.334922'),
(5, 'auth', '0003_alter_user_email_max_length', '2025-01-31 20:08:51.346371'),
(6, 'auth', '0004_alter_user_username_opts', '2025-01-31 20:08:51.357027'),
(7, 'auth', '0005_alter_user_last_login_null', '2025-01-31 20:08:51.370413'),
(8, 'auth', '0006_require_contenttypes_0002', '2025-01-31 20:08:51.375753'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2025-01-31 20:08:51.388410'),
(10, 'auth', '0008_alter_user_username_max_length', '2025-01-31 20:08:51.399821'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2025-01-31 20:08:51.413999'),
(12, 'auth', '0010_alter_group_name_max_length', '2025-01-31 20:08:51.467374'),
(13, 'auth', '0011_update_proxy_permissions', '2025-01-31 20:08:51.478405'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2025-01-31 20:08:51.489862'),
(15, 'DjangoProjectexposer', '0001_initial', '2025-01-31 20:08:52.090815'),
(16, 'DjangoProjectexposer', '0002_marchandise_paiement', '2025-01-31 20:08:52.221355'),
(17, 'admin', '0001_initial', '2025-01-31 20:08:52.395727'),
(18, 'admin', '0002_logentry_remove_auto_add', '2025-01-31 20:08:52.408452'),
(19, 'admin', '0003_logentry_add_action_flag_choices', '2025-01-31 20:08:52.421796'),
(20, 'sessions', '0001_initial', '2025-01-31 20:08:52.592379');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `djangoprojectexposer_adresse`
--
ALTER TABLE `djangoprojectexposer_adresse`
  ADD PRIMARY KEY (`id`),
  ADD KEY `DjangoProjectexposer_id_client_id_e5dcbabc_fk_DjangoPro` (`id_client_id`);

--
-- Index pour la table `djangoprojectexposer_client`
--
ALTER TABLE `djangoprojectexposer_client`
  ADD PRIMARY KEY (`id_client`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `djangoprojectexposer_marchandise`
--
ALTER TABLE `djangoprojectexposer_marchandise`
  ADD PRIMARY KEY (`numero_marchandise`),
  ADD UNIQUE KEY `nom` (`nom`);

--
-- Index pour la table `djangoprojectexposer_paiement`
--
ALTER TABLE `djangoprojectexposer_paiement`
  ADD PRIMARY KEY (`numero_paiement`),
  ADD KEY `DjangoProjectexposer_client_id_d638f27b_fk_DjangoPro` (`client_id`);

--
-- Index pour la table `djangoprojectexposer_user`
--
ALTER TABLE `djangoprojectexposer_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `djangoprojectexposer_user_groups`
--
ALTER TABLE `djangoprojectexposer_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `DjangoProjectexposer_user_groups_user_id_group_id_0132a485_uniq` (`user_id`,`group_id`),
  ADD KEY `DjangoProjectexposer_group_id_91108d57_fk_auth_grou` (`group_id`);

--
-- Index pour la table `djangoprojectexposer_user_user_permissions`
--
ALTER TABLE `djangoprojectexposer_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `DjangoProjectexposer_use_user_id_permission_id_1b12e7b1_uniq` (`user_id`,`permission_id`),
  ADD KEY `DjangoProjectexposer_permission_id_edd76a1e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_DjangoPro` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `djangoprojectexposer_adresse`
--
ALTER TABLE `djangoprojectexposer_adresse`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `djangoprojectexposer_client`
--
ALTER TABLE `djangoprojectexposer_client`
  MODIFY `id_client` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `djangoprojectexposer_marchandise`
--
ALTER TABLE `djangoprojectexposer_marchandise`
  MODIFY `numero_marchandise` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT pour la table `djangoprojectexposer_paiement`
--
ALTER TABLE `djangoprojectexposer_paiement`
  MODIFY `numero_paiement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `djangoprojectexposer_user`
--
ALTER TABLE `djangoprojectexposer_user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `djangoprojectexposer_user_groups`
--
ALTER TABLE `djangoprojectexposer_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `djangoprojectexposer_user_user_permissions`
--
ALTER TABLE `djangoprojectexposer_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `djangoprojectexposer_adresse`
--
ALTER TABLE `djangoprojectexposer_adresse`
  ADD CONSTRAINT `DjangoProjectexposer_id_client_id_e5dcbabc_fk_DjangoPro` FOREIGN KEY (`id_client_id`) REFERENCES `djangoprojectexposer_client` (`id_client`);

--
-- Contraintes pour la table `djangoprojectexposer_paiement`
--
ALTER TABLE `djangoprojectexposer_paiement`
  ADD CONSTRAINT `DjangoProjectexposer_client_id_d638f27b_fk_DjangoPro` FOREIGN KEY (`client_id`) REFERENCES `djangoprojectexposer_client` (`id_client`);

--
-- Contraintes pour la table `djangoprojectexposer_user_groups`
--
ALTER TABLE `djangoprojectexposer_user_groups`
  ADD CONSTRAINT `DjangoProjectexposer_group_id_91108d57_fk_auth_grou` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `DjangoProjectexposer_user_id_1f4f3140_fk_DjangoPro` FOREIGN KEY (`user_id`) REFERENCES `djangoprojectexposer_user` (`id`);

--
-- Contraintes pour la table `djangoprojectexposer_user_user_permissions`
--
ALTER TABLE `djangoprojectexposer_user_user_permissions`
  ADD CONSTRAINT `DjangoProjectexposer_permission_id_edd76a1e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `DjangoProjectexposer_user_id_b5c523f5_fk_DjangoPro` FOREIGN KEY (`user_id`) REFERENCES `djangoprojectexposer_user` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_DjangoPro` FOREIGN KEY (`user_id`) REFERENCES `djangoprojectexposer_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
