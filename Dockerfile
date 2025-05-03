# Use uma imagem oficial do OpenJDK como base
FROM openjdk:24-jdk

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copie o arquivo JAR da sua aplicação para o container
COPY target/webapitest-0.0.1-SNAPSHOT.jar app.jar

# Exponha a porta que sua aplicação Spring Boot está usando (geralmente 8080)
EXPOSE 80

# Comando para rodar a aplicação
ENTRYPOINT ["java", "-jar", "app.jar"]