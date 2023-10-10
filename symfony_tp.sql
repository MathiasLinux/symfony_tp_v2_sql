-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 10 oct. 2023 à 21:33
-- Version du serveur : 10.6.12-MariaDB-0ubuntu0.22.04.1
-- Version de PHP : 8.1.2-1ubuntu2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `symfony_tp`
--
CREATE DATABASE IF NOT EXISTS `symfony_tp` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `symfony_tp`;

-- --------------------------------------------------------

--
-- Structure de la table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `client_id` int(11) DEFAULT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `day` varchar(100) NOT NULL,
  `time` varchar(100) NOT NULL,
  `subject` longtext DEFAULT NULL,
  `comment` longtext DEFAULT NULL,
  `week` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `booking`
--

INSERT INTO `booking` (`id`, `client_id`, `seller_id`, `day`, `time`, `subject`, `comment`, `week`) VALUES
(5, 1, 3, 'Monday', '10:00', 'Test', 'Yes', 41),
(6, 1, 3, 'Wednesday', '01:00', 'Test 2', 'Yes', 41),
(7, 1, 3, 'Wednesday', '09:30', 'Test 3', 'Yes', 41),
(8, 1, 4, 'Thursday', '12:00', 'Test 4', 'Yes', 41);

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `content` longtext NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `comment`
--

INSERT INTO `comment` (`id`, `author_id`, `content`, `created_at`, `updated_at`, `post_id`) VALUES
(4, 1, 'Test comment yes yes', '2023-10-08 13:21:32', NULL, 7),
(8, 1, 'Hello you', '2023-10-10 20:13:31', NULL, 7),
(9, 1, 'Very great lorem my friend.', '2023-10-10 20:27:13', NULL, 10);

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20231004120241', '2023-10-04 12:02:50', 30),
('DoctrineMigrations\\Version20231004120454', '2023-10-04 12:05:00', 11),
('DoctrineMigrations\\Version20231005194653', '2023-10-05 21:47:02', 24),
('DoctrineMigrations\\Version20231005194859', '2023-10-05 21:49:03', 75),
('DoctrineMigrations\\Version20231006144702', '2023-10-06 16:47:08', 15),
('DoctrineMigrations\\Version20231006144819', '2023-10-06 16:48:22', 42),
('DoctrineMigrations\\Version20231006153527', '2023-10-06 17:35:32', 10),
('DoctrineMigrations\\Version20231006164724', '2023-10-06 18:47:27', 10),
('DoctrineMigrations\\Version20231006203101', '2023-10-06 22:31:07', 27),
('DoctrineMigrations\\Version20231006203935', '2023-10-06 22:39:37', 37),
('DoctrineMigrations\\Version20231006204405', '2023-10-06 22:44:08', 21),
('DoctrineMigrations\\Version20231007192453', '2023-10-07 21:25:15', 15),
('DoctrineMigrations\\Version20231007204113', '2023-10-07 22:41:16', 10),
('DoctrineMigrations\\Version20231007204957', '2023-10-07 22:50:01', 24),
('DoctrineMigrations\\Version20231007210618', '2023-10-07 23:06:22', 13),
('DoctrineMigrations\\Version20231007211028', '2023-10-07 23:10:31', 10),
('DoctrineMigrations\\Version20231008112606', '2023-10-08 13:26:11', 14),
('DoctrineMigrations\\Version20231008112831', '2023-10-08 13:28:34', 22),
('DoctrineMigrations\\Version20231008113027', '2023-10-08 13:30:31', 70);

-- --------------------------------------------------------

--
-- Structure de la table `like`
--

