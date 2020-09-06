# toleemoko/dockerCraft - A Dockerized 1.8.9 Minecraft server.
# Dockerfile v1.1

FROM ubuntu:xenial
RUN apt-get update \
    && apt-get install -y default-jdk wget \
    && mkdir minecraft \
    && wget -O minecraft/server.jar https://github.com/toleemoko/dockerCraft/raw/master/resources/server.jar \
    && echo "eula=true" > eula.txt
CMD java -Xms512m -Xmx1024m -jar minecraft/server.jar nogui
EXPOSE 25565