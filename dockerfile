# Use a lightweight production Java 17 runtime image
FROM eclipse-temurin:17-jre-alpine

# Set the operational directory inside the container
WORKDIR /app

# COPY the JAR file from your target folder into the container's /app folder
# Using a wildcard (*) catches the file even if it has version numbers
COPY target/*.jar /app/app.jar

# Inform Docker that the container listens on port 8080
EXPOSE 8080

# Execute the application when the container starts
ENTRYPOINT ["java", "-jar", "/app/app.jar"]

