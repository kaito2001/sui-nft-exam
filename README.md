# SUI NFT Example

## RUN

1. Install Sui cli
2. Clone this repo
3. Build source
```bash
sui move build
```
4. Deploy Contract
```bash
sui client publish --gas-budget 50000000
```
5. Mint NFT
```bash
sui client call --package $ID_PACKAGE --module nft --function mint --args "First NFT" "Test mint an NFT on Sui" --gas-budget 50000000
```