# Imagem base
FROM node:18

# Criar diretório de trabalho
WORKDIR /app

# Copiar os arquivos do projeto
COPY package*.json ./
RUN npm install

COPY . .

# Expor a porta do app
EXPOSE 3000

# Comando para rodar o app
CMD ["npm", "start"]