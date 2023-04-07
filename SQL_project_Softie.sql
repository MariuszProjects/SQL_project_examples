-- ZAD. 1 Wyświetl dziesięć́ pierwszych wierszy z tabeli film.

SELECT * FROM film 
LIMIT 10;

-- ZAD. 2. Wyświetl nazwiska i imiona aktorów, którzy posiadają ̨nazwiska zaczynające się ̨ 'BER' na
-- posortowane alfabetycznie wg nazwisk.

SELECT * FROM actor;
SELECT * FROM actor 
WHERE last_name LIKE ("BER%")
ORDER BY last_name ASC;


-- ZAD. 3. Wyświetl imiona z tabeli aktor, kończące się na 'Y', posortowane alfabetycznie, bez
-- powtórzeń.

SELECT DISTINCT first_name FROM actor 
WHERE first_name LIKE ("%Y")
ORDER BY first_name ASC;

-- ZAD. 4. Dodaj dwa nowe wiersze do tabeli customer (dodaj nowych klientów ze wszystkimi
-- potrzebnymi danymi)

SELECT * FROM customer ORDER BY customer_id DESC;
INSERT INTO customer (store_id, first_name, last_name, email, address_id, active)
VALUE (1,"Jim", "Hanks", "jim.hanks@gmail.com", 2, 1);
SELECT * FROM customer ORDER BY customer_id DESC;

-- ZAD. 5. Usuń nowy wiesz z dodanym przez siebie klientem. po ID

SELECT * FROM customer ORDER BY customer_id DESC; 
SELECT * FROM customer WHERE last_name LIKE 'Hanks';
DELETE FROM customer WHERE customer_id = 632;


-- ZAD. 6. Zaktualizuj wybrany wiersz w tabeli address dodając wartość dla address2

SELECT * FROM address;
UPDATE  address
SET address2 = "Wrocławska 100" WHERE address_id = 500;
SELECT * FROM address WHERE address_id = 500;