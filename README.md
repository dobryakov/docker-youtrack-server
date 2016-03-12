This Dockerfile assumes that you have extracted Youtrack 6.0 files to './files' directory without data subdir (because it will be overrided by volume in docker-compose.yml).

RUN:

    docker-compose up -d

TODO:
  - make volume for backups.
  - download Youtrack dist zip in the Dockerfile to avoid store files in workdir.
  - run Youtrack server from runit.
  
