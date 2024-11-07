# FTP-Server-Linux

## Overview
This project involves setting up an FTP server on Kali Linux using `vsftpd` (Very Secure FTP Daemon). The server is configured to provide shared access to a folder where files can be read and written without the need for user login credentials. The server can be accessed through a web browser on the local network using IPv4, and it automatically erases the shared folder's contents after FTP access. The project includes a ZSH script to automate the entire setup and management of the `vsftpd` service.

## Key Features
- **Anonymous Access**: No user login required to access the shared folder.
- **Read/Write Permissions**: Allows users to read from and write to the shared folder.
- **Automated Setup**: ZSH script to install, configure, and manage the FTP server.
- **Web Access**: Accessible via a web browser over the local network.
- **Data Clearance**: Automatically erases the shared folder contents after each access.

## Built With
- **Operating System**: Kali Linux
- **FTP Server**: vsftpd (Very Secure FTP Daemon)
- **Script Language**: ZSH

## Requirements
- **Kali Linux**: Ensure Kali Linux is installed on the system.
- **vsftpd**: The `vsftpd` package must be available in the repositories.

## Installation
1. Clone this repository to your local machine:
   ```bash
   git clone https://github.com/yourusername/ftp-server-setup.git
   cd ftp-server-setup
   ```
2. Run the bash script to set up the FTP server:
```bash
./ftp_server.sh
```
3. The script will install vsftpd, configure the necessary settings, and create the shared folder.

##Usage
1. After running the setup script, access the FTP server by entering the server's IP address in a web browser:

```bash
Copy code
ftp://your-ip-address
```
2. You can read from and write to files in the shared folder. Note that the contents will be cleared after each FTP session.

3.To stop or restart the FTP server, use the following commands:
```bash
sudo systemctl stop vsftpd
sudo systemctl restart vsftpd
```
## Contributing
Contributions are welcome! Please fork the repository and create a pull request with your changes.

## License
This project is licensed under the MIT License - see the LICENSE file for details.
