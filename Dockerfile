# Utiliser une image de base Python 3.11
FROM python:3.11

# Définir le répertoire de travail à l'intérieur du conteneur
WORKDIR /app

# Copier les fichiers du répertoire FLASK_API dans le répertoire de travail du conteneur
COPY FLASK_API/ /app/

# Installer les dépendances à partir du fichier requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port 5000 (par défaut pour Flask)
EXPOSE 5000

# Commande pour exécuter l'application Flask
CMD ["python", "app.py"]
