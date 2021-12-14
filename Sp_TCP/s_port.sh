#!/bin/bash

# Escaner de puerto abierto por respuerta del servidor

p_beginn=$1
p_end=$2

for i in $(seq $p_beginn $p_end); do
    bash -c "echo '' > /dev/tcp/127.0.0.1/$i" 2>/dev/null && echo "[*] Puerto $i Abierto";done

