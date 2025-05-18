#!/bin/bash
git add .
git commit -m "Auto deploy"
git push
docker build -t devops-rest-api .
docker run -d -p 3000:3000 devops-rest-api
