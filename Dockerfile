FROM eclipse-temurin:17-jdk-alpine
WORKDIR /my-java-app
COPY Addition.java /my-java-app
RUN javac Addition.java
CMD ["java","Addition"]
