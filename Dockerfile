# =============================================================================
# Scaffold-ETH 2 Dockerfile
# Multi-stage build for Hardhat (local chain) and Next.js (frontend)
# =============================================================================

# -----------------------------------------------------------------------------
# Base Stage: Node.js with Yarn 3
# -----------------------------------------------------------------------------
FROM node:20-alpine AS base

# Enable corepack for Yarn 3 and install curl for healthcheck
RUN apk add --no-cache curl && corepack enable && corepack prepare yarn@3.2.3 --activate

WORKDIR /app

# Copy yarn config and releases
COPY .yarnrc.yml ./
COPY .yarn ./.yarn

# Copy root package.json and lock file
COPY package.json yarn.lock ./

# Copy workspace package.json files
COPY packages/hardhat/package.json ./packages/hardhat/
COPY packages/nextjs/package.json ./packages/nextjs/

# Install dependencies
RUN yarn install

# Copy source code
COPY . .

# -----------------------------------------------------------------------------
# Hardhat Stage: Local Ethereum blockchain
# -----------------------------------------------------------------------------
FROM base AS hardhat

WORKDIR /app/packages/hardhat

# Compile contracts
RUN npx hardhat compile

# Expose Hardhat network port
EXPOSE 8545

# Start local blockchain and deploy contracts
# hardhat-deploy plugin integrates with 'hardhat node' to auto-deploy on startup
CMD ["npx", "hardhat", "node", "--hostname", "0.0.0.0", "--network", "hardhat"]

# -----------------------------------------------------------------------------
# Next.js Development Stage
# -----------------------------------------------------------------------------
FROM base AS nextjs-dev

WORKDIR /app

# Expose Next.js port
EXPOSE 3000

# Start Next.js dev server
CMD ["yarn", "start"]
