PROJECT_NAME=symfonyshop

docker export ${PROJECT_NAME}_busybox >  ./busybox.tar
docker export ${PROJECT_NAME}_mysql > ./mysql.tar
docker export ${PROJECT_NAME}_php-fpm > ./php-fpm.tar
docker export ${PROJECT_NAME}_webserver > ./webserver.tar