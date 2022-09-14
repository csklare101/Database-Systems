/* Carson Sklare 
CSC 355 402T
Assignment 4
10/11, 2021 */

--1
SELECT Instrument,PName, Age, BName
    FROM PLAYER INNER JOIN BAND ON BandID = BID
    WHERE Instrument = 'Bass'
    ORDER BY Age DESC;
--2
SELECT Max(age), BandID
    FROM PLAYER INNER JOIN BAND on BandID = BID
    GROUP BY bid
    ORDER BY MAX(Age);
--3
SELECT BName
    FROM BAND
    WHERE BID IN (SELECT BandID
                    FROM SHOW
                    WHERE VenueID = (SELECT VID
                                        FROM VENUE
                                        WHERE VName = 'Reggae Town'));
--4
SELECT BID, BName, COUNT(PID)
    FROM BAND INNER JOIN PLAYER ON BID = BandID
    GROUP BY BID, BName
    HAVING COUNT(PID) < 3;
--5
SELECT DISTINCT VName
   FROM VENUE INNER JOIN SHOW ON VID = VenueID
    WHERE ShowDate between to_date('2021-06-01','YYYY-MM-DD') and  to_date('2021-06-30','YYYY-MM-DD'); 
--6
SELECT BID, AVG(Payment)
    FROM BAND INNER JOIN Show ON BID = BandID
    Group By BID;
--7
SELECT ShowDate, VName, Sum(Capacity * TicketPrice - Payment)
    FROM SHOW INNER JOIN Venue ON VenueID = VID
    GROUP BY VName, ShowDate
    ORDER BY ShowDate DESC;
--8
SELECT VID, NVL(COUNT(ShowDate),0), NVL(SUM(Payment),0)
    FROM VENUE INNER JOIN SHOW ON VID = VenueID
    GROUP BY VID
    ORDER BY COUNT(ShowDate)
