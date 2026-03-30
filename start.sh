#!/bin/bash

# Démarre le worker en arrière-plan
node dist/src/services/queue-worker.js &

# Démarre l'API en avant-plan
node dist/src/index.js
