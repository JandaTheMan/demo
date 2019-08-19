FROM openjdk:8 as builder

COPY . /home/gradle/src
WORKDIR /home/gradle/src
RUN ./gradlew build

FROM openjdk:8-jre-slim
EXPOSE 8080
COPY --from=builder /home/gradle/src/build/libs/artifact.jar /app/
WORKDIR /app
CMD java -jar tfg_example-0.0.1-SNAPSHOT.jar