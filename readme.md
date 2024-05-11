# Dockerize a Python web apps

## Clonage du projet

Pour cloner le projet, exécutez la commande suivante dans votre terminal :

`git clone https://github.com/assielking/dev_app.git`


## Problème de communication entre Docker Desktop et WSL

Si Docker Desktop ne parvient pas à communiquer avec le sous-système Windows pour Linux (WSL) :

Redémarrez WSL et exécutez à nouveau Docker Desktop, ou
Redémarrez votre machine.
Démarrez de la distribution Ubuntu-22.04 en exécutez la commande suivante en tant qu'administrateur dans votre invite de commande :

`wsl --distribution Ubuntu-22.04`

## Construction de l'image Docker

Construisez l'image Docker en exécutant la commande suivante dans le répertoire contenant votre Dockerfile :

`docker build -t appdevtest:tag .`

Pour voir l'image Docker crée :

`docker images`

## Exposition du port pour Streamlit

Streamlit écoute par défaut sur le port 8501. Si vous utilisez Streamlit dans un conteneur Docker, vous devez vous assurer que le port sur lequel Streamlit écoute à l'intérieur du conteneur est correctement exposé et mappé sur un port de votre machine hôte.

Vous pouvez exposer ce port en ajoutant l'option -p 8501:8501 à votre commande docker run. Par exemple :

`docker run -d -p 8501:8501 appdevtest:tag`

## Accès à Streamlit 

Une fois que vous avez redémarré votre conteneur avec le port correctement exposé, vous devriez pouvoir accéder à votre application Streamlit en utilisant l'adresse suivante dans votre navigateur :

http://localhost:8501

## Arrêt du serveur WSL
Pour quitter le serveur WSL, utilisez la commande  `exit`.
