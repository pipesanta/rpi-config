echo "welcome to software tool installer"

# Install mqtt server
sudo apt install -y mosquitto
sudo systemctl enable mosquitto.service
mosquitto -v

sudo echo "# setup auth in mosquitto" > /etc/mosquitto/mosquitto.conf
sudo echo "# Place your local configuration in /etc/mosquitto/conf.d/" >> /etc/mosquitto/mosquitto.conf
sudo echo "#" >> /etc/mosquitto/mosquitto.conf
sudo echo "# A full description of the configuration file is at" >> /etc/mosquitto/mosquitto.conf
sudo echo "# /usr/share/doc/mosquitto/examples/mosquitto.conf.example" >> /etc/mosquitto/mosquitto.conf
sudo echo "per_listener_settings true" >> /etc/mosquitto/mosquitto.conf
sudo echo "pid_file /run/mosquitto/mosquitto.pid" >> /etc/mosquitto/mosquitto.conf
sudo echo "persistence true" >> /etc/mosquitto/mosquitto.conf
sudo echo "persistence_location /var/lib/mosquitto/" >> /etc/mosquitto/mosquitto.conf
sudo echo "log_dest file /var/log/mosquitto/mosquitto.log" >> /etc/mosquitto/mosquitto.conf
sudo echo "include_dir /etc/mosquitto/conf.d" >> /etc/mosquitto/mosquitto.conf
sudo echo "allow_anonymous false " >> /etc/mosquitto/mosquitto.conf
sudo echo "listener 1883  " >> /etc/mosquitto/mosquitto.conf
sudo echo "password_file /etc/mosquitto/passwd" >> /etc/mosquitto/mosquitto.conf

sudo systemctl restart mosquitto
sudo systemctl status mosquitto


