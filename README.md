# event-lodger
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
![Screenshot 2025-05-26 144304](https://github.com/user-attachments/assets/4670bec0-5898-4377-92d9-f9c21b17ecb8)

