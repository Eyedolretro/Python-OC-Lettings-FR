# Utilise Python 3.11 officiel
FROM python:3.11-slim

# Crée le répertoire de travail
WORKDIR /app

# Copie les fichiers requirements
COPY requirements.txt .

# Installe les dépendances
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copie tout le projet
COPY . .

# Expose le port Django
EXPOSE 8000

# Commande pour lancer le serveur Django
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
