# Bash script for setting up a agar.io server

cd /

apt-get update

apt-get install nodejs

apt-get install npm

npm cache clean -f

npm install -g n

n stable

ln -sf /usr/local/n/versions/node/"version"/bin/node /usr/bin/nodejs

apt-get install git

cd /var/www/

git clone https://github.com/huytd/agar.io-clone.git

mv "agar.io-clone" "html"
cd html

npm install -g gulp

apt-get install nodejs-legacy

npm install

gulp run

echo "The server is now running!"

echo "Agar.io clone is now running! Visit your website, and then on the address bar edit the link and add :3000"

echo "So, if your domain is mytestdomain.com, just add :3000 and it should look like this mytestdomain.com:3000"

echo "Bash script created by SirGamer."

echo "If you for some reason restart the container, you can start the agar.io by going back to the terminal and type:

cd /var/www/html/
gulp run"
