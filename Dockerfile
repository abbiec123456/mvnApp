# Use Eclipse Temurin JDK 21 as base
FROM eclipse-temurin:21-jdk-alpine

# Set working directory
WORKDIR /app

# Copy the Maven-built JAR
COPY target/mvnApp-1.0-SNAPSHOT.jar app.jar

# Expose Spring Boot port
EXPOSE 8080

# Run the Spring Boot application
ENTRYPOINT ["java","-jar","app.jar"]
