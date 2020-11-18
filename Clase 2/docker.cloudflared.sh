sudo docker run -d \
  --restart always \
  --name cloudflared \
  -p 5053:5053/udp \
  -p 49312:49312 \
  --network=pihole --ip=172.20.0.3 \
  -e TZ="America/Argentina/Buenos_Aires" \
  crazymax/cloudflared:latest
