#!/bin/bash
if [ "$1" == "" ]; then
        
    echo "Como usar: $0 <dominio>"
else
    for server in $(host -t ns $1 | cut -d " " -f 4); do
        echo "Consultando $server para $1..."
        host -l $1 $server
        echo ""
        echo "###########################################################"
        echo ""
    done
fi
