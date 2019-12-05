# openjdk 8
FROM openjdk:8-jdk-alpine
# image maintainer
LABEL maintainer="f.leeap1004@gmail.com"

# data directory
# Add a volume to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
# EXPOSE 8080

# The application's jar file
ARG JAR_FILE=build/libs/springboot-docker-test-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} springboot-docker-test.jar

# Run the jar file
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/springboot-docker-test.jar"]