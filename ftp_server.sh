#!/usr/bin/zsh

# Update the package list and install vsftpd
echo "Updating package list and installing vsftpd..."
sudo apt update && sudo apt install -y vsftpd

# Configure vsftpd.conf to enable write_enable
echo "Configuring vsftpd..."
sudo sed -i 's/#write_enable=YES/write_enable=YES/' /etc/vsftpd.conf

# Restart the vsftpd service
echo "Restarting vsftpd service..."
sudo systemctl restart vsftpd.service

# Get the IP address of the host machine
IP_ADDRESS=$(hostname -I | awk '{print $1}')
echo "This is the ftp address: ftp://$IP_ADDRESS"

# Create the ftp_shared folder with full read and write permissions
echo "Creating ftp_shared folder in /home/kali..."
mkdir /home/kali/ftp_shared
sudo chmod 777 /home/kali/ftp_shared

# Prompt user to terminate the service
echo "Enter 'terminate' to stop the vsftpd service."
read -r user_input

if [[ $user_input == "terminate" ]]; then
    echo "Stopping vsftpd service..."
    sudo systemctl stop vsftpd.service
    echo "Removing ftp_shared folder..."
    rm -rf /home/kali/ftp_shared
    echo "Cleanup done."
else
    echo "Invalid input. The service will continue running."
fi
