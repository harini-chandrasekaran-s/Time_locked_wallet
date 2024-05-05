// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract time_locked_wallet {
    address payable public owner;
    uint256 public unlockTime = 30; // Set a specific unlock time here

    constructor() payable {
        owner = payable(msg.sender);
    }

    function withdraw() public {
        require(msg.sender == owner, "Only the owner can withdraw");
        require(block.timestamp >= unlockTime, "Funds are still locked");
        owner.transfer(address(this).balance);
    }
}
