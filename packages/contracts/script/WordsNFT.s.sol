// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Script.sol";
import "../src/WordsNFT.sol";

contract DeployScript is Script {
    function run() external {
        string memory mnemonic = vm.envString("MNEMONIC");
        uint256 privateKey = vm.deriveKey(mnemonic, 0);

        vm.startBroadcast(privateKey);

        new WordsNFT();

        vm.stopBroadcast();
    }
}