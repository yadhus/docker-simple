imageId=$(docker inspect registry.heroku.com/rocky-bayou-95129/web --format={{.Id}})
payload='{"updates":[{"type":"web","docker_image":"'"$imageId"'"}]}'

curl -X PATCH https://api.heroku.com/apps/rocky-bayou-95129/formation \
  -d "$payload" \
  -H "Content-Type: application/json" \
  -H "Accept: application/vnd.heroku+json; version=3.docker-releases" \
  -H "Authorization: Bearer $HEROKU_PASSWORD"