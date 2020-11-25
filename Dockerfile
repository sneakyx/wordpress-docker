FROM wordpress:php7.4-apache
MAINTAINER André Scholz <andre.scholz@ontavio.de>
# Version 2020-11-25-09-55
ENV DEBIAN_FRONTEND=noninteractive
RUN touch /usr/local/etc/php/conf.d/uploads.ini \
    && echo "upload_max_filesize = 24M;" >> /usr/local/etc/php/conf.d/uploads.ini
RUN apt-get update
RUN apt install iputils-ping nano -y

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["apache2-foreground"]
