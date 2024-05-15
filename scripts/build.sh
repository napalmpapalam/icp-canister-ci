# Generate candid
cargo test generate_candid -p canister

# Build wasm
cargo build -p canister --release --target wasm32-unknown-unknown

# Gzip wasm
gzip -c target/wasm32-unknown-unknown/release/canister.wasm > wasm/canister.wasm.gz
# wasm/canister_bf0eb831775b4a50a4f1526f6ee52007045d5b4e.wasm.gz
