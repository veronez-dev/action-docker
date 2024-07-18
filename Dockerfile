FROM ubuntu:22.04

WORKDIR /app

# Instale as dependências necessárias
RUN apt update && apt install -y curl jq

# Copie o script shell para o container
COPY main.sh ./main.sh

RUN chmod +x ./main.sh

# Defina o ponto de entrada do container
CMD ["./main.sh"]
