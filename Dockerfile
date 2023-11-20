FROM php:8.2-cli-alpine3.18
RUN wget https://github.com/ApiGen/ApiGen/releases/latest/download/apigen.phar -O /usr/local/bin/apigen
RUN chmod +x /usr/local/bin/apigen
ENTRYPOINT ["/usr/local/bin/apigen", "--workers", "1"]