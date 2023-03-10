#!/bin/bash

INV=${INVENTORY:-dev}

case $INV in
 prod) ansible-inventory -i inventaires/prod --list;;
 dev)  ansible-inventory -i inventaires/dev --list;;
 *) echo "Pb...";;
esac
