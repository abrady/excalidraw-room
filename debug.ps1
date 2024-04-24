#$env:DEBUG = "*,-not_this"
$env:DEBUG = "*,-not_this,-express:*,-socket.io:*,-engine*,-socket.io-client:socket,-socket.io-parser*,-socket.io-client:polling*,-socket.io-client:manager*"
yarn start:dev