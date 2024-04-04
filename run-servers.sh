#!/bin/bash
python3 -m http.server 8000 -d /foo &
python3 -m http.server 8001 -d /bar
