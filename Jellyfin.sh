sudo apt update
sudo apt install -y curl gnupg apt-transport-https

# اضافه کردن کلید و مخزن Jellyfin
curl -fsSL https://repo.jellyfin.org/jellyfin_team.gpg.key | sudo gpg --dearmor -o /usr/share/keyrings/jellyfin.gpg
echo "deb [signed-by=/usr/share/keyrings/jellyfin.gpg] https://repo.jellyfin.org/ubuntu $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/jellyfin.list

sudo apt update
sudo apt install -y jellyfin
sudo systemctl enable jellyfin
sudo systemctl start jellyfin
