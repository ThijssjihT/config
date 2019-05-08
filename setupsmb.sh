cp /etc/fstab ~/fstab
cat <<EOT >> ~/fstab

## added by Thijs's setup script
//NAS/Thijs /home/thijs/Documenten cifs credentials=/home/thijs/.smbcredentials,vers=2.0 0 0
//NAS/music /home/thijs/Muziek cifs credentials=/home/thijs/.smbcredentials,vers=2.0 0 0
//NAS/video /home/thijs/Video's cifs credentials=/home/thijs/.smbcredentials,vers=2.0 0 0
//NAS/photo /home/thijs/Afbeeldingen cifs credentials=/home/thijs/.smbcredentials,vers=2.0 0 0
//NAS/Download /home/thijs/Downloads/NASdownloads cifs credentials=/home/thijs/.smbcredentials,vers=2.0 0 0
EOT
sudo cp ~/fstab /etc/fstab
sudo rm ~/fstab

echo "Enter smb password for credentials file"

read -sp 'Password: ' password
echo password=$password >> ~/.smbcredentials
