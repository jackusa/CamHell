USER=''
PASSWD=''
HOST='127.0.0.1'
PORT='3306'
mysql -u $USER -p$PASSWD -h $HOST -P $PORT -e "DROP DATABASE $1;"
mysql -u $USER -p$PASSWD -h $HOST -P $PORT -e "CREATE DATABASE $1 DEFAULT CHARACTER SET utf8mb4 DEFAULT COLLATE utf8mb4_general_ci; GRANT ALL PRIVILEGES ON $1.* TO '$USER'@'$HOST'; FLUSH PRIVILEGES;"