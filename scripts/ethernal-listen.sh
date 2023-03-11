#!/bin/bash

if [[ -z $(command -v ethernal)  ]]; then
    echo -e "Ethernal not installed.\nnpm install -g ethernal"
    exit 1
fi

read -p "Ethernal email: " ETHERNAL_EMAIL
read -s -p "Ethernal password: " ETHERNAL_PASSWORD

ETHERNAL_EMAIL=$ETHERNAL_EMAIL ETHERNAL_PASSWORD=$ETHERNAL_PASSWORD ethernal listen
