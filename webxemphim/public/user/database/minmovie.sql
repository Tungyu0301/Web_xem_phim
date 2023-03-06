-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 29, 2019 lúc 01:03 AM
-- Phiên bản máy phục vụ: 10.4.6-MariaDB
-- Phiên bản PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `minmovie`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `idcate` int(10) NOT NULL,
  `catename` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`idcate`, `catename`) VALUES
(1, 'Hành Động'),
(2, 'Viễn Tưởng'),
(3, 'Hài Hước'),
(4, 'Võ Thuật'),
(5, 'Kinh Dị'),
(6, 'Phiêu Lưu'),
(7, 'Tình Cảm'),
(8, 'Cổ Trang'),
(9, 'Thần Thoại'),
(10, 'Tâm Lý'),
(11, 'Tài Liệu'),
(12, 'Hoạt Hình');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `language`
--

CREATE TABLE `language` (
  `idlanguage` int(10) NOT NULL,
  `language` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `language`
--

INSERT INTO `language` (`idlanguage`, `language`) VALUES
(1, 'Phụ đề Việt'),
(2, 'Thuyết minh'),
(3, 'Lồng tiếng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `moviecabinet`
--

CREATE TABLE `moviecabinet` (
  `idcabinet` int(5) NOT NULL,
  `idmovie` int(10) NOT NULL,
  `iduser` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `moviecabinet`
--

INSERT INTO `moviecabinet` (`idcabinet`, `idmovie`, `iduser`) VALUES
(36, 53, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `movies`
--

CREATE TABLE `movies` (
  `idmovie` int(10) NOT NULL,
  `idcate` int(10) NOT NULL,
  `idnation` int(10) NOT NULL,
  `idyear` int(10) NOT NULL,
  `idlanguage` int(10) NOT NULL,
  `year` int(10) NOT NULL,
  `viename` varchar(100) NOT NULL,
  `engname` varchar(100) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `time` varchar(10) NOT NULL,
  `information` varchar(10000) NOT NULL,
  `trailer` varchar(500) NOT NULL,
  `urlembed` varchar(1000) NOT NULL,
  `urlembed2` varchar(1000) NOT NULL,
  `urlembed3` varchar(1000) NOT NULL,
  `urlembed4` varchar(1000) NOT NULL,
  `urlembed5` varchar(1000) NOT NULL,
  `director` varchar(100) NOT NULL,
  `actor` varchar(1000) NOT NULL,
  `quality` varchar(20) NOT NULL,
  `point` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `movies`
--

INSERT INTO `movies` (`idmovie`, `idcate`, `idnation`, `idyear`, `idlanguage`, `year`, `viename`, `engname`, `image`, `time`, `information`, `trailer`, `urlembed`, `urlembed2`, `urlembed3`, `urlembed4`, `urlembed5`, `director`, `actor`, `quality`, `point`) VALUES
(44, 5, 12, 9, 1, 2019, 'Sứ Giả Của Chúa', 'The Divine Fury', 'https://i.ibb.co/B36SNHG/the-devine-fury.jpg', '129 Phút', 'The Divine Fury kể về một nhà vô địch võ thuật tên Yong Hoo, anh phát hiện ra sức mạnh trừ tà ma ẩn giấu trong mình. Còn rất trẻ, Yong Hoo đã quay lưng lại với Chúa khi lời cầu nguyện tuyệt vọng của anh cho sự sống còn của cha anh không được đáp lại. Rồi một ngày nọ, chàng trai có một vết thương bí ẩn trên lòng bàn tay. Vết thương ấy mở dẫn đến cuộc gặp với một linh mục cấp cao để chống lại các thế lực xấu xa.…', '<iframe width=\"auto\" height=\"auto\" src=\"https://www.youtube.com/embed/AUlx4sP22D8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<video controls autoplay settings class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\">\r\n<source src=\"https://www.googleapis.com/drive/v3/files/1-QBWKA-oZOoiDBtjqQthaT9n3AqJpCw9?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/>\r\n<track src=\"subtitles/the-divine-fury.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default>\r\n</video>', '<iframe width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/raIO0OuMU4HgRKT/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/11e-rujq10m80q7#(2019) Sứ Giả Của Chúa - The Devine Fury.mkv\" frameborder=\"0\" allowfullscreen></iframe>', '', '', 'Kim Joo-Hwan', 'Park Seo-Joon, Ahn Sung-Ki, Woo Do-Hwan', '1080p', '6,2/10 (IMDb)'),
(45, 9, 8, 9, 1, 2019, 'Aladdin và Cây Đèn Thần', 'Aladdin (Live-action)', 'https://i.ibb.co/CVpQD3F/aladdin.jpg', '128 Phút', 'Aladdin 2019 là một phiên bản live action đầy màu sắc sống động và không kém phần hồi hộp, được chuyển thể từ bộ phim hoạt hình kinh điển cả hãng phim Disney. Câu chuyện xoay quanh chàng hoàng tử khu ổ chuột Aladdin – một thanh niên trẻ tuổi dũng cảm và nàng công chúa Jasmine mạnh mẽ, đương nhiên phải kể đến thần đèn Genie – người nắm giữ chìa khóa thay đổi tương lại sau này của họ.', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/AOwfne-QIaw\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<video controls autoplay settings class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\">\r\n<source src=\"https://www.googleapis.com/drive/v3/files/10CSqFTm7FPOmy0wKK9KKHli9Sayi9fKS?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/>\r\n<track src=\"subtitles/aladdin.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default>\r\n</video>', '<iframe width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/LjdfeNySK2I3pyU/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/8e8-la8zxkq83-n#(2019) Aladdin và Cây Đèn Thần - Aladdin.mkv\" frameborder=\"0\" allowfullscreen></iframe>', '', '', 'Guy Ritchie', 'Will Smith, Naomi Scott, Marwan Kenzari', '1080p', '7.4/10 (IMDb)'),
(46, 2, 8, 9, 1, 2019, 'Biệt Đội Siêu Anh Hùng 4: Hồi Kết', 'Avengers 4: Endgame', 'https://i.ibb.co/N9t04R0/avenger-4-endgame.jpg', '181 Phút', 'Biệt Đội Siêu Anh Hùng 4: Tàn Cuộc (Avengers 4: Endgame) ra mắt vào tháng 4/2019 sẽ giải quyết triệt để những khúc mắc đã vạch ra suốt 22 bộ phim trước đó của Vụ trụ điện ảnh Marvel (MCU). Hai tháng sau đó, Người Nhện 2 là khởi đầu hoàn toàn mới dành cho MCU.\r\n\r\nSau sự kiện Thanos làm cho một nửa vũ trụ tan biến và khiến cho biệt đội Avengers thảm bại, những siêu anh hùng sống sót phải tham gia trận chiến cuối cùng trong Avengers: Endgame.', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/JsTxPRKo5Bw\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<video controls autoplay settings class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\">\r\n<source src=\"https://www.googleapis.com/drive/v3/files/1lQfLMhg8sPxdBIMpB3LydHzTlcKQS4PW?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/>\r\n<track src=\"subtitles/avenger-endgame.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default>\r\n</video>', '<iframe width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/DFa95d9WXz4AFk0/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/3z8-1fmlq0lk6lq#(2019) Biệt Đội Siêu Anh Hùng 4: Hồi Kết - Avengers 4: Endgame.mkv\" frameborder=\"0\" allowfullscreen></iframe>', '', '', 'Joe Russo, Anthony Russo', 'Robert Downey Jr, Chris Evans, Chris Hemsworth, Mark Ruffalo, Scarlett Johansson', '1080p', '8.7/10 (IMDb)'),
(47, 2, 8, 8, 1, 2018, 'Biệt Đội Siêu Anh Hùng 3: Cuộc Chiến Vô Cực', 'Avengers 3: Infinity War', 'https://i.ibb.co/zGkDxd8/avenger-3.jpg', '149 Phút', 'Sau chuyến hành trình độc nhất vô nhị không ngừng mở rộng và phát triển vụ trũ điện ảnh Marvel, bộ phim Avengers: Cuộc Chiến Vô Cực sẽ mang đến màn ảnh trận chiến cuối cùng khốc liệt nhất mọi thời đại. Biệt đội Avengers và các đồng minh siêu anh hùng của họ phải chấp nhận hy sinh tất cả để có thể chống lại kẻ thù hùng mạnh Thanos trước tham vọng hủy diệt toàn bộ vũ trụ của hắn.', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/O4XbKp6kN2k\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<video controls autoplay settings class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\">\r\n<source src=\"https://www.googleapis.com/drive/v3/files/11ieTGL7zycu3BVhQLzL1i0cA0dD7z7Ds?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/>\r\n<track src=\"subtitles/avenger-infinity-war.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default>\r\n</video>', '<iframe width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/0uYRtxc8afL9CpK/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/w87lnsnql5863z8#(2018) Biệt Đội Siêu Anh Hùng 3: Cuộc Chiến Vô Cực - Avengers 3: Infinity War.mkv\" frameborder=\"0\" allowfullscreen></iframe>', '', '', 'Anthony Russo, Joe Russo', 'Robert Downey Jr, Chris Evans, Chris Hemsworth, Mark Ruffalo, Scarlett Johansson', '1080p', '8.5/10 (IMDb)'),
(48, 5, 8, 9, 1, 2019, 'Địa Đạo Cá Sấu Tử Thần', 'Crawl', 'https://i.ibb.co/jD0dxBh/crawl.jpg', '87 Phút', 'Khi một cơn bão lớn ập đến Florida, Haley (Kaya Scodelario) đã bỏ qua các lệnh di tản để tìm kiếm người cha mất tích của cô (Barry Pepper). Phát hiện cha mình bị thương nặng trong tầng hầm của ngôi nhà, hai người bị mắc kẹt trong dòng nước lũ chảy xiết. Khi không còn thời gian để thoát khỏi cơn bão mạnh, Haley và cha cô phát hiện ra rằng mực nước dâng cao chỉ là nỗi sợ hãi đầu tiên của họ.', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/xYwC4oxldL0\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<video controls autoplay settings class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\">\r\n<source src=\"https://www.googleapis.com/drive/v3/files/10eAnoEWny6na27KTgo2nThaFt4jZCCGe?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/>\r\n<track src=\"subtitles/crawl.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default>\r\n</video>', '<iframe width=\"100%\" height=\"500px\" src=\"https://s2.gdrive-player.com/video/iEbuEOuiaTKyyyf/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/xwdexa5mw7y7g8d#(2019) Địa Đạo Cá Sấu Tử Thần - Crawl.mkv\" frameborder=\"0\" allowfullscreen></iframe>', '', '', 'Alexandre Aja', 'Kaya Scodelario, Barry Pepper, Morfydd Clark', '1080p', '6.3/10 (IMDb)'),
(49, 3, 12, 9, 1, 2019, 'Lối Thoát Trên Không', 'Exit', 'https://i.ibb.co/dpnvs1c/exit.jpg', '103 Phút', 'Thời đại học, Lee Yong-nam khá nổi tiếng trong câu lạc bộ leo núi. Nhưng cuộc đời sau này của anh thật sự nghiệt ngã hơn nhiều. Dù đã ra trường nhiều năm, Lee Yong-nam vẫn thất nghiệp và đành phải “muối mặt” nhờ cha mẹ xin một công việc tạm bợ qua ngày. Nhân dịp sinh nhật lần thứ 70 của mẹ, Yong-nam nằng nặc đòi tổ chức tiệc tại nơi mà Eui-ji – cô gái anh theo đuổi một thời đang làm việc. Một thảm họa chưa từng có bất ngờ ập tới, toàn bộ Seoul chìm trong một loại khí ga màu trắng gây chết người nếu tiếp xúc trong vài phút. Yong-nam buộc phải vận dụng mọi kỹ năng leo núi của mình, cùng sự giúp đỡ của Eiu-ji để cứu sống gia đình, tất cả khách mời cũng như chính bản thân mình ', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/rpS2kVrYR7A\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<video controls autoplay settings class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\"><source src=\"https://www.googleapis.com/drive/v3/files/15AhaBOYMvNLpaZ_4cEwMszv0DNPbUR2X?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/></video>', '<iframe width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/EMvikT4O5pxq61i/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/xwdexa5me-8n-y1#(2019) Lối Thoát Trên Không - Exit.mp4\" frameborder=\"0\" allowfullscreen></iframe>', '<iframe src=\"//playerdrive.com//player/158569\" width=\"100%\" height=\"390\" frameborder=\"0\" scrolling=\"no\" allowfullscreen></iframe>', '<iframe width=\"695\" height=\"390\" src=\"https://playhydrax.com/?v=76E6hP7eY\" frameborder=\"0\" scrolling=\"0\" allowfullscreen></iframe>', 'Lee Sang-Geun', 'Cho Jung-Seok, Yoona, Ko Du-Shim', '1080p', '7/10 (IMDb)'),
(50, 12, 8, 9, 1, 2019, 'Vua Sư Tử', 'The Lion King', 'https://i.ibb.co/RyJpjBC/lion-king.jpg', '118 Phút', 'Bộ phim Vua Sư Tử được đạo diễn bởi Jon Favreau sẽ đưa khán giả đến với xavan Châu Phi rộng lớn nơi vị vua tương lai Simba được sinh ra. Tuy là người kế vị ngai vàng chính thức nhưng Simba phải đương đầu với những âm mưu của Scar, người chú ruột luôn toan tính chiếm lấy ngôi báu.\r\n\r\nCuộc chiến ở Pride Rock trở nên khốc liệt hơn bao giờ hết và đỉnh điểm là việc chú sư tử Simba bị lưu đày khỏi quê hương. Với sự giúp đỡ của 2 người bạn mới Timon và Pumbaa, Simba dần học cách trưởng thành và quay trở về để giành lại những gì vốn dĩ thuộc về cậu. Bằng kĩ xảo đồ họa ấn tượng và âm nhạc sống động, Vua Sư Tử sẽ tái hiện lại những nhân vật mà khán giả yêu mến theo một cách hoàn toàn mới.', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/QBepxTLc0BY\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<video controls autoplay settings class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\">\r\n<source src=\"https://www.googleapis.com/drive/v3/files/1-AjMQ-sdGKL4ihy6WzArE1141WxP6dyj?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/>\r\n<track src=\"subtitles/the-lion-king.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default>\r\n</video>', '<iframe width=\"100%\" height=\"300\" src=\"https://s2.gdrive-player.com/video/fSJGjeYxp44PBHu/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/l-076sn27r11grz#(2019) Vua Sư Tử - The Lion King.mkv\" frameborder=\"0\" allowfullscreen></iframe>', '', '', 'Jon Favreau', 'Chiwetel Ejiofor, James Earl Jones, John Kani, Keegan-Michael', '1080p', '7.1/10 (IMDb)'),
(51, 1, 8, 9, 1, 2019, 'Quá Nhanh Quá Nguy Hiểm: Hobbs và Shaw', 'Fast & Furious Presents: Hobbs & Shaw', 'https://i.ibb.co/rG7bfJS/fast-and-furious-hobbs-and-shaw.jpg', '137 Phút', 'Sau 8 phim với phần doanh thu chạm mức 5 tỉ đô la Mỹ toàn cầu, giờ đây thương hiệu Fast & Furious sẽ trở lại với một phần ngoại truyện hoàn toàn độc lập với sự tham gia của Dwayne Johnson trong vai Luke Hobbs và Jason Statham trong vai Deckard Shaw trong Hobbs & Shaw.\r\n\r\nCâu chuyện giữa hai người tưởng như không đội trời chung là Đặc vụ An ninh Ngoại giao Mỹ Luke Hobbs và tên tội phạm đánh thuê khét tiếng Deckard Shaw khi họ bất đắc dĩ phải bắt tay hợp tác nhằm ngăn chặn âm mưu của trùm phản diện cực nguy hiểm trong diện bí ẩn Brixton.', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/5ds_R_K5-fc\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<video controls autoplay settings class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\">\r\n<source src=\"https://www.googleapis.com/drive/v3/files/1-id4PFObLzxQEjI33dtxqiP1hlwKz_7h?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/>\r\n<track src=\"subtitles/fast-and-furious-hobbs-and-shaw.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default>\r\n</video>', '<iframe width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/MLFYXQfGxl3FNnp/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/2ke-2t2y0w7q46j#(2019) Quá Nhanh Quá Nguy Hiểm: Hobbs và Shaw - Fast & Furious Presents Hobbs & Shaw.mkv\" frameborder=\"0\" allowfullscreen></iframe>', '', '', 'David Leitch', 'Dwayne Johnson, Jason Statham, Idris Elba', '1080p', '6.6/10 (IMDb)'),
(52, 10, 12, 9, 1, 2019, 'Thân Chủ Đầu Tiên', 'My First Client', 'https://i.ibb.co/CwMYhHp/my-first-client.jpg', '114 Phút', 'Jung Yeob (Lee Dong Hwi) là một luật sư trẻ nhiều tham vọng. Anh không ngờ \"thân chủ\" đầu tiên của mình lại là một cô bé mới 10 tuổi tên Da Bin (Choi Myung Bin). Cô bé khăng khăng khẳng định mình đã trót giết chết đứa em trai bảy tuổi. Trong khi đó, mẹ Da Bin đang ngầm che giấu một bí mật động trời. ', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/jsbzVNF3Anw\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<video controls autoplay settings class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\"><source src=\"https://www.googleapis.com/drive/v3/files/1ZF1SuvL11TAoLOk5VgYqdc0ruCEephiK?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/></video>', '<iframe width=\"100%\" height=\"395\" src=\"https://s2.gdrive-player.com/video/8dNIYkgY4Ywuvnd/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/dm-l3txq-35568p#(2019) Thân Chủ Đầu Tiên - My First Client.mp4\" frameborder=\"0\" allowfullscreen></iframe>', '<iframe src=\"//playerdrive.com//player/158570\" width=\"100%\" height=\"390\" frameborder=\"0\" scrolling=\"no\" allowfullscreen></iframe>', '<iframe width=\"695\" height=\"390\" src=\"https://playhydrax.com/?v=kc8fG0BvA\" frameborder=\"0\" scrolling=\"0\" allowfullscreen></iframe>', 'Jang Gyu-Sung', 'Lee Dong-Hwi, Yoo-Sun, Choi Myung-Bin', '1080p', '7.0/10 (IMDb)'),
(53, 1, 8, 9, 1, 2019, 'Tài Xế Bất Đắc Dĩ', 'Stuber', 'https://i.ibb.co/pQjpb1X/stuber.jpg', '93 Phút', 'Khi một tài xế Uber hiền lành có tên Stu (Kumail Nanjiani) đón một hành khách (Dave Bautista), thực chất là một cảnh sát đang truy đuổi theo dấu vết của một tên sát nhân tàn bạo, anh ta lao vào một thử thách mà phải luôn cố giữ bình tĩnh, giữ mạng sống để nhận đánh giá 5 sao.', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/i5l6a5RiR1E\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<video controls autoplay settings class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\">\r\n<source src=\"https://www.googleapis.com/drive/v3/files/1WxZmmcyr8Ks_zL48fxELjO3ES08qHVXK?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/>\r\n<track src=\"subtitles/stuber.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default>\r\n</video>', '<iframe width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/0SNX4VtpB9rSjni/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/g23x1u-4lqpwz1d#(2019) Tài Xế Bất Đắc Dĩ - Stuber.mkv\" frameborder=\"0\" allowfullscreen></iframe>', '', '', 'Michael Dowse', 'Dave Bautista, Kumail Nanjiani, Mira Sorvino', '1080p', '6.2/10 (IMDb)'),
(54, 8, 12, 9, 1, 2019, 'Chuyện Chàng Kỹ Nam', 'Homme Fatale', 'https://i.ibb.co/1rxWryd/homme-tale.jpg', '110 Phút', 'Heo Saek (Lee Joon Ho đóng) là một chàng trai trẻ đẹp trai, mẹ cậu là một kỹ nữ và cậu lớn lên trong kỹ phường. Cậu trở thành kỹ nam đầu tiên ở Joseon, trong khoảng thời gian mà những người phụ nữ bị chèn ép và chịu đựng đau khổ. Trong một lần tình cờ, cậu đã gặp được người con gái khiến cậu trúng tiếng sét ái tình – Hae Won. Hae Won là một tiểu thư xinh đẹp với lối suy nghĩ lạc quan và cởi mở. Nhưng liệu Heo Saek và Hae Won có đến được với nhau khi ngăn cách họ là khác biệt tầng lớp và thân phận? ', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/3M7nnu0Kvhk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<video controls settings autoplay class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\"><source src=\"https://www.googleapis.com/drive/v3/files/1ppZin_ZPoWiQTXO7Iy5b__ioT9Fdcw86?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/></video>', '<iframe width=\"100%\" height=\"500px\" src=\"https://s2.gdrive-player.com/video/RmxOLoMyvvbX2km/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/yx0yrue6g5lp0xn#(2019) Chuyện Chàng Kỹ Nam - HOMME FATALE.mp4\" frameborder=\"0\" allowfullscreen></iframe>', '<iframe src=\"//playerdrive.com//player/158572\" width=\"100%\" height=\"390\" frameborder=\"0\" scrolling=\"no\" allowfullscreen></iframe>', '<iframe width=\"695\" height=\"390\" src=\"https://playhydrax.com/?v=6ttWXnlX8\" frameborder=\"0\" scrolling=\"0\" allowfullscreen></iframe>', 'Nam Dae-Joong', 'Lee Joon-Ho, Jung So-Min, Ye Ji-Won', '1080p', '6.4/10 (IMDb)'),
(56, 2, 8, 7, 1, 2017, 'Siêu Bão Địa Cầu', 'Geostorm', 'https://i.ibb.co/9TSkPt7/geostorm.jpg', '109 Phút', 'Bộ phim nói về viễn tưởng tương lại khi sự biến đổi khí hậu thảm khốc gây nguy hiểm cho sự sống còn của Trái Đất, các chính phủ trên thế giới đã thống nhất với nhau và tạo ra một mạng lưới các vệ tinh. Mỗi khi muốn thay đổi thời tiết thì các vệ tinh này sẽ tác động lên mây, gió của bầu khí quyển Trái đất và tạo ra hiệu ứng như ý muốn. Nhưng những việc này làm trái với thiên nhiên của tạo hóa đều có thể gây ra những hậu quả nghiêm trọng, những vệ tinh thời tiết này dần bị hư hỏng và gây ra hàng loạt thảm họa thiên nhiên trên khắp thế giới. ', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/-0USyJ05eys\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<video controls settings class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\">\r\n	<source src=\"https://www.googleapis.com/drive/v3/files/1mWReEGmvwFV22nOzLFpjiU7Pg7nd6x6z?alt=media&key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/>\r\n	<track src=\"subtitles/geostorm.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default></video>', '<iframe width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/FFB5KQmMcYoLwPO/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/m8rdzs5nk82w834#(2017) Siêu Bão Địa Cầu - Geostorm.mp4\" frameborder=\"0\" allowfullscreen></iframe>', '', '', 'Dean Devlin', 'Gerard Butler, Jim Sturgess, Abbie Cornish', '1080p', '5.3/10 (IMDb)'),
(57, 1, 1, 9, 3, 2019, 'Hai Phượng', 'Furie', 'https://i.ibb.co/DRCPhPc/haiphuongposter.jpg', '100 Phút', 'Bộ phim là hành trình nghẹt thở và căng thẳng của bà mẹ đơn thân Hai Phượng (Ngô Thanh Vân) khi phải đối đầu với cả 1 đường dây tội phạm bắt cóc và buôn bán nội tạng xuyên quốc gia để cứu đứa con gái bé bỏng Mai (Mai Cát Vi). Để cứu được con, Hai Phượng chỉ có 14 tiếng đồng hồ rượt đuổi từ Cần Thơ, Sài Gòn cho đến Phan Thiết, và phải đối đầu với rất nhiều giang hồ cộm cán, sẵn sàng tiêu diệt ai dám cản đường chúng. Hành trình cứu con của Hai Phượng càng trở nên gian nan và khó khăn hơn khi bất kỳ một sơ xuất nhỏ nào cũng sẽ phải trả giá bằng chính mạng sống của chính cô và bé Mai. ', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/THXPCF6UHh8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<video controls settings autoplay class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\"><source src=\"https://www.googleapis.com/drive/v3/files/1zCon_-POa0F9mtqlgAgm1Rt2b5vCtizP?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/></video>', '<iframe src=\"//playerdrive.com//player/158571\" width=\"100%\" height=\"390\" frameborder=\"0\" scrolling=\"no\" allowfullscreen></iframe>', '', '<iframe width=\"100%\" height=\"500px\" src=\"https://s2.gdrive-player.com/video/oNF4NwCxK0jnHeY/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe width=\"695\" height=\"390\" src=\"https://playhydrax.com/?v=mL5l62ts_\" frameborder=\"0\" scrolling=\"0\" allowfullscreen></iframe>', 'Lê Văn Kiệt', 'Ngô Thanh Vân, Yaya Trương Nhi, Mai Cát Vi', '1080p', '6.4/10 (IMDb)'),
(58, 4, 5, 8, 1, 2018, 'Huyền Thoại Kung Fu', 'Kung Fu League', 'https://i.ibb.co/6JV3Pcr/kung-fu-league.jpg', '102 Phút', 'Diệp Vấn, Trần Chân, Hoàng Phi Hồng, Hoắc Nguyên Giáp – 4 vị tôn sư võ thuật của Trung Quốc – sẽ cùng góp mặt trong HUYỀN THOẠI KUNG FU. Bốn võ sư, bốn môn phái, đại diện cho bốn thời đại khác nhau gặp nhau và gây ra vô số tình huống dở khóc dở cười. Liệu những rắc rối của thời hiện đại có khiến tứ đại tôn sư lừng danh thiên hạ trong quá khứ phải chùn bước?', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/NrWTDVAK2GQ\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<iframe width=\"100%\" height=\"500px\" src=\"https://s2.gdrive-player.com/video/XkcazX16qGpuhnt/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/xwdexa5merwg8xm#(2018) Huyền Thoại Kung Fu - Kung Fu League.mkv\" frameborder=\"0\" allowfullscreen></iframe>', '', '', '', 'Jeffrey Lau', 'Kwok-Kwan Chan, Andy On, Yu-Hang To', '1080p', '5.9/10 (IMDb)'),
(59, 10, 6, 8, 1, 2018, 'Chàng Mù Số Nhọ', 'Andhadhun', 'https://i.ibb.co/hDNvCBJ/andhadhun.jpg', '139 Phút', 'Akash, một nghệ sĩ piano mù đang chuẩn bị cho một buổi hòa nhạc ở London. Xe tay ga của anh ta va phải Akash và khi biết anh ấy một nghệ sĩ piano, cô ấy đưa anh ấy đến nhà hàng Franco do cha cô ấy điều hành và mời anh ấy làm việc tại đó.\r\n\r\nĐột nhiên, một loạt các vụ án mạng liên tiếp xảy ra đều có mối liên hệ với chàng mù ấy. Liệu tội ác đó có được phơi bày ra ánh sáng hay sẽ bị chôn vùi theo đôi mắt của người nghệ sĩ mù? ', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/2iVYI99VGaw\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<video controls autoplay settings class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\">\r\n<source src=\"https://www.googleapis.com/drive/v3/files/11oJIP4Sw80qEbvGsMqBxGWnq-Tc3Dok8?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/>\r\n<track src=\"subtitles/andhadhun.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default>\r\n</video>', '<iframe width=\"100%\" height=\"500px\" src=\"https://s2.gdrive-player.com/video/9aJMXjWwmSZLYyR/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/z8rxpsj-w5nx2zp#(2018) Chàng Mù Số Nhọ - Andhadhun.mkv\" frameborder=\"0\" allowfullscreen></iframe>', '', '', 'Sriram Raghavan', 'Tabu, Ayushmann Khurrana, Radhika Apte', '1080p', '8.4/10 (IMDb)'),
(60, 10, 6, 8, 1, 2018, 'Cuộc Đời Một Ngôi Sao', 'Sanju', 'https://i.ibb.co/zFcYHWM/sanju.jpg', '155 Phút', 'Sanju là một bộ phim tiểu sử về cuộc sống gây tranh cãi của nam diễn viên Sanjay Dutt: từ sự nghiệp điện ảnh, án tù và cuộc sống cá nhân. ', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/1J76wN0TPI4\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<video controls settings autoplay class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\"><source src=\"https://www.googleapis.com/drive/v3/files/10ud3OpYj2VT36o_8P3Bw1NHhQZ2okWr6?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/><track src=\"subtitles/sanju.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default></video>', '<iframe width=\"100%\" height=\"500px\" src=\"https://s2.gdrive-player.com/video/HK2McYDQvQTYtPD/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/g23x1u-42-4m683#(2018) Cuộc Đời Một Ngôi Sao - Sanju.mkv\" frameborder=\"0\" allowfullscreen></iframe>', '', '', 'Rajkumar Hirani', 'Ranbir Kapoor, Vicky Kaushal, Anushka Sharma', '1080p', '7.8/10 (IMDb)'),
(61, 12, 8, 9, 1, 2019, 'Đẳng Cấp Thú Cưng 2', 'The Secret Life of Pets 2', 'https://i.ibb.co/4VwRgn9/the-secret-life-of-pets.jpg', '97 Phút', 'Cũng như bao thú cưng khác, khi đến phòng khám Max đã không giấu nổi vẻ âu lo trên khuôn mặt. Đã vậy, chú chó tội nghiệp còn gặp thêm nhiều người bạn đồng loại vô cùng bất bình thường. Đầu tiên là chú mèo xám thân thiện bắt chuyện với Max, trấn an cậu rằng bác sĩ thú y ở đây rất giỏi nhất ngành về chữa trị chứng… rối loạn cư xử. Và rồi thì chú mèo bắt đầu “nổi đóa” cào cấu chủ. Lần lượt sau đó Max được gặp chú chuột hamster xám điên cuồng “chạy bộ” giảm cân, một chú chó nâu luôn phân vân rằng liệu mình có đủ ngoan, lại còn cả một cặp mèo sinh đôi có nụ cười vô cùng quái dị. Tránh vỏ dưa lại gặp vỏ dừa, Max vốn đã âu lo lại càng trở nên sợ sệt hơn với cuộc thăm khám trước mắt.', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/u73LnlLaWWk\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<video controls settings autoplay class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\"><source src=\"https://www.googleapis.com/drive/v3/files/1Rtj6qVoCRfIEN0VAXIAaHcb-gJTEWvSH?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/><track src=\"subtitles/the-secret-life-of-pets.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default></video>', '<iframe width=\"100%\" height=\"500px\" src=\"https://s2.gdrive-player.com/video/1VEQY4KwrQtP5w4/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/w87lnsnqlzn5pdw#(2019) Đẳng Cấp Thú Cưng 2 - The Secret Life Of Pets 2.mkv\" frameborder=\"0\" allowfullscreen></iframe>', '', '', 'Chris Renaud', 'Patton Oswalt, Eric Stonestreet, Kevin Hart', '1080p', '6.5/10 (IMDb)'),
(62, 2, 8, 9, 1, 2019, 'Dị Nhân 8: Phượng Hoàng Bóng Tối', 'Dark Phoenix', 'https://i.ibb.co/h8dvn9Z/x-men-8-dark-phoenix.jpg', '113 Phút', 'X-Men: Dark Phoenix là phần mở rộng của vũ trụ X-Men khi Jean Grey thức tỉnh và lĩnh hội được Phoenix Force (Thế Lực Phượng Hoàng) - đại diện cho tổng năng lượng, sức mạnh của vạn thể đã và luôn tồn tại. Nguồn sức mạnh vô tận đem lại cho Jean Grey năng lực khủng khiếp nhưng mặt tối của sức mạnh cũng thức tỉnh theo. Liệu nhóm X-Men sẽ làm gì để ngăn chặn sự diệt vong của nhân loại do Jean Grey cùng Phoenix Force gây ra?', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/6E5fisz-fL4\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<video controls settings autoplay class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\"><source src=\"https://www.googleapis.com/drive/v3/files/1kqBJgyH5xcYafUW74M-AUS5hPud4p24w?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/><track src=\"subtitles/x-men-dark-phoenix.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default></video>', '<iframe width=\"695\" height=\"390\" src=\"https://s2.gdrive-player.com/video/oYL1SeU4ZKhqqAf/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/q821nsek1jnm5nw#(2019) Dị Nhân 8: Phượng Hoàng Bóng Tối - X-Men 8 Dark Phoenix.mkv\" frameborder=\"0\" allowfullscreen></iframe>', '', '', 'Simon Kinberg', 'Jennifer Lawrence, James Mcavoy, Jessica Chastain, Sophie Turner', '1080p', '5.8/10 (IMDb)'),
(63, 2, 8, 9, 1, 2019, 'Người Nhện: Xa Nhà', 'Spider-Man: Far from Home', 'https://i.ibb.co/6vP4z6f/spider-man-far-from-home.jpg', '134 Phút', 'Hậu chiến Vô Cực, Người Nhện Peter Parker và nhóm bạn thân cùng tham gia chuyến du lịch châu Âu của trường. Tuy nhiên, kế hoạch siêu anh hùng nghỉ phép của Peter nhanh chóng bị hủy bỏ sau khi cậu đồng ý giúp Nick Fury khám phá bí ẩn về những cuộc tấn công của nhóm kẻ thù mang sức mạnh nguyên tố đang tàn phá khắp lục địa.', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/sx8v7_TpSnM\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<video controls autoplay settings class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\">\r\n<source src=\"https://www.googleapis.com/drive/v3/files/1UiaWY8GxXRgXC9V8FPTqnqgB9a4NxLXh?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/>\r\n<track src=\"subtitles/spider-man-far-from-home.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default>\r\n</video>', '<iframe width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/FPTIo5A99RG950o/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/8e8-la8zk00w604#(2019) Người Nhện: Xa Nhà - Spider Man Far From Home.mkv\" frameborder=\"0\" allowfullscreen></iframe>', '', '', 'Jon Watts', 'Tom Holland, Samuel L. Jackson, Jake Gyllenhaal', '1080p', '7.6/10 (IMDb)'),
(64, 2, 8, 9, 1, 2019, 'Chúa Tể Godzilla: Đế Vương Bất Tử', 'Godzilla: King of the Monsters', 'https://i.ibb.co/CJ4vRT9/godzilla-king-of-monster.jpg', '131 Phút', 'Sự xuất hiện của Godzilla trong quá khứ khiến con người phát hiện ra những sinh vật cổ đại Titan khổng lồ vẫn còn tồn tại trên Trái Đất. Sau trận chiến đánh bại kẻ thù, Godzilla mất tích vào lòng biển. Một ngày kia, Rồng ba đầu Ghidorah trỗi dậy kéo theo sự thức tỉnh của hàng trăm quái vật khổng lồ. Tất cả những gì chúng muốn là tranh giành quyền lực tối cao, thống lĩnh thế giới. Trong trận đại chiến hủy diệt chưa từng có trong lịch sử này, liệu \"Chúa tể của muôn loài\" Godzilla sẽ trở lại và là “đấng cứu thế” của nhân loại trước hiểm họa diệt vong?', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/zLR-qtRfY2Y\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<video controls autoplay settings class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\"><source src=\"https://www.googleapis.com/drive/v3/files/1-HgUfXFHoz0Cs9uW6d7UJHm2qfe0TOnH?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/><track src=\"subtitles/godzilla.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default></video>', '<iframe width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/qjupAPqeVC38B5K/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/n-p02s260xzq4x4#(2019) Chúa Tể Godzilla: Đế Vương Bất Tử - Godzilla King Of The Monters.mkv\" frameborder=\"0\" allowfullscreen></iframe>', '', '', 'Michael Dougherty', 'Kyle Chandler, Vera Farmiga, Millie Bobby Brown', '1080p', '6.1/10 (IMDb)'),
(65, 1, 8, 9, 1, 2019, 'Sát Thủ John Wick 3: Chuẩn Bị Chiến Tranh', 'John Wick 3: Parabellum', 'https://i.ibb.co/JpGXjRX/johnwick-3.jpg', '130 Phút', 'Sau khi trở thành \"giải thưởng lớn\" của giới sát thủ toàn cầu, siêu sát thủ John Wick phải cùng chú chó cưng lên đường chạy trốn. Với giá 14 triệu $, John Wick trở thành mục tiêu béo bở của bất cứ kẻ săn đầu người nào. ', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/rzJ2yHEbLrY\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<video controls autoplay settings class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\">\r\n<source src=\"https://www.googleapis.com/drive/v3/files/1-02oWtO943NwlOVYpFt3-JVWfnszCCRU?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/>\r\n<track src=\"subtitles/john-wick-3.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default>\r\n</video>', '<iframe width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/wArzjfQ5Ra7nowi/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/k8d64s3z0lg-dld#(2019) Sát Thủ John Wick 3: Chuẩn Bị Chiến Tranh - John Wick Chapter 3 Parabellum.mkv\" frameborder=\"0\" allowfullscreen></iframe>', '', '', 'Chad Stahelski', 'Keanu Reeves, Anjelica Huston, Laurence Fishburne', '1080p', '7.6/10 (IMDb)'),
(66, 10, 8, 9, 1, 2019, 'Hành Trình Của Chú Chó Bailey', 'A Dog\'s Journey', 'https://i.ibb.co/r4n1xxb/a-dogs-journey.jpg', '109 Phút', 'Hành Trình Của Chú Chó Bailey là phần 2 của bộ phim A Dog’s Purpose. Trong phần này, bộ phim sẽ xoay quanh cuộc sống khi về già của Ethan và Hannah cùng cháu gái CJ. Không may, mẹ của CJ lại quyết định dẫn cô bé lên thành phố sống và điều này đồng nghĩa với việc cô bé sẽ phải xa ông bà của mình. Bailey sẽ hoá kiếp cả chục lần để có thể đi theo và bảo vệ cô chủ CJ của mình. Liệu CJ có đủ tinh tế để nhận ra đây chính là chú chó Bailey yêu dấu? Liệu cô bé có được gặp lại ông bà của mình? Hãy cùng khám phá chuyến hành trình xịn xò nhất của chú cún Bailey qua A Dog’s Journey.', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/A2FrrSyyKfA\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<video controls settings autoplay class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\"><source src=\"https://www.googleapis.com/drive/v3/files/10Qk_0VI3Zs6C3iazQu3mok2wP5vDvI-B?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/><track src=\"subtitles/a-dog-journey.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default></video>', '<iframe width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/vDpB77Y4xriSaot/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/0p8-6blxzq3wepl#(2019) Hành Trình Của Chú Chó Bailey - A Dog\'s Journey.mkv\" frameborder=\"0\" allowfullscreen></iframe>', '', '', 'Gail Mancuso', 'Dennis Quaid, Abby Ryder Fortson, Daniela Barbosa', '1080p', '7.4/10 (IMDb)'),
(67, 2, 14, 9, 1, 2019, 'Nâng Cấp', 'Upgrade', 'https://i.ibb.co/StmM5Pq/upgrade.jpg', '100 Phút', 'Đặt trong tương lai gần, công nghệ kiểm soát gần như tất cả các khía cạnh của cuộc sống. Nhưng khi Grey, một kỹ thuật viên tự xác định, có thế giới của mình bị đảo lộn, hy vọng duy nhất của ông để trả thù là một cấy ghép chip máy tính thử nghiệm được gọi là Stem.', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/1hTLGlgZ4Z8\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<video controls settings class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\">\r\n<source src=\"https://www.googleapis.com/drive/v3/files/10lgoxzLC_l-vz-eYxMky9wy1nUUe-3Ag?alt=media&key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/>\r\n<track src=\"subtitles/\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default></video>', '<iframe width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/728-wugdeqwz835#(2018) Nâng Cấp - Upgrade.mkv\" frameborder=\"0\" allowfullscreen></iframe>', '<iframe width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/3tR9vGZck0r9vEW/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '', '', 'Leigh Whannell', 'Logan Marshall-Green, Steve Danielsen,Harrison Gilbertson', '1080p', '7.5/10 (IMDb)'),
(68, 10, 8, 9, 1, 2019, 'Đường Về Nhà Của Cún Con', 'A Dog\'s Way Home', 'https://i.ibb.co/W3LtdXW/a-dog-way-home.jpg', '96 Phút', 'Trong một lần mải mê đuổi sóc, Bella đi lạc rất xa khỏi căn nhà của mình. Cô nàng được một gia đình tìm thấy và đưa về nơi ở mới. Nhưng những thứ lạ lẫm kia chẳng hề có hình bóng quen thuộc của Lucas. Sợ rằng cậu chủ đang đợi chờ mình trong cô đơn, nàng cún bất chấp mọi rủi ro để tự tìm đường về nhà và chuẩn bị đối mặt với bao gian khó trước mắt.', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/XwA4a3oqEGg\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<video controls settings class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\">\r\n<source src=\"https://www.googleapis.com/drive/v3/files/1iSPwomNIO42WjGaTJYrbXFknze5rqSEH?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/>\r\n<track src=\"subtitles/a-dog-way-home.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default>\r\n</video>', '<iframe width=\"100%\" height=\"500px\" src=\"https://s2.gdrive-player.com/video/CqWeKx1cYm6tK3Y/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/yx0yrue6gmd6d50#(2019) Đường Về Nhà Của Cún Con - A Dog\'s Way Home.mkv\" frameborder=\"0\" allowfullscreen></iframe>', '', '', 'Charles Martin Smith', 'Bryce Dallas Howard, Chris Bauer, Jennifer Gibson', '1080p', '6.7/10 (IMDb0'),
(71, 2, 8, 9, 1, 2019, 'Đặc Vụ Áo Đen: Sứ Mệnh Toàn Cầu', 'Men in Black: International', 'https://i.ibb.co/0rdZqjJ/men-in-black-international.jpg', '114 Phút', 'Bấy lâu nay, Đặc vụ Áo Đen luôn là những người hùng thầm lặng “ngầu” nhất, bảo vệ Trái Đất khỏi những hiểm họa xấu xa ngoài hành tinh. Trong cuộc phiêu lưu mới này, họ phải đối mặt với mối đe dọa mang tính toàn cầu lớn nhất từ trước đến giờ: truy tìm điệp viên hai mang ẩn mình trong tổ chức Men In Black.', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/ESruleKcsCI\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<video controls settings class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\">\r\n<source src=\"https://www.googleapis.com/drive/v3/files/1pAIaM0Axuj1JUMwssA1RqnQ35-nCf14Y?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/>\r\n<track src=\"subtitles/men-in-black-international.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default>\r\n</video>', '<iframe width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/ViIbSMG5tDM01D8/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/5q8-ncdqme5r4ym#(2019) Đặc Vụ Áo Đen: Sứ Mệnh Toàn Cầu - Men In Black Interntional.mkv\" frameborder=\"0\" allowfullscreen></iframe>', '', '', 'F. Gary Gray', 'Chris Hemsworth, Tessa Thompson, Liam Neeson', '1080p', '5.7/10 (IMDb)'),
(86, 3, 12, 3, 1, 2013, 'Hãy Đánh Cắp Trái Tim Em', 'Steal My Heart', 'https://i.ibb.co/86msrjt/poster-medium.jpg', '115 Phút', 'Ho-Tae là một nhà phân tích tâm lý tội phạm. Anh đang làm việc trong vụ giết người hàng loạt. Với sự giúp đỡ của anh, các thám tử đã thu hẹp được vòng nghi vấn, nhưng nghi phạm lại dính đến một vụ tẩu thoát sau khi gây tai nạn xe hơi. Ho-Tae hứa rằng sẽ bắt được kẻ lái xe đó. Sau khi điều tra, anh tìm ra được người lái xe là Yoon Jin-Sook. Ho-Tae đột nhập vào căn hộ và đối mặt với cô ta. Anh đã shock khi biết cô ta là Lee Sook-Ja, mối tình đầu thời đại học...', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/UntePVEBdQo\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<video controls autoplay settings class=\"js-player\" id=\"plyr-video\" width=\"695\" height=\"100%\">\r\n<source src=\"https://www.googleapis.com/drive/v3/files/1W_rd4YkyUokeDlOFT5kSoGHL54E88DEw?alt=media&key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/>\r\n<track src=\"subtitles/\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default></video>', '<iframe width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/P7KTgCIf9kZFm0G/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/2ke-2t2y5dwz3rp#(2013) Hãy Đánh Cắp Trái Tim Em - Steal My Heart.mp4\" frameborder=\"0\" allowfullscreen></iframe>', '<iframe src=\"//playerdrive.com//player/158573\" width=\"100%\" height=\"390\" frameborder=\"0\" scrolling=\"no\" allowfullscreen></iframe>', '<iframe width=\"640\" height=\"360\" src=\"https://playhydrax.com/?v=XQpmv1WpB\" frameborder=\"0\" scrolling=\"0\" allowfullscreen></iframe>', 'Lee Hyun-Jong', 'Kim A-Joong, Joo Won', '1080p', '95/100 (AW Point)'),
(95, 2, 8, 8, 1, 2018, 'Siêu Thú Cuồng Nộ', 'Rampage', 'https://i.ibb.co/grM37B7/poster-medium.jpg', '107 Phút', 'Bộ phim kể về nhà sinh vật học Davis Okoye có mối liên kết khăng khít với George - một chú gorilla lưng bạc được anh chăm sóc từ nhỏ. Một thí nghiệm đột biến ngoài ý muốn đã làm biến đổi gorilla thành quái vật khổng lồ hung hăng. Gorilla cùng những sinh vật bị biến đổi khác đã tấn công con người và đẩy nhân loại đứng trước hiểm họa diệt vong. Liệu Davis Okoye sẽ làm gì để giành chiến thắng, không chỉ để ngăn chặn một thảm họa toàn cầu, mà còn để cứu gorilla đã từng là bạn tốt của mình? ', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/x-YZaoCcEQs\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<video autoplay controls settings class=\"js-player\" id=\"plyr-video\" width=\"100%\" height=\"100%\"><source src=\"https://www.googleapis.com/drive/v3/files/12U50jy3AL3kru4S6hCwXb7lOL5Zhc-PD?alt=media&key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/><track src=\"subtitles/rampage.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default></video>', '<iframe width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/zkzPeO5lPWlhJWK/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/65w-na0g-y8jp2-#Rampage.2018.1080p.BluRay.x264-[YTS.AM].mp4\" frameborder=\"0\" allowfullscreen></iframe>', '', '', 'Brad Peyton', ' Dwayne Johnson, Naomie Harris, Malin Akerman', '1080p', '6.1/10 (IMDb)'),
(96, 6, 8, 8, 1, 2018, 'Thế Giới Khủng Long 2: Vương Quốc Sụp Đổ', 'Jurassic World 2: Fallen Kingdom', 'https://i.ibb.co/5j6r7sb/poster-medium.jpg', '128 Phút', '4 năm sau thảm họa Công Viên kỷ Jura bị phá hủy bởi những con khủng long. Một vài con khủng long vẫn còn sống sót trong rừng trong khi Isla Nublar bị con người bỏ hoang. Owen (Chris Pratt) và Claire (Bryce Dallas Howard) đã tiến hành chiến dịch giải cứu những con khủng long còn sống sót khỏi sự tuyệt chủng khi ngọn núi lửa tại khu vực này bắt đầu hoạt động trở lại. Họ vô tình khám phá ra một âm mưu có thể khiến toàn bộ hành tinh đối mặt với một hiểm họa to lớn chưa từng thấy kể từ thời tiền sử.', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/7xwY4TpTV1M\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<video autoplay controls settings class=\"js-player\" id=\"plyr-video\" width=\"100%\" height=\"100%\"><source src=\"https://www.googleapis.com/drive/v3/files/11Mc1qp3g_VHaZqfow5K_V66d7DqON_7I?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/><track src=\"subtitles/jurassic-world-2018.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default></video>', '<iframe width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/ixKwWbZXTF2l2Xo/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/l-076snzrgg6gwy#Jurassic.World.Fallen.Kingdom.2018.1080p.BluRay.x264-[YTS.AM].mp4\" frameborder=\"0\" allowfullscreen></iframe>', '', '', 'J.A. Bayona', 'Chris Pratt, Bryce Dallas Howard, Rafe Spall', '1080p', '6.2/10 (IMDb)'),
(97, 1, 8, 7, 1, 2017, 'Sát thủ John Wick 2', 'John Wick: Chapter 2', 'https://i.ibb.co/qrXTS81/poster-medium.jpg', '122 Phút', 'John Wick là một sát thủ khét tiếng trong giới xã hội đen. Những kẻ trong nghề thường truyền tai nhau rằng: “Hắn không phải là ác quỷ. Hắn là người được cử đi để giết ác quỷ”. Phần hai của John Wick bắt đầu khi nhân vật sát thủ máu lạnh của Keanu Reeves đặt chân tới thành phố Rome, Italy và không may đụng độ với một gã gangster khét tiếng tại đất nước này...', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/YyamDu7OezA\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<video autoplay controls settings class=\"js-player\" id=\"plyr-video\" width=\"100%\" height=\"100%\"><source src=\"https://www.googleapis.com/drive/v3/files/12HitBn0TLY_EltZuUzaspP1gMCkZUGCd?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/><track src=\"subtitles/john-wick-2.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default></video>', '<iframe width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/TcULaVFHN1qJBuT/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/8e8-la8w5gjj66e#John.Wick.Chapter.2.2017.1080p.BluRay.x264-[YTS.AG].mp4\" frameborder=\"0\" allowfullscreen></iframe>', '', '', 'Chad Stahelski', 'Keanu Reeves, Riccardo Scamarcio, Ian McShane', '1080p', '7.5/10 (IMDb)'),
(98, 1, 8, 8, 1, 2018, 'Phút Kinh Hoàng Tại El Royale', 'Bad Times at the El Royale', 'https://i.ibb.co/cTK1x9c/poster-medium.jpg', '141 Phút', 'Bad Times at the El Royale lấy bối cảnh El Royale – một khách sạn sang trọng và lâu đời tại nơi giao nhau giữa California và Nevada. Một ngày nọ, chàng lễ tân trẻ tuổi chào đón cùng lúc sáu vị khách bí ẩn. Họ gồm mục sư Daniel Flynn, nữ ca sĩ Darlene Sweet, hai chị em nhà Summerspring , tay bán máy hút hút bụi Laramie Seymour Sullivan và thủ lĩnh giáo phái bí ẩn Billy Lee . Song, tất cả chỉ là danh tính giả khi mỗi người đều có một bí mật đen tối muốn chôn giấu.\r\n\r\nHọ dường như đều có liên quan đến một vụ cướp xe chở tiền và án mạng bí ẩn. Không những thế, kịch tính càng được đẩy lên cao trào khi Laramie Seymour Sullivan có thể quan sát tất cả các phòng thông qua một con đường hầm bí mật và hé lộ rằng hắn ta đang làm việc với một thế lực có tên “Ban quản lý”. Bảy kẻ xa lạ tìm kiếm theo dõi và giết hại lẫn nhau, ai sẽ người chiến thắng? Tổ chức bí ẩn kia là gì? Danh tính thật sự của kẻ thủ ác là ai? Vụ cướp kia và âm mưu của từng người là gì?', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/Fb3QfZ4yoCo\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<video autoplay controls settings class=\"js-player\" id=\"plyr-video\" width=\"100%\" height=\"100%\"><source src=\"https://www.googleapis.com/drive/v3/files/11_Mx7pyNJZZK1mtuAcGF9V1hickbBnyi?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/><track src=\"subtitles/bad-time-at-the-el-royale.vtt\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default></video>', '<iframe width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/6KCaEYwe3HaMuvY/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '<iframe width=\"695\" height=\"390\" src=\"https://www.fembed.com/v/-dey6up2zq7rm-1#Bad.Times.At.The.El.Royale.2018.1080p.BluRay.x264-[YTS.AM].mp4\" frameborder=\"0\" allowfullscreen></iframe>', '', '', 'Drew Goddard', 'Jeff Bridges, Cynthia Erivo, Dakota Johnson', '1080p', '7.1/10 (IMDb)');
INSERT INTO `movies` (`idmovie`, `idcate`, `idnation`, `idyear`, `idlanguage`, `year`, `viename`, `engname`, `image`, `time`, `information`, `trailer`, `urlembed`, `urlembed2`, `urlembed3`, `urlembed4`, `urlembed5`, `director`, `actor`, `quality`, `point`) VALUES
(99, 1, 8, 8, 2, 2018, 'Biệt Đội Cún Cưng', 'Show Dogs', 'https://i.ibb.co/jfrbh9N/poster-medium.jpg', '92 Phút', 'Max – một chú chó cảnh sát và cộng sự là con người đang điều tra về một nhóm tội phạm. Chúng lợi dụng 1 chương trình về chó để thực hiện phi vụ phi pháp của mình.\r\n\r\nĐặc vụ FBI Frank bất đắc dĩ phải trở thành cộng sự với chú chó Max để cùng triệt phá đường dây buôn lậu động vật này. Cùng với sự giúp sức của biệt đội cún cưng, họ đã cùng nhau trải qua những tình huống dở khóc dở cười. Liệu bọn họ có hoàn thành nhiệm vụ một cách thành công? Hãy cùng theo dõi hành trình phá án của Frank và các chú chó này nhé', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/qJTuvua2I_U\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<video autoplay controls settings class=\"js-player\" id=\"plyr-video\" width=\"100%\" height=\"100%\"><source src=\"https://www.googleapis.com/drive/v3/files/1RekXn6ZPWZExUH6yzm31mQEkt43BViRV?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/><track src=\"subtitles/\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default></video>', '<iframe width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/GqvJRUaq1LqemHO/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '', '', '', 'Raja Gosnell', 'Will Arnett, Ludacris, Natasha Lyonne', '1080p', '3.6/10 (IMDb)'),
(100, 12, 11, 9, 3, 2019, 'Doraemon: Nobita Và Chuyến Thám Hiểm Mặt Trăng', 'Doraemon: Nobita\'s Chronicle Of The Moon Exploration', 'https://i.ibb.co/JqBxtCX/poster-medium.jpg', '110 Phút', 'Trong \"Doraemon: Nobita và Chuyến Thám Hiểm Mặt Trăng\", Nobita ở trường tuyên bố với mọi người rằng \"có con thỏ trên Mặt Trăng\", cậu đã bị mọi người chê cười và Doraemon lấy ra huy hiệu \"Thành viên Câu lạc bộ dị thuyết\" tạo ra vương quốc Thỏ trên Mặt Trăng. Một ngày nọ có một cậu bé chuyển trường đến lớp Nobita học. Nhóm Nobita đã cùng với cậu bé đã có chuyến phiêu lưu đến vương quốc Thỏ. Trong đêm có một cô gái kì lạ xuất hiện là Lunna và cuộc hành trình đầy gam go và khó khăn của nhóm Nobita trên con đường khám phá mặt trăng cũng như chống lại ác nhân Diabolo cùng tên hầu cận gian manh Goddard.', '<iframe width=\"100%\" height=\"100%\" src=\"https://www.youtube.com/embed/O61aTrlHJRA\" frameborder=\"0\" allow=\"accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', '<video autoplay controls settings class=\"js-player\" id=\"plyr-video\" width=\"100%\" height=\"100%\"><source src=\"https://www.googleapis.com/drive/v3/files/1_8Tns-WnvieG78L817pb_Z7k2U-jnk9b?alt=media&amp;key=AIzaSyBsoyUdphV3mPmBLGM6BZ4k4iZFPINMzZ4\"/><track src=\"subtitles/\" kind=\"subtitles\" srclang=\"vi\" label=\"Vietsub\" default></video>', '<iframe width=\"100%\" height=\"390\" src=\"https://s2.gdrive-player.com/video/GucIeCSV2mq8BeU/\" frameborder=\"0\" allowfullscreen=\"true\"></iframe>', '', '', '', 'Jeong-beom Lee, Shinnosuke Yakuwa', 'Wasabi Mizuta, Sang Hyun Uhm, Jung-jae Lee', '1080p', '6.7/10 (IMDb)');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nations`
--

CREATE TABLE `nations` (
  `idnation` int(10) NOT NULL,
  `nationname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `nations`
--

INSERT INTO `nations` (`idnation`, `nationname`) VALUES
(1, 'Việt Nam'),
(2, 'Thái Lan'),
(5, 'Trung Quốc'),
(6, 'Ấn Độ'),
(7, 'Anh'),
(8, 'Mỹ'),
(9, 'Nga'),
(10, 'Pháp'),
(11, 'Nhật Bản'),
(12, 'Hàn Quốc'),
(13, 'Đài Loan'),
(14, 'Quốc gia khác');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `recoverpassword`
--

CREATE TABLE `recoverpassword` (
  `idrecover` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `recovercode` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `iduser` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `accesslevel` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`iduser`, `username`, `password`, `name`, `email`, `accesslevel`) VALUES
(1, 'vcb000111', '12345', 'Minh Admin', 'vcb000111@gmail.com', 1),
(3, 'min', 'min', 'Từ Thiện Bảo Minh', 'min@gmail.com', 0),
(10, 'minh', '12345', 'Minh Pro', 'vcb000111@gmail.com', 1),
(12, 'minh2', 'adddd', 'hihihi', 'adddd@gmail.com', 1),
(14, 'vcb00001111', '12345', 'v', 'vcb000111@gmail.com', 0),
(15, 'calocc', '12345', 'min', 'vcb000111@gmail.com', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `years`
--

CREATE TABLE `years` (
  `idyear` int(10) NOT NULL,
  `year` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `years`
--

INSERT INTO `years` (`idyear`, `year`) VALUES
(1, 'Trước 2012'),
(2, '2012'),
(3, '2013'),
(4, '2014'),
(5, '2015'),
(6, '2016'),
(7, '2017'),
(8, '2018'),
(9, '2019');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`idcate`);

--
-- Chỉ mục cho bảng `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`idlanguage`);

--
-- Chỉ mục cho bảng `moviecabinet`
--
ALTER TABLE `moviecabinet`
  ADD PRIMARY KEY (`idcabinet`),
  ADD KEY `idmovie` (`idmovie`),
  ADD KEY `iduser` (`iduser`);

--
-- Chỉ mục cho bảng `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`idmovie`),
  ADD KEY `idcate` (`idcate`),
  ADD KEY `idcate_2` (`idcate`),
  ADD KEY `idcate_3` (`idcate`),
  ADD KEY `idnation` (`idnation`),
  ADD KEY `idyear` (`idyear`),
  ADD KEY `idlanguage` (`idlanguage`);

--
-- Chỉ mục cho bảng `nations`
--
ALTER TABLE `nations`
  ADD PRIMARY KEY (`idnation`);

--
-- Chỉ mục cho bảng `recoverpassword`
--
ALTER TABLE `recoverpassword`
  ADD PRIMARY KEY (`idrecover`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`iduser`);

--
-- Chỉ mục cho bảng `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`idyear`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `idcate` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `language`
--
ALTER TABLE `language`
  MODIFY `idlanguage` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `moviecabinet`
--
ALTER TABLE `moviecabinet`
  MODIFY `idcabinet` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `movies`
--
ALTER TABLE `movies`
  MODIFY `idmovie` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT cho bảng `nations`
--
ALTER TABLE `nations`
  MODIFY `idnation` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `recoverpassword`
--
ALTER TABLE `recoverpassword`
  MODIFY `idrecover` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `iduser` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `years`
--
ALTER TABLE `years`
  MODIFY `idyear` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `movies`
--
ALTER TABLE `movies`
  ADD CONSTRAINT `idcate (movies-categories)` FOREIGN KEY (`idcate`) REFERENCES `categories` (`idcate`),
  ADD CONSTRAINT `idlanguage` FOREIGN KEY (`idlanguage`) REFERENCES `language` (`idlanguage`),
  ADD CONSTRAINT `idnation(movies-nation)` FOREIGN KEY (`idnation`) REFERENCES `nations` (`idnation`),
  ADD CONSTRAINT `idyear(movies-years)` FOREIGN KEY (`idyear`) REFERENCES `years` (`idyear`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
