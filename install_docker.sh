# Installer les prérequis
echo "Installation des dépendances nécessaires..."
sudo apt install apt-transport-https ca-certificates curl gnupg lsb-release -y

# Ajouter la clé GPG de Docker
echo "Ajout de la clé GPG officielle de Docker..."
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Ajouter le repository Docker à APT
echo "Ajout du repository Docker..."
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

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
curl -L "https://github.com/docker/compose/releases/download/$DOCKER_COMPOSE_VERSION/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

# Donner les permissions d'exécution à Docker Compose
sudo chmod +x /usr/local/bin/docker-compose

# Vérifier l'installation de Docker Compose
echo "Vérification de l'installation de Docker Compose..."
docker-compose --version

