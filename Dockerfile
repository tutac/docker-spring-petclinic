FROM openjdk:8
LABEL maintainer="tutachasan@gmail.com"
COPY  spring-petclinic/   /spring-petclinic/
WORKDIR /spring-petclinic/
RUN ./mvnw package
EXPOSE 8080
WORKDIR /spring-petclinic/target/
CMD ["java", "-jar", "spring-petclinic-2.3.1.BUILD-SNAPSHOT.jar"]


