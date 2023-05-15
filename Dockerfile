# Use uma imagem do Node.js como base
FROM node:14

# Defina o diretório de trabalho
WORKDIR /app

# Copie os arquivos do pacote
COPY package.json yarn.lock ./

# Instale as dependências
RUN yarn install

# Copie o restante dos arquivos do projeto
COPY . .

# Exponha a porta 1337
EXPOSE 1337

# Inicie o aplicativo Strapi
CMD ["yarn", "run", "start"]

