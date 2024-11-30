docker run -d --name mysql_users_db -p 3307:3306 -v users:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=admin --network spring-boot-network mysql

docker run -d --name mysql_customers_db -p 3308:3306 -v customers:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=admin --network spring-boot-network mysql

docker run -d --name multiple-dbs -p 8181:8181 -e MYSQL_USERS_HOST=mysql_users_db -e MYSQL_CUSTOMERS_HOST=mysql_customers_db --network spring-boot-network multiple-dbs

 docker volume create users
 docker volume  create customers

docker network create spring-boot-network

launch all the containers on same network so that all the containers can communicate using container name




