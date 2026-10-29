-- Optional seed file.
-- The application creates users, habits and rewards through the REST API.
-- Keep spring.sql.init.mode=never in application.properties unless you
-- intentionally add SQL seed data here.

Truncate Table mst_calendar;

insert into mst_calendar(c_date)
WITH RECURSIVE DateRange AS (
    -- Anchor member: set the starting date
    SELECT '2025-01-01' AS generated_date
    UNION ALL
    -- Recursive member: increment the date by 1 day
    SELECT DATE_ADD(generated_date, INTERVAL 1 DAY)
    FROM DateRange
    -- Termination condition: stop when the end date is reached
    WHERE generated_date < '2026-12-31'
)
SELECT generated_date FROM DateRange;


insert into mst_calendar(c_date)
WITH RECURSIVE DateRange AS (
    -- Anchor member: set the starting date
    SELECT '2027-01-01' AS generated_date
    UNION ALL
    -- Recursive member: increment the date by 1 day
    SELECT DATE_ADD(generated_date, INTERVAL 1 DAY)
    FROM DateRange
    -- Termination condition: stop when the end date is reached
    WHERE generated_date < '2028-12-31'
)
SELECT generated_date FROM DateRange;


insert into mst_calendar(c_date)
WITH RECURSIVE DateRange AS (
    -- Anchor member: set the starting date
    SELECT '2029-01-01' AS generated_date
    UNION ALL
    -- Recursive member: increment the date by 1 day
    SELECT DATE_ADD(generated_date, INTERVAL 1 DAY)
    FROM DateRange
    -- Termination condition: stop when the end date is reached
    WHERE generated_date < '2030-12-31'
)
SELECT generated_date FROM DateRange;
