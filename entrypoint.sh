cd /v2raybin
if [ "$VER" = "latest" ]; then
  wget http://storage.googleapis.com/v2ray-docker/v2ray 
  wget http://storage.googleapis.com/v2ray-docker/v2ctl
  wget http://storage.googleapis.com/v2ray-docker/geoip.dat
  wget http://storage.googleapis.com/v2ray-docker/geosite.dat
else
  wget -O v2ray.zip https://www.v2ray.com/download/Core_v3.37/v2ray-linux-64.zip
  unzip v2ray.zip 
  cd /v2raybin/v2ray-v3.30-linux-64
fi

chmod +x v2ray
chmod +x v2ctl

echo -e -n "$CONFIG_JSON1" > config.json
echo -e -n "$PORT" >> config.json
echo -e -n "$CONFIG_JSON2" >> config.json
echo -e -n "$UUID" >> config.json
echo -e -n "$CONFIG_JSON3" >> config.json

./v2ray
