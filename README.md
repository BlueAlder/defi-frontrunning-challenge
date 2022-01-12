# Front Run Challenge

This is a challenge to showcase  a front running exploit on the ETH blockchain. This is built using hardhat network. 

## Challenge Overview

Alice has deployed a vault contract located in `contracts/Vault.sol` which has 10 ETH stored in it. To retrieve the ETH the sender must prove they know the secret bytes which hash to the value stored when the contract was deployed. 

Alice is about to withdraw the ETH from the vault. Your job is to take the ETH before Alice does without knowing the password (at least initally 😉).

## Installation

To attempt this challenge, first clone or fork this repository with:

`git clone https://github.com/BlueAlder/defi-frontrunning-challenge.git`

Install dependencies:

`cd defi-frontrunning-challenge && npm install`

Write your exploit in the `test/challenge.ts` file within the EXPLOIT section. 

Test your exploit by running:

`npx hardhat test`

If the test passes then you have won! If not, try harder :).


---

If you enjoyed this challenge let me know [@BlueAlder](https://twitter.com/BlueAlder)

Enjoyed this challenge? Feel free to buy me a coffee on ETH or Polygon :)

bluealder.eth <-> 0x23E6bC65DB9216798a1d304fF739780A44Ea47a1


This challenge was inspired by [@tinchoabbate](https://twitter.com/tinchoabbate)'s DamnVulnerableDeFi challenges. Which you can access at [damnvulnerabledefi.xyz](damnvulnerabledefi.xyz) and is super fun and I highly reccomend it!