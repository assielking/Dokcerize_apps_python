# Utilise une image de base qui inclut Python
FROM python:3.12.3

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copie tous les fichiers du répertoire actuel dans le conteneur
COPY . .

# Installe les dépendances spécifiées dans le fichier requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install scikit-learn

# Copie le fichier CSV dans le conteneur
COPY survey_results_public.csv /app

# Commande par défaut pour exécuter l'application Streamlit
CMD ["streamlit", "run", "app.py"]
