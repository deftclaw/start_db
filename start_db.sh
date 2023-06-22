[[ -z $PGPW ]] && ( reply -e "Please set a psql password as PGPW" 0) \
	|| docker run -d -p 5432:5432 \
			 -e POSTGRES_PASSWORD=$PGPW \
			 -e POSTGRES_USER=$POSTGRES_USER \
			 -e PGDATA=/data/postgres \
			 -v $PGDATA:/data/postgres \
		 postgres_12:0.0.1
