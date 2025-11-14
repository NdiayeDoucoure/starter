FROM eclipse-temurin:17-jdk-alpine

WORKDIR /app

COPY . .

# Donner les permissions d'exécution
RUN chmod +x mvnw

# Construire le projet
RUN ./mvnw -q -DskipTests package

EXPOSE 8080

CMD ["java", "-jar", "target/starter-0.0.1-SNAPSHOT.jar"]
