# Utiliser une image de base officielle Node.js
FROM node:latest

# Créer un répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier package.json et installer les dépendances
COPY package*.json ./
RUN npm install

# Copier le reste du code de l'application
COPY . .

# Exposer le port que l'application utilise
EXPOSE 3001

# Démarrer l'application
CMD ["node", "app.js"]