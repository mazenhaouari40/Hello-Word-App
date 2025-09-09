# Utiliser une image Python officielle
FROM python:3.10-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier requirements (si tu en as un), sinon on installe flask directement
COPY requirements.txt requirements.txt

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Copier tout le code de l’application
COPY . .

# Exposer le port utilisé par Flask (par défaut 5000)
EXPOSE 5000

# Commande pour lancer l’application
CMD ["python", "app.py"]
