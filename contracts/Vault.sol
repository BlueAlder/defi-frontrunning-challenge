//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/Address.sol";

contract Vault {
    using Address for address payable;

    bytes32 private hashedSecret;
    bool public unlocked;

    constructor(bytes32 _hash) payable {
        uint256 amount = msg.value;
        require(amount >= 1 ether, "Not enough ether");
        hashedSecret = _hash;
        unlocked = false;
    }

    function unlock(bytes memory password) external {
        require(!unlocked, "Vault already emptied");
        bytes32 hashedPassword = keccak256(password);

        require(hashedPassword == hashedSecret, "Incorrect Password");
        sendFunds(payable(msg.sender));
    }

    function sendFunds(address payable to) internal {
        uint256 amount = address(this).balance;
        to.sendValue(amount);
    }

    function getHashedSecret() public view returns (bytes32) {
        return hashedSecret;
    }
}
