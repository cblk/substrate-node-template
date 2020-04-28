i:
	./scripts/init.sh
b:
	cargo build --release
p:
	./target/release/node-template purge-chain --dev
r:
	./target/release/node-template --dev