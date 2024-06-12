FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y apache2 git && \
    rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/morgadodesarrollador/Autocaravaneando /var/www/html

CMD ["apachectl", "-D", "FOREGROUND"]
