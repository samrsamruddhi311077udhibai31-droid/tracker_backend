# Habit Tracker Backend

Spring Boot REST API for the Habit Tracker and Gamification project.

## Requirements
- Java 17+
- Maven 3.9+
- MySQL 8+ / MySQL 9+
- Database: `habit_tracker`

## Database setup
```sql
CREATE DATABASE habit_tracker;
```

If your MySQL password is not `mysql267`, change `DB_PASSWORD` in `application.properties`
or set it as an environment variable.

## Run
```bash
mvn clean spring-boot:run
```

Backend URL:
`http://localhost:8080`

## Main API
- POST `/api/users/register`
- POST `/api/users/login`
- GET `/api/habits`
- POST `/api/habits`
- PUT `/api/habits/{id}/complete`
- DELETE `/api/habits/{id}`
- GET `/api/rewards`

Login returns a JWT. Send it as:
`Authorization: Bearer <token>`
