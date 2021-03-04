# Requirments:
Ubuntu Server 20.04 with docker and docker-compose installed  
You can follow my guide [HERE](https://github.com/fearherbs1/SYS-265-02-Tech-Journal/wiki/Docker-Lab) if you need asistance. 

# Useage:
clone this repo into your desired folder:

`git clone https://github.com/fearherbs1/SYS-265-Docker-Prodject-Nextcloud.git`  

Edit the mariadb database username and password to your liking in docker-compose.yml:

```
      - MYSQL_ROOT_PASSWORD=rootpassword
      - TZ=America/New_York
      - MYSQL_DATABASE=nextcloud
      - MYSQL_USER=nextcloud 
      - MYSQL_PASSWORD=nextcloudpassword 
      - REMOTE_SQL=http://URL1/your.sql,https://URL2/your.sql 
```

Start the containers with:  
`sudo docker-compose up -d`  

Once started, navigate to https://(yourserverip) and you should see the nextcould startup page:    

![](https://i.imgur.com/LMt9fS7.png)

Then click the dropdown for "Storage & Database", click MySQL/MariaDB, and enter your credentials you set up earlier,  
aswell as creating an admin username and password:

For the Databse host field, enter:  
`mariadb:3306`

![](https://i.imgur.com/mAJYdS1.png)


## After we click submit we can then use nextcloud to store files and much more!:  

![](https://i.imgur.com/wNdqDGx.png)  

