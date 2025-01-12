
USE blogs;
-- Insert demo data into authors table
INSERT INTO authors (author_name) VALUES 
('John Doe'),
('Jane Smith'),
('Robert Brown');

-- Insert demo data into categories table
INSERT INTO categories (category_name) VALUES 
('Technology'),
('Health'),
('Travel');

-- Insert demo data into blogs table
INSERT INTO blogs (title, body, category_id, author_id) VALUES 
('Introduction to SQL', 'SQL is a standard language for accessing databases.', 1, 1),
('Healthy Living Tips', 'Tips to live a healthier life.', 2, 2),
('Top 10 Travel Destinations', 'Explore the world’s best places to visit.', 3, 3);
