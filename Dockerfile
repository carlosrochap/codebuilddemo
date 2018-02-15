FROM httpd:latest

RUN echo "Hellow World" >> /usr/local/apache2/htdocs/text.txt

COPY entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]