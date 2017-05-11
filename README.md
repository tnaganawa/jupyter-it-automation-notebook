
jupyter-it-automation-notebook
- added ansible, fabric, napalm, pyez

````
- tested on centos7

sudo docker build -t jupyter-it-automation-notebook .
sudo docker run -d -p 8888:8888 --user root -e GRANT_SUDO=yes jupyter-it-automation-notebook start-notebook.sh --NotebookApp.token=''

Then access URL:
http://127.0.0.1:8888
````
