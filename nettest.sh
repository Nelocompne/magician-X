curl -s4m8 -x socks5://127.0.0.1:40001 https://www.cloudflare.com/cdn-cgi/trace | grep warp
curl --request GET 'https://ip.useragentinfo.com/json' | jq .