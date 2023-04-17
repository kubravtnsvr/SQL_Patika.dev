--actor ve customer tablolarında bulunan first_name sütunları için tüm verileri sıralayalım.
(SELECT first_name From actor
order by first_name
)
UNION
(
SELECT first_name From customer
order by first_name
);

--actor ve customer tablolarında bulunan first_name sütunları için kesişen verileri sıralayalım.
(SELECT first_name From actor
order by first_name
)
INTERSECT
(
SELECT first_name From customer
order by first_name
);

--actor ve customer tablolarında bulunan first_name sütunları için ilk tabloda bulunan ancak ikinci tabloda bulunmayan verileri sıralayalım.
(SELECT first_name From actor
order by first_name
)
EXCEPT
(
SELECT first_name From customer
order by first_name
);

--İlk 3 sorguyu tekrar eden veriler için de yapalım.
--for UNION
(SELECT first_name From actor
order by first_name
)
UNION ALL
(
SELECT first_name From customer
order by first_name
);

--for INTERSECT
(SELECT first_name From actor
order by first_name
)
INTERSECT ALL
(
SELECT first_name From customer
order by first_name
);

--for EXCEPT
(SELECT first_name From actor
order by first_name
)
EXCEPT ALL
(
SELECT first_name From customer
order by first_name
);
