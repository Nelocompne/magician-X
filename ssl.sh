acme.sh --register-account -m xxxxxxxx@xxx.xxx --server zerossl

export CF_Key="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
export CF_Email="xxxxxxxx@xxx.xxx"

acme.sh --issue -d xxxxxxx.domain --dns dns_cf

mkdir -p /acme.sh/keyfile/in/nginx /acme.sh/fullchain/nginx

acme.sh --install-cert -d xxxxxxx.domain \
--key-file       /acme.sh/keyfile/in/nginx/key.pem  \
--fullchain-file /acme.sh/fullchain/nginx/cert.pem \
--reloadcmd     "service nginx force-reload"
