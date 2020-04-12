curl --netrc -X PATCH https://api.heroku.com/apps/$APP_ID_OR_NAME/formation \
  -d '{
  "updates": [
    {
      "type": "web",
      "docker_image": "$WEB_DOCKER_IMAGE_ID"
    },
    {
      "type": "worker",
      "docker_image": "$WORKER_DOCKER_IMAGE_ID"
    }
  ]
}' \
  -H "Content-Type: application/json" \
  -H "Accept: application/vnd.heroku+json; version=3.docker-releases"