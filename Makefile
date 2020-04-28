i:
	./scripts/init.sh
b:
	cargo build --release
p:
	./target/release/node-template purge-chain --dev
r:
	./target/release/node-template --dev
m:
	./node/node --base-path /tmp/node01 --chain local --validator --name Node01 --bootnodes /ip4/139.224.193.48/tcp/30333/p2p/QmRn74aec1BkBoPZc7yWdkugJVYrPQBb3BY7hHBmM7wLCs
cs:
	./node/node build-spec --chain local > customSpec.json
raw:
	./node/node build-spec --chain customSpec.json --raw > customSpecRaw.json
down:
	scp mn:/home/yuanben/sub/yb/target/release/node-template ./node/node
up:
	scp ./node/node test:~/sub
	scp ./node/node sub:~
	scp ./customSpec.json test:~/sub
	scp ./customSpec.json sub:~