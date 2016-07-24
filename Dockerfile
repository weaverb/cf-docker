FROM lucee/lucee4:latest

COPY src /var/www/

ENV CATALINA_HOME /usr/local/tomcat
WORKDIR $CATALINA_HOME

EXPOSE 8888
CMD ["catalina.sh", "run"]