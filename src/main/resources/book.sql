CREATE TABLE IF NOT EXISTS author
(
    id   SERIAL PRIMARY KEY,
    name CHAR(50) NOT NULL
    );

CREATE TABLE IF NOT EXISTS book
(
    name      CHAR(50) NOT NULL,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES author (id)
    );

INSERT INTO author(name)
VALUES ('Eddie Murphy'),
       ('Jim Kerry');

INSERT INTO book
VALUES ('First', 1),
       ('Second', 1),
       ('Third', 2);


/*
 *Есть таблица book с колонками name и author_id и таблица author с колонками id и name.
 Вывести все книги определенного автора (author.name).
 */

SELECT book.name Название
FROM book
         JOIN author a on a.id = book.author_id
WHERE a.name='Eddie Murphy';