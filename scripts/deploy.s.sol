// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.14;

import "forge-std/Script.sol";
import "../src/MoneyRouter.sol";

contract DeployScript is Script {
    //Deploy Contract on Mumbai network

    function run() public {
        address owner = 0x300D3f301E689D485d4CABFaBFD8Af9F5C7AC80F;
        uint256 privateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(privateKey);
        MoneyRouter moneyRouter = new MoneyRouter(owner);
        vm.stopBroadcast();
    }
}
