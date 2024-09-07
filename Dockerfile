# Use a base image with Java 17
FROM openjdk:17-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the target directory (assuming you’ve already built the JAR)
COPY config-server-app/target/config-server-app-0.0.1-SNAPSHOT.jar app.jar

# Expose the port on which the config server runs
EXPOSE 8071

# Run the config server
ENTRYPOINT ["java", "-jar", "app.jar"]
