# 🎫 NFT Tokenization DApp

<div align="center">

![Solidity](https://img.shields.io/badge/Solidity-0.8.20-363636?style=for-the-badge&logo=solidity)
![Next.js](https://img.shields.io/badge/Next.js-14-000000?style=for-the-badge&logo=nextdotjs)
![TypeScript](https://img.shields.io/badge/TypeScript-5.0-3178C6?style=for-the-badge&logo=typescript)
![Hardhat](https://img.shields.io/badge/Hardhat-2.22-F3BA2F?style=for-the-badge&logo=hardhat)
![Ethereum](https://img.shields.io/badge/Ethereum-Sepolia-627EEA?style=for-the-badge&logo=ethereum)
![Docker](https://img.shields.io/badge/Docker-Ready-2496ED?style=for-the-badge&logo=docker)

**A full-stack decentralized application for minting, managing, and transferring ERC-721 NFTs on the Ethereum blockchain.**

[Live Demo](https://nextjs-three-theta-w8mxv81dx3.vercel.app/) • [Smart Contract](https://sepolia.etherscan.io/address/0x370E74faEcf922fAdF5B873996dD89F788440054)

</div>

---

## 📋 Overview

This project is a complete NFT minting platform that demonstrates end-to-end blockchain development skills, from smart contract design to frontend integration. Users can connect their wallets, mint unique collectible NFTs, view their collection, and transfer tokens to other addresses.

### ✨ Key Features

- **🔐 ERC-721 Smart Contract**: Fully compliant NFT implementation using OpenZeppelin standards
- **🖼️ IPFS Integration**: Decentralized metadata storage for NFT assets
- **🔌 Wallet Integration**: Seamless connection with MetaMask, WalletConnect, and other providers via RainbowKit
- **⚡ Hot Reloading**: Real-time contract updates reflected instantly in the frontend
- **🐳 Docker Support**: Containerized development environment for easy setup
- **🚀 Production Ready**: Deployed to Sepolia testnet with verified smart contracts

---

## 🛠️ Tech Stack

| Layer | Technology |
|-------|------------|
| **Smart Contracts** | Solidity, OpenZeppelin, Hardhat |
| **Frontend** | Next.js 14, React, TypeScript |
| **Web3 Integration** | Wagmi, Viem, RainbowKit |
| **Styling** | TailwindCSS, DaisyUI |
| **Testing** | Hardhat Test Suite, Chai |
| **DevOps** | Docker, Docker Compose, Vercel |
| **Blockchain** | Ethereum (Sepolia Testnet) |

---

## 📁 Project Structure

```
├── packages/
│   ├── hardhat/              # Smart contract development
│   │   ├── contracts/        # Solidity smart contracts
│   │   ├── deploy/           # Deployment scripts
│   │   └── test/             # Contract unit tests
│   │
│   └── nextjs/               # Frontend application
│       ├── app/              # Next.js App Router pages
│       ├── components/       # Reusable React components
│       ├── hooks/            # Custom Web3 hooks
│       └── contracts/        # Auto-generated contract ABIs
│
├── docker-compose.yml        # Container orchestration
├── Dockerfile                # Multi-stage build configuration
└── package.json              # Monorepo workspaces
```

---

## 💡 Smart Contract Highlights

The `YourCollectible.sol` contract implements:

```solidity
contract YourCollectible is ERC721, ERC721Enumerable, ERC721URIStorage, Ownable {
    // Incremental token ID tracking
    uint256 public tokenIdCounter;
    
    // IPFS base URI for metadata
    function _baseURI() internal pure override returns (string memory) {
        return "https://ipfs.io/ipfs/";
    }
    
    // Public minting function
    function mintItem(address to, string memory uri) public returns (uint256);
}
```

**Contract Features:**
- ✅ ERC-721 standard compliance
- ✅ Enumerable extension for token listing
- ✅ URI storage for IPFS metadata
- ✅ Ownable access control pattern
- ✅ Safe minting with reentrancy protection

---

## 🚀 Quick Start

### Prerequisites

- Node.js >= v20.18.3
- Yarn (v1 or v2+)
- Git

### Local Development

```bash
# Clone the repository
git clone https://github.com/DavidBenitoCampo/challenge-tokenization.git
cd challenge-tokenization

# Install dependencies
yarn install

# Start local blockchain
yarn chain

# Deploy contracts (in a new terminal)
yarn deploy

# Start frontend (in a new terminal)
yarn start
```

Access the app at **http://localhost:3000**

### 🐳 Docker Setup (Alternative)

```bash
# Start all services
docker-compose up -d

# View logs
docker-compose logs -f

# Stop services
docker-compose down
```

| Service | URL | Description |
|---------|-----|-------------|
| **Hardhat** | http://localhost:8545 | Local Ethereum blockchain |
| **Next.js** | http://localhost:3000 | Frontend development server |

---

## 🧪 Testing

```bash
# Run smart contract tests
yarn test

# Verify contract on Etherscan
yarn verify --network sepolia
```

---

## 🌐 Deployment

### Smart Contract Deployment

```bash
# Generate deployer wallet
yarn generate

# Check wallet balance
yarn account

# Deploy to Sepolia testnet
yarn deploy --network sepolia
```

### Frontend Deployment

```bash
# Deploy to Vercel
yarn vercel --prod
```

---

## 📸 Screenshots

<div align="center">

### NFT Minting Interface
![Minting Interface](https://github.com/scaffold-eth/se-2-challenges/assets/80153681/63dabceb-ad42-4c09-8e5d-a0139939e32d)

### Debug Contracts Panel
![Debug Panel](https://github.com/scaffold-eth/scaffold-eth-2/assets/55535804/b237af0c-5027-4849-a5c1-2e31495cccb1)

</div>

---

## 🔗 Related Links

- 📄 [Verified Contract on Etherscan](https://sepolia.etherscan.io/address/0x370E74faEcf922fAdF5B873996dD89F788440054)
- 🌍 [Live Demo on Vercel](https://nextjs-three-theta-w8mxv81dx3.vercel.app/)
- 📚 [SpeedRunEthereum Challenge](https://speedrunethereum.com)
- 🏗️ [Scaffold-ETH 2 Documentation](https://docs.scaffoldeth.io)

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENCE) file for details.

---

<div align="center">

**Built with ❤️ using [Scaffold-ETH 2](https://scaffoldeth.io)**

[![GitHub](https://img.shields.io/badge/GitHub-DavidBenitoCampo-181717?style=for-the-badge&logo=github)](https://github.com/DavidBenitoCampo)

</div>