CREATE TABLE `like` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment_id` int(11) NOT NULL,
  `dislike` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `like`
--

INSERT INTO `like` (`id`, `user_id`, `comment_id`, `dislike`) VALUES
(11, 1, 4, 0),
(37, 1, 8, 1),
(38, 1, 9, 0);

-- --------------------------------------------------------

--
-- Structure de la table `messenger_messages`
--

CREATE TABLE `messenger_messages` (
  `id` bigint(20) NOT NULL,
  `body` longtext NOT NULL,
  `headers` longtext NOT NULL,
  `queue_name` varchar(190) NOT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `available_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `delivered_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `content` longtext NOT NULL,
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `slug` varchar(255) NOT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `post`
--

INSERT INTO `post` (`id`, `name`, `created_at`, `content`, `updated_at`, `slug`, `image_name`, `author`) VALUES
(7, 'Hello guys', '2023-10-06 00:00:00', '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur vulputate massa sapien. Cras elementum enim non nisi ultricies pharetra ut et neque. Suspendisse faucibus nibh vel turpis auctor, sit amet aliquam diam condimentum. Fusce vehicula placerat diam, eu malesuada sem volutpat quis. Donec gravida sit amet nibh eget scelerisque. Nullam at sapien ut erat accumsan tempor quis quis metus. Donec ultrices sollicitudin molestie.<br><br></div><div>Fusce consectetur tortor non aliquet vehicula. Fusce aliquet turpis sit amet nunc fermentum, a dapibus arcu efficitur. Maecenas nec feugiat erat. Suspendisse eget tellus malesuada, tristique purus id, fermentum massa. Suspendisse faucibus volutpat condimentum. Curabitur vitae sem eu sapien tempus pulvinar. Aenean sit amet lacus sit amet nibh finibus finibus. Morbi imperdiet est eu nunc aliquam, et rhoncus diam malesuada.<br><br></div><div>Nullam convallis enim lacus, ac rhoncus nunc fermentum eu. Phasellus tincidunt iaculis ante vitae tincidunt. Integer efficitur eros sit amet mattis porta. Nam non tristique magna. Nulla vitae malesuada nisl. Donec viverra vestibulum fringilla. Proin pellentesque volutpat orci, ac aliquam odio molestie eu. Mauris sed ligula tempor, malesuada ex ut, varius tortor. Fusce sodales odio ut semper accumsan. Quisque sit amet facilisis justo. Nunc ac congue lacus, a porta ipsum. Integer tristique lorem nec commodo fringilla.<br><br></div><div>Nam sollicitudin id lorem in scelerisque. Vestibulum magna eros, tempus sed risus ac, consectetur hendrerit velit. Nulla et nisi sed eros euismod pretium vel in mi. Integer accumsan nunc id dolor iaculis, nec varius lorem pellentesque. Nam turpis ex, vulputate et libero vitae, molestie mollis neque. Nam fermentum dolor ut est mollis congue. Nam vel posuere dolor.<br><br></div><div>Suspendisse potenti. In at volutpat est, eu imperdiet eros. Fusce eu luctus augue. Aenean eget massa congue neque viverra scelerisque. Suspendisse potenti. Maecenas convallis quam sit amet faucibus rhoncus. Fusce malesuada dui quis nunc tempus, a imperdiet elit lacinia. Sed vitae justo vel tellus molestie lobortis.<br><br></div>', '2023-10-06 00:00:00', 'hello-guys', 'gta-iii-heroes-6520548266f02646188815.png', 'mathias.kliem@uha.fr'),
(10, 'My blog post YEAH !', '2023-10-10 00:00:00', '<div>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ullamcorper purus dui, a maximus erat accumsan ut. Nullam a malesuada turpis. Vivamus molestie enim nec efficitur facilisis. Maecenas sit amet elit nec ante auctor dignissim iaculis ac justo. Mauris quis sapien eleifend, ullamcorper odio eget, eleifend diam. Sed scelerisque ex vel mi viverra dictum. Aliquam sit amet sapien et metus ultrices interdum. Mauris tempor, leo et varius mollis, sapien mi maximus dolor, vel luctus est odio in tortor. Aenean ex quam, interdum non pulvinar at, cursus in sapien. Donec nec sodales dui. Proin lacus tortor, ornare eu sapien at, rhoncus condimentum nulla. Mauris vitae porttitor lectus. Aenean at lectus rhoncus, tempus libero in, facilisis odio. In metus velit, molestie in felis eget, pulvinar luctus ipsum. Morbi dignissim, elit a efficitur posuere, erat enim aliquam velit, efficitur laoreet mi sem quis massa. Proin ultrices, dolor vel euismod commodo, arcu nulla sagittis diam, a tempor sem elit in libero.<br><br></div><div>Etiam ut urna felis. Quisque id lobortis ipsum. Fusce sagittis sem non feugiat tincidunt. Sed feugiat sem turpis, non dictum lacus blandit condimentum. Duis aliquet tellus non leo molestie, vel rhoncus augue pharetra. Cras est dui, condimentum nec risus sed, porta consectetur dolor. Mauris ut sagittis lectus. Cras vel ligula porta, viverra est nec, dapibus ipsum. Morbi scelerisque, ante nec placerat dignissim, dolor nisl maximus risus, sit amet rutrum purus ante non elit. Nam mollis ipsum porta ex volutpat accumsan. Cras in erat eget orci vulputate semper in eu odio. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Phasellus vel lectus bibendum lacus consequat accumsan. Vestibulum dignissim risus eget justo egestas, sit amet euismod dolor porttitor. Donec elementum est non nisl tristique sodales.<br><br></div><div>Cras eu augue tincidunt, porta risus ut, vulputate purus. Sed a suscipit metus. Proin varius nibh id mauris tempor, vitae mattis arcu scelerisque. Fusce porttitor sodales lectus, id lobortis lorem porta quis. Aliquam mollis magna tincidunt nunc dictum pharetra. Curabitur id porttitor ante. Proin aliquet, sapien at blandit gravida, dui arcu condimentum velit, in luctus magna massa ac odio. Pellentesque vitae egestas ipsum.<br><br></div><div>Quisque nec nisl enim. Cras a placerat mi. In in vulputate augue. Vivamus cursus maximus nisi sit amet venenatis. Nullam tincidunt mi accumsan nisi rhoncus, efficitur rhoncus odio pretium. Morbi et velit at risus molestie eleifend. Aenean viverra ut tortor quis sodales. Etiam id massa volutpat, pharetra urna eu, semper lectus. Proin luctus quis velit ut mollis. Nullam sodales, ipsum tincidunt tincidunt blandit, metus ipsum rutrum augue, ut volutpat metus urna sed urna. Duis vel volutpat lectus. Nullam ornare iaculis velit, nec tincidunt diam suscipit vel. Ut nec faucibus sapien, sit amet laoreet tellus. Sed lacinia, ex nec mollis lobortis, quam ipsum aliquam ligula, eu sollicitudin diam quam vel mi. In scelerisque mi nunc, in hendrerit erat vehicula sit amet. Vestibulum eget sapien pharetra, convallis quam ut, hendrerit mi.<br><br></div><div>Proin sit amet hendrerit metus, eu feugiat odio. Suspendisse ac neque nisi. Nam sed magna consequat, venenatis elit ac, maximus ipsum. Sed vehicula condimentum massa, ac ultrices felis tincidunt sed. Aenean at vulputate nunc. Nulla eget elementum lectus, ac convallis orci. Duis ornare, ipsum ut egestas vehicula, turpis magna bibendum felis, et placerat est eros vel augue. Nam ex ligula, laoreet id massa non, pulvinar posuere tellus. Mauris cursus condimentum scelerisque. Phasellus vitae urna neque. Quisque mollis quam quis felis congue efficitur. Nam luctus congue metus, nec bibendum eros pretium sed. Nunc at dapibus nibh. Maecenas eu pulvinar dui.<br><br></div><div>Aenean elementum elit non euismod tincidunt. Suspendisse dignissim eros eget enim scelerisque, sed interdum nisl blandit. Cras sagittis ex tellus, id condimentum tellus placerat sed. Nullam fringilla dui felis, euismod euismod elit pretium et. Nulla interdum mollis arcu, quis aliquet risus sollicitudin in. Cras in cursus tellus. Nullam enim mauris, interdum eget volutpat vel, convallis eu ligula. Vestibulum sit amet metus vel leo faucibus fermentum sed in erat. Vivamus ultricies euismod rutrum. Praesent venenatis pharetra lacinia. Suspendisse lacus nibh, tincidunt nec eleifend vel, finibus id ligula. Morbi faucibus vel arcu ac faucibus. Quisque vehicula mollis nibh, vel luctus est accumsan eget. Proin gravida tristique lectus a eleifend. Pellentesque vestibulum urna nunc, id facilisis sem pharetra id.<br><br></div><div>Ut vulputate eget odio sed imperdiet. Etiam elementum lacus ut leo ullamcorper, porttitor lobortis purus vehicula. Suspendisse at ex at augue scelerisque convallis. Nulla vitae arcu ultricies, bibendum massa sit amet, suscipit felis. Quisque ornare luctus venenatis. Vestibulum maximus eu dui id tempus. Etiam tincidunt dolor et eros dignissim tempus. Phasellus erat tellus, sollicitudin non laoreet et, rhoncus in diam. Donec eget risus risus. Curabitur blandit, ipsum vel consequat tincidunt, nunc nunc consequat velit, at tristique turpis nulla quis odio. Vivamus interdum dolor sed felis dictum laoreet. Nam gravida felis eget mauris rhoncus ultrices. Quisque nisi nibh, elementum ac faucibus vitae, mattis id neque. Pellentesque sit amet ligula augue. Aliquam imperdiet ipsum a consequat varius.<br><br></div><div>Proin gravida purus orci, vel feugiat dolor dapibus et. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla in sodales neque, ac vestibulum sem. Nunc non diam vehicula, cursus nunc ut, tincidunt eros. Nam auctor lorem justo, eget sollicitudin libero suscipit vitae. Etiam in nulla gravida, tempus enim rhoncus, hendrerit tortor. Etiam lobortis neque risus, a hendrerit velit lacinia a.<br><br></div><div>Duis eget velit non est tempor varius. Ut interdum mi vitae neque porttitor, gravida vestibulum risus sagittis. Donec lobortis mattis quam, sit amet convallis elit euismod vel. Mauris imperdiet vitae erat vitae luctus. Pellentesque ac neque arcu. Integer et quam dolor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut id augue porta, elementum leo id, vulputate velit. Suspendisse ut vulputate libero, eget efficitur mi. Cras lectus sapien, luctus at est sit amet, mattis ornare nisl. Integer rutrum elementum sapien sit amet congue. Maecenas magna mauris, vulputate commodo euismod non, imperdiet id metus.<br><br></div><div>Vivamus eget ullamcorper risus, vel rutrum orci. Aenean non ante rutrum, pulvinar neque vel, pellentesque est. Cras sed vehicula quam, nec suscipit orci. Proin tincidunt ante tempus ultricies eleifend. Nullam tincidunt nisi malesuada magna posuere, ac gravida ligula mattis. Maecenas sodales ornare ligula, ut fermentum arcu. Curabitur facilisis, tellus et blandit lobortis, tortor nunc facilisis elit, vitae dictum leo magna ac felis. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam at semper erat. Maecenas efficitur nisi hendrerit quam cursus rutrum non eu massa. In feugiat massa ac ex fermentum cursus. Vestibulum placerat luctus neque, blandit blandit lectus vehicula sit amet. Morbi tincidunt id metus malesuada ullamcorper. Donec ut convallis arcu. Ut dignissim, justo et ornare faucibus, velit nunc porttitor purus, et sollicitudin velit turpis non quam. Suspendisse potenti.<br><br></div><div>Sed non tincidunt sem. Nam scelerisque ex sit amet justo laoreet faucibus. In non finibus neque. Integer commodo metus sed risus volutpat, sit amet rhoncus quam accumsan. Etiam viverra mauris sit amet sollicitudin blandit. Suspendisse potenti. Sed bibendum in leo accumsan semper. Morbi mollis, turpis non cursus vestibulum, justo ante interdum lectus, id volutpat magna quam vitae elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Quisque eget semper risus, sit amet pellentesque metus. Aliquam erat volutpat. Duis nunc magna, ullamcorper sed auctor vitae, volutpat tristique ante.<br><br></div><div>Duis scelerisque, sem ut ultrices cursus, magna est ultrices eros, ac lobortis elit justo et felis. Nulla efficitur urna non lorem hendrerit, at porttitor diam interdum. Vestibulum eros arcu, feugiat eget neque in, molestie commodo purus. Donec rutrum tristique ipsum id faucibus. Nam nec felis urna. Vestibulum nec eleifend magna. Integer porta dapibus tortor quis interdum. Aenean fringilla egestas justo, ullamcorper blandit justo sollicitudin a. Vivamus in urna diam.<br><br></div><div>Vivamus vel quam dui. Nulla nec augue convallis dui imperdiet facilisis. Nullam non turpis libero. Vivamus sed rutrum nulla. Curabitur ac placerat sem. Fusce volutpat, nunc suscipit eleifend ornare, leo orci convallis arcu, ut rutrum nisl nibh quis ex. Pellentesque faucibus dignissim dui sed facilisis. Nulla facilisi.<br><br></div><div>Nunc sit amet gravida quam. Sed congue felis quis purus dapibus pulvinar. Ut vitae nisl id elit semper commodo et vel mi. Duis in elementum quam, a ultrices nibh. Nulla viverra tempor efficitur. Nunc dolor quam, ultricies eu efficitur vitae, viverra ut ipsum. Nunc euismod leo libero, vel bibendum libero semper at.<br><br></div><div>Praesent tempor nibh eu dolor pulvinar, quis gravida mauris placerat. Nullam eget ex eu dui blandit venenatis. Pellentesque sed erat eu turpis consequat luctus. Sed iaculis turpis metus, eget consectetur sem aliquam ut. Integer porttitor euismod pulvinar. Cras porta lectus est, ac accumsan massa mollis et. Phasellus sed tempor lorem. Aliquam interdum facilisis velit, et pulvinar augue luctus sed. Nulla in condimentum ex. Morbi sodales, quam non luctus viverra, dolor elit gravida neque, quis gravida libero ligula eget magna. Pellentesque vel eros efficitur, ultrices dolor quis, interdum purus. Quisque imperdiet lectus ut purus malesuada, quis fermentum tortor vulputate. Sed commodo tortor vitae sapien efficitur, a tincidunt ex egestas. Curabitur ac metus et arcu ullamcorper aliquam vel a tellus. Fusce sollicitudin diam a turpis ullamcorper, quis sollicitudin dui consequat. Aliquam euismod purus sed ex consequat, eget sollicitudin nibh tempor.<br><br></div><div>Pellentesque lacinia magna a leo dignissim, ut malesuada nulla mollis. Praesent erat urna, sollicitudin ac dolor eget, sollicitudin rhoncus mi. Etiam vestibulum quam diam. Donec hendrerit dolor sed dui sagittis venenatis at sed risus. Fusce vel tellus blandit, tempor metus vel, scelerisque turpis. Integer ornare sodales dui, nec tempor eros lobortis a. Nam mattis molestie ipsum sit amet malesuada.<br><br></div><div>Integer venenatis pretium libero, sit amet pretium enim porttitor ac. Maecenas ante neque, dictum in enim eu, rhoncus maximus quam. Vivamus ut enim quam. Curabitur aliquet, tortor vel euismod eleifend, neque eros dignissim turpis, ut facilisis tortor ligula vel dui. Integer fermentum imperdiet erat non elementum. Quisque ut vestibulum ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin sollicitudin, odio ut varius maximus, justo nibh facilisis risus, sed tincidunt sem magna eget eros.<br><br></div><div>Cras diam neque, tincidunt nec diam porta, elementum convallis tellus. Sed eget sem vitae lectus tempus faucibus ut id mauris. Donec nunc sem, porta vitae vulputate sit amet, auctor nec odio. Praesent pharetra sed lorem nec auctor. Maecenas at lorem dui. Pellentesque lectus quam, elementum non tincidunt quis, interdum sit amet magna. Aliquam iaculis urna tortor. Vestibulum malesuada, elit eu vestibulum egestas, magna velit laoreet odio, volutpat convallis nisi nunc ac ex. Suspendisse sed suscipit leo, quis finibus felis. Quisque ultricies, mi non aliquet vehicula, justo ligula semper risus, sed blandit sapien quam sed leo.<br><br></div><div>Mauris lorem leo, egestas id nulla in, pretium suscipit magna. Cras luctus sapien in lorem rhoncus consequat. Curabitur vehicula vel neque non consequat. Fusce bibendum at ipsum et tincidunt. Vestibulum blandit tempor elementum. Cras efficitur erat massa, non ultricies tortor sollicitudin vitae. Praesent at suscipit lorem. Vivamus vulputate condimentum velit, sed interdum est condimentum vitae. Cras imperdiet risus id vehicula malesuada. Nulla facilisi. Nam in eleifend erat, ac commodo ipsum. Praesent mi velit, tristique et semper et, dictum vitae risus. In placerat volutpat neque, bibendum dapibus diam auctor sit amet. Ut a justo malesuada, feugiat ligula nec, fermentum tellus.<br><br></div><div>Phasellus eget cursus velit. Mauris feugiat orci dictum arcu tempus suscipit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nunc eget odio tortor. Donec a tellus in mi tempus vestibulum. Phasellus cursus mi libero, at egestas sapien blandit at. Ut scelerisque nisl at purus pretium tristique. Morbi quis erat lacinia enim efficitur scelerisque vel non justo. Quisque et neque quis enim pretium blandit.<br><br></div>', '2023-10-10 20:26:28', 'my-blog-post-yeah', 'imeubles-65259754797b5689725025.jpeg', 'mathias.kliem@uha.fr');

-- --------------------------------------------------------

--
-- Structure de la table `post_tag`
--

CREATE TABLE `post_tag` (
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `post_tag`
--

INSERT INTO `post_tag` (`post_id`, `tag_id`) VALUES
(7, 1),
(7, 3),
(10, 1);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `seller_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `image_name` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL COMMENT '(DC2Type:datetime_immutable)',
  `description` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `seller_id`, `name`, `price`, `quantity`, `image_name`, `updated_at`, `description`) VALUES
