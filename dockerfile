FROM debian:latest

RUN apt update
RUN apt install bzip2

WORKDIR /application

COPY ./solana-test-validator /application/
RUN chmod +x /application/solana-test-validator

EXPOSE 8899/tcp
EXPOSE 8900/tcp

ENTRYPOINT ["sh", "-c", "/application/solana-test-validator"]