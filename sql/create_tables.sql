-- Start by deleting any tables if they exist already
-- DROP tables in reverse order of creation 

DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS authors;

-- Create the books table
CREATE TABLE books (
    book_id TEXT PRIMARY KEY,
    title TEXT,
    year_published INTEGER,
    author_id TEXT,
    FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

-- Create the authors table
CREATE TABLE authors (
    author_id TEXT PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    year_born INTEGER
);

