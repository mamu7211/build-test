FROM openjdk:8-jre
MAINTAINER Martin Murrer <martin@murrer.me>

ENTRYPOINT ["/usr/bin/java", "-jar", "/usr/share/build-test/build-test.jar"]

# Add the service itself
ARG JAR_FILE
ADD target/${JAR_FILE} /usr/share/build-test/build-test.jar