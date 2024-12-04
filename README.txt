--------------------------------------- TP bilan ---------------------------------------------------------------------

- Creation d’un script BASH :

fichier txt « install_docker.sh crée avec dedans :


# Mettre à jour les sources de paquets
echo "Mise à jour des sources de paquets..."
sudo apt update

# Installer Docker
echo "Installation de Docker..."
sudo apt install docker-ce docker-ce-cli containerd.io -y

# Vérifier que Docker est bien installé
echo "Vérification de l'installation de Docker..."
sudo systemctl start docker
sudo systemctl enable docker
sudo docker --version

# Installer Docker Compose
echo "Installation de Docker Compose..."
DOCKER_COMPOSE_VERSION="v2.20.0"  # Mettre à jour la version si nécessaire
curl -L "https://github.com/docker/compose/releases/download/$DOCKER_COMPOSE_VERSION/docker-compose-$(uname -s)-$(una>

# Donner les permissions d'exécution à Docker Compose
sudo chmod +x /usr/local/bin/docker-compose

# Vérifier l'installation de Docker Compose
echo "Vérification de l'installation de Docker Compose..."
docker-compose –version


ENSUITE :

On installe la commande sudo
# apt install -y sudo

et on lance le script 
#./installdocker.sh


- Install de wordpress :

#docker pull wordpress
#docker run –name wordpress -p 8081(c’est votre port au choix)/80 -d wordpress



- Docker push :

Création d’un repertoire tp-bilan à la racine :

#mkdir tp-bilan


- Initialisation du repository git (ici ~/tp-bilan) :
# git init


- Configurer git :
#git config --global user.name "votre nom"
#git config --global user.email "votre email"

- Création du fichier readme.txt :
#nano readme.txt

- Ajout du fichier en staging
#git add readme.mg

- Faire le commit
#git commit -m "voici le fichier readme"

Renommer la branche locale master en main :
#git branch -m master main


- SSH:

Génération de la clé :
#ssh-keygen -t rsa -b 4096 -C "votre.email@example.com"



- activation de l’agent ssh et y ajoute une clé :
#eval "$(ssh-agent -s)"
#ssh-add ~/.ssh/id_rsa


- Clé ssh sur github :

#cat ~/.ssh/id_rsa.pub

- Ajouter la clé sur GitHub
    1. Connectez-vous à votre compte GitHub.
    2. Allez dans Settings (en haut à droite de la page GitHub).
    3. Dans le menu à gauche, cliquez sur SSH and GPG keys.
    4. Cliquez sur New SSH key.
    5. Donnez un titre à votre clé (par exemple, "Clé SSH Debian") et collez la clé publique copiée dans le champ Key.
    6. Cliquez sur Add SSH key.

- Création d’un repertoire sur github puis :

#git remote add origin git@github.com:(nom de user github) (/chemin vers votre dossier).git

#git branch -M main

#git push -u origin main

