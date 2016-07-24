FROM lucee/lucee4-nginx:4.5.3-t8.0.36

# Copy application
COPY src /var/www/
# Copy default nginx config files
COPY nginx.conf /etc/nginx/
COPY default.conf /etc/nginx/conf.d/

ENV CATALINA_HOME /usr/local/tomcat
WORKDIR $CATALINA_HOME

CMD ["supervisord", "-c", "/etc/supervisor/supervisord.conf"]