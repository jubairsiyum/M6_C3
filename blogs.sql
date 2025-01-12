-- Exported SQL for the blogs table

-- Table structure for table `blogs`
CREATE TABLE `blogs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `category_id` int NOT NULL,
  `author_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `author_id` (`author_id`),
  CONSTRAINT `blogs_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `blogs_ibfk_2` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Dumping data for table `blogs`
INSERT INTO `blogs` (`id`, `title`, `body`, `category_id`, `author_id`, `created_at`, `updated_at`) VALUES
(1, 'Introduction to SQL', 'SQL is a standard language for accessing databases.', 1, 1, '2025-01-01 10:00:00', '2025-01-01 10:00:00'),
(2, 'Healthy Living Tips', 'Tips to live a healthier life.', 2, 2, '2025-01-02 11:00:00', '2025-01-02 11:00:00'),
(3, 'Top 10 Travel Destinations', 'Explore the world’s best places to visit.', 3, 3, '2025-01-03 12:00:00', '2025-01-03 12:00:00');
