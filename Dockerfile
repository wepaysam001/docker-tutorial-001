FROM alpine:3.14.0  
ENV myworkdir /var/www/localhost/htdocs/  
ARG whoami=shengyu
WORKDIR ${myworkdir}
RUN apk --update add apache2
RUN rm -rf /var/cache/apk/*
RUN echo "<h3>I am ${whoami} in the PI team<h3>" >> index.html
ADD ./config.yml ./
RUN cat ./config.yml >> index.html
ENTRYPOINT ["httpd", "-D", "FOREGROUND"]
# CMD ["httpd", "-D", "FOREGROUND"]