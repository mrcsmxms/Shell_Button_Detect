#!/bin/bash

# Die Variablen definieren
# define variables
I1="23" #GPIO-Pin vom Eingang (Taster) // GPIO-Pin of the input (switch)
O1="2"  #GPIO-Pin vom Ausgang (Lampe)  // GPIO-Pin of the output (Lamp)
Text1="linkes Licht eingeschaltet"     #Text für Licht an // text for lights on
Text2="linkes Licht ausgeschaltet"     #Text für Licht aus // texts for lights out

# Die GPIO's definieren
# define GPIO’s
echo "$I1" > /sys/class/gpio/export
echo "in" > /sys/class/gpio/gpio${I1}/direction

# Den Zustand des Eingangs lesen
# read the input status
previous1=$(cat /sys/class/gpio/gpio${I1}/value)

# Endlose Schleife
# infinite loop
while true
do
  # Den Zustand des Eingangs lesen
  pin1=$(cat /sys/class/gpio/gpio${I1}/value)
  stato=$(cat /sys/class/gpio/gpio${O1}/value)

  # Wenn der Eingang von 1 auf 0 gewechselt hat
  # when the input changed from 1 to 0
  if [ $previous1 -gt $pin1 ]
  then
   if [ "$stato" = "1" ]
   then
                 sudo echo "0" > /sys/class/gpio/gpio${O1}/value
                 echo "$Text1"
   elif [ "$stato" = "0" ]
   then
                 sudo echo "1" > /sys/class/gpio/gpio${O1}/value
                 echo "$Text2"
   fi

  else
    # Eine zehntel Sekunde schlafen, damit der Prozessor nicht heissläuft
    
    sleep 0.1
  fi

  # Der aktuelle Wert wird der alte Wert für den nächsten Durchlauf
  previous1=$pin1
done


