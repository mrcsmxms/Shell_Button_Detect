#GPIO's definieren
sudo echo "2" > /sys/class/gpio/export
sudo echo "3" > /sys/class/gpio/export
sudo echo "4" > /sys/class/gpio/export
#sudo echo "17" > /sys/class/gpio/export
#sudo echo "27" > /sys/class/gpio/export
#sudo echo "22" > /sys/class/gpio/export
#sudo echo "9" > /sys/class/gpio/export
#sudo echo "11" > /sys/class/gpio/export

#Relais initialisieren
sudo echo "out" > /sys/class/gpio/gpio2/direction
sudo echo "out" > /sys/class/gpio/gpio3/direction
sudo echo "out" > /sys/class/gpio/gpio4/direction
#sudo echo "out" > /sys/class/gpio/gpio17/direction
#sudo echo "out" > /sys/class/gpio/gpio27/direction
#sudo echo "out" > /sys/class/gpio/gpio22/direction
#sudo echo "out" > /sys/class/gpio/gpio9/direction
#sudo echo "out" > /sys/class/gpio/gpio11/direction

#Relais ausschalten
sudo echo "1" > /sys/class/gpio/gpio2/value #Relais 1
sudo echo "1" > /sys/class/gpio/gpio3/value #Relais 2
sudo echo "1" > /sys/class/gpio/gpio4/value #Relais 3
#sudo echo "1" > /sys/class/gpio/gpio17/value #Relais 4
#sudo echo "1" > /sys/class/gpio/gpio27/value #Relais 5
#sudo echo "1" > /sys/class/gpio/gpio22/value #Relais 6
#sudo echo "1" > /sys/class/gpio/gpio9/value #Relais 7
#sudo echo "1" > /sys/class/gpio/gpio11/value #Relais 8

sudo chmod 666 /sys/class/gpio/gpio2/value
sudo chmod 666 /sys/class/gpio/gpio3/value
sudo chmod 666 /sys/class/gpio/gpio4/value
#sudo chmod 666 /sys/class/gpio/gpio17/value
#sudo chmod 666 /sys/class/gpio/gpio27/value
#sudo chmod 666 /sys/class/gpio/gpio22/value
#sudo chmod 666 /sys/class/gpio/gpio9/value
#sudo chmod 666 /sys/class/gpio/gpio11/value

sudo chmod 666 /sys/class/gpio/gpio2/direction
sudo chmod 666 /sys/class/gpio/gpio3/direction
sudo chmod 666 /sys/class/gpio/gpio4/direction
#sudo chmod 666 /sys/class/gpio/gpio17/direction
#sudo chmod 666 /sys/class/gpio/gpio27/direction
#sudo chmod 666 /sys/class/gpio/gpio22/direction
#sudo chmod 666 /sys/class/gpio/gpio9/direction
#sudo chmod 666 /sys/class/gpio/gpio11/direction
