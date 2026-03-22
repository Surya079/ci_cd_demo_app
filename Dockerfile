# Multi-stage build for smaller image size
FROM eclipse-temurin:21 AS builder

WORKDIR /app
COPY . .
RUN ./mvnw clean package -DskipTests

# Runtime stage
FROM eclipse-temurin:21

WORKDIR /app
COPY --from=builder /app/target/*.jar app.jar

EXPOSE 8080

# Use exec form for better signal handling
ENTRYPOINT ["java", "-jar", "app.jar"]