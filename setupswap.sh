sudo fallocate -l 8G /.swapfile
sudo chmod 600 /.swapfile
sudo mkswap /.swapfile
sudo swapon /.swapfile

cp /etc/fstab ~/fstab
cat <<EOT >> ~/fstab

## added by Thijs's setup script
## setupswap.sh

/.swapfile none swap sw 0 0
EOT
sudo cp ~/fstab /etc/fstab
sudo rm ~/fstab
