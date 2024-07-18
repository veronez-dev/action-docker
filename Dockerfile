FROM alpine:3.12

WORKDIR /app

# Instale as dependências necessárias
RUN apk add --no-cache curl jq

# Copie o script shell para o container
COPY main.sh ./main.sh

RUN chmod +x ./main.sh

# Defina o ponto de entrada do container
ENTRYPOINT ["./main.sh"]
