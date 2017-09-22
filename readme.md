# alpine-nodejs
Nginx container based on apline (also includes curl). The reason for this build is  the official nginx container is just a tad to lean for my taste because it has very few resources for troubleshooting.

The version number of this container matches the version of the official alpine container it is built on.

# Usage
Create a docker container and specify the location of your nginx config directory and html files.

__Note:__ Remember to put the parameter `daemon off;` in your nginx config file or the container will not run.

```bash
docker run -itd --name <name>  -p port:port
 -v /path_on_your_host_for_nginx_config_folder:/etc/nginx:ro \
 -v /path_to_html_files:/path_in_your_nginx_config_file:ro \
 ericflores/alpine-nginx
```

You can get a bash session in the container with the follow command:

```bash
docker exec -it <container_name> /bin/sh
```