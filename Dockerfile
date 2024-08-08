# Use Amazon Corretto 22.0.2 as the base image
FROM amazoncorretto:22.0.2-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the Spring Boot application's JAR file into the container
COPY target/DockerDemo-0.0.1-SNAPSHOT.jar /app/myapp.jar

# Expose the port the application runs on
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "/app/myapp.jar"]
