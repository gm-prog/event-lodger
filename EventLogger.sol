// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract EventLogger {
    address public owner;

    event EventLogged(address indexed sender, uint timestamp, string message);

    constructor() {
        owner = msg.sender;
    }

    function logEvent(string calldata message) external {
        emit EventLogged(msg.sender, block.timestamp, message);
    }
}
