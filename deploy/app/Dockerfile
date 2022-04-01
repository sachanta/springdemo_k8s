FROM openjdk:8-jdk-alpine
ARG buildver=0.5.0

#RUN ./gradlew build -x test
#COPY build/libs/springdemo-${buildver}.jar /app/springdemo.jar
COPY springdemo.jar /app/springdemo.jar

#Create a directory and copy otel javaagent to the folder
RUN mkdir -p /opt/javaagent
COPY opentelemetry-javaagent.jar /opt/javaagent/opentelemetry-javaagent.jar

ENTRYPOINT ["java", "-jar", "/app/springdemo.jar"]
#ENTRYPOINT ["java", "-javaagent:/opt/javaagent/opentelemetry-javaagent.jar", "-Dotel.traces.exporter=otlp", "-Dotel.exporter.otlp.endpoint=http://34.71.182.228:4317", "-jar", "/app/springdemo.jar"]