(4, 3, 'Computer', 1200, 19, 'thinkpad-arch-652594b742504256375620.jpeg', '2023-10-10 20:15:19', '<div>Lorem <strong>ipsum dolor sit amet</strong>, consectetur adipiscing elit. Duis ac blandit leo, eget facilisis lectus. Proin iaculis metus sit amet consectetur suscipit. Aenean mollis sapien ligula, in bibendum orci condimentum id. Sed ut nibh tempus, sodales orci in, sollicitudin erat. Duis eget varius leo, a eleifend justo. <em>Aliquam nisl sapien, laoreet sollicitudin neque id, pretium feugiat erat. Phasellus pharetra risus a tellus varius gravida.<br></em><br></div><div>Phasellus sagittis, erat ac consectetur congue, dui lectus mollis enim, ac tincidunt ex lorem non magna. Aliquam faucibus tempor euismod. Vivamus cursus eu sapien in interdum. Mauris in dapibus nunc, at vehicula libero. Nam non dapibus sem. Nulla mi purus, faucibus vitae pellentesque faucibus, vestibulum non leo. Suspendisse rhoncus euismod leo at sagittis. Maecenas finibus diam quam, ut sollicitudin risus lobortis ut. Aliquam cursus magna at mi placerat, ac iaculis dui molestie. Duis congue tortor a lectus hendrerit scelerisque. Quisque augue neque, egestas in semper sit amet, tincidunt in mi. Aenean nec varius mi. Sed volutpat, nibh ac fringilla tincidunt, nulla velit vestibulum felis, ac consectetur tortor leo id tellus. Nam eget nibh risus. Pellentesque posuere tincidunt rutrum. Nulla sodales sed ante in cursus.<br><br></div>'),
(5, 4, 'iPhone 15', 999.99, 500, 'iphone15-6525950301e59711647592.jpeg', '2023-10-10 20:16:35', '<div>Sed malesuada lobortis dui, non ultrices nisi faucibus et. Aliquam vulputate enim vitae sagittis accumsan. Mauris auctor malesuada nisi vitae bibendum. Donec id molestie tortor. Ut vitae mi ullamcorper, imperdiet dolor a, auctor mauris. Phasellus eu condimentum metus, tincidunt commodo purus. Sed rhoncus eget arcu cursus porta. Pellentesque non turpis vestibulum, mattis urna quis, porttitor diam. Phasellus pulvinar mi lobortis nulla hendrerit tincidunt. Proin non ligula nisl. Ut in congue justo, sit amet hendrerit purus. Vestibulum id ullamcorper felis, sed vulputate enim. Proin vel risus eros. Proin rhoncus finibus facilisis.</div>'),
(6, 4, 'Netflix', 999999.99, 1, 'netflix-logo-svg-6525961a0b74c566517400.png', '2023-10-10 20:21:14', '<div>The whole Netflix for you and only you !</div>');

