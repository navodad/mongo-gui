# Definindo a imagem base
FROM --platform=linux/amd64 node:11.15

COPY . /app

WORKDIR /app

RUN npm install

# HEALTHCHECK --interval=10s CMD curl --fail http://localhost:4321 || exit 1

ENTRYPOINT ["sh","/app/entrypoint.sh"]