-- --------------------------------------------------------

--
-- Structure de la table `seller`
--

CREATE TABLE `seller` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `duration` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `seller`
--

INSERT INTO `seller` (`id`, `title`, `duration`) VALUES
(2, 'Test', NULL),
(3, 'Amazone', NULL),
(4, 'Abey', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `tag`
--

CREATE TABLE `tag` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `tag`
--

INSERT INTO `tag` (`id`, `name`) VALUES
(1, 'Popular'),
(3, 'Latin');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) NOT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`roles`)),
  `password` varchar(255) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `first_name`, `last_name`) VALUES
(1, 'mathias.kliem@uha.fr', '[]', '$2y$13$uj5V0jFdBHLUGUivUy/aHeDqsHWQY.U42aGD5c/1tEpUOY9dyY/Hu', 'Mathias', 'KLIEM'),
(2, 'benjamin.tronchet@uha.fr', '[]', '$2y$13$i48LjzFdAsSo2THmhmrbjOlGq0/s5ImcBPFvOkE9pVCl9vAs3bwuO', 'Benjamin', 'Tronchet');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_E00CEDDE19EB6921` (`client_id`),
  ADD KEY `IDX_E00CEDDE8DE820D9` (`seller_id`);

--
-- Index pour la table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_9474526CF675F31B` (`author_id`),
  ADD KEY `IDX_9474526C4B89032C` (`post_id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `like`
--
ALTER TABLE `like`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_AC6340B3A76ED395` (`user_id`),
  ADD KEY `IDX_AC6340B3F8697D13` (`comment_id`);

--
-- Index pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_75EA56E0FB7336F0` (`queue_name`),
  ADD KEY `IDX_75EA56E0E3BD61CE` (`available_at`),
  ADD KEY `IDX_75EA56E016BA31DB` (`delivered_at`);

--
-- Index pour la table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`post_id`,`tag_id`),
  ADD KEY `IDX_5ACE3AF04B89032C` (`post_id`),
  ADD KEY `IDX_5ACE3AF0BAD26311` (`tag_id`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D34A04AD8DE820D9` (`seller_id`);

--
-- Index pour la table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `like`
--
ALTER TABLE `like`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT pour la table `messenger_messages`
--
ALTER TABLE `messenger_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `seller`
--
ALTER TABLE `seller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `FK_E00CEDDE19EB6921` FOREIGN KEY (`client_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_E00CEDDE8DE820D9` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`id`);

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `FK_9474526C4B89032C` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`),
  ADD CONSTRAINT `FK_9474526CF675F31B` FOREIGN KEY (`author_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `like`
--
ALTER TABLE `like`
  ADD CONSTRAINT `FK_AC6340B3A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_AC6340B3F8697D13` FOREIGN KEY (`comment_id`) REFERENCES `comment` (`id`);

--
-- Contraintes pour la table `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `FK_5ACE3AF04B89032C` FOREIGN KEY (`post_id`) REFERENCES `post` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_5ACE3AF0BAD26311` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04AD8DE820D9` FOREIGN KEY (`seller_id`) REFERENCES `seller` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
