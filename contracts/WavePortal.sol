// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract WavePortal {
   uint256 totalWaves;
   address[] public wavers;
   
   constructor() {
      console.log("Yo yo, I am a contract and I am smart");
    }
   function wave() public {
      totalWaves += 1;
      wavers.push(msg.sender);
      console.log("%s has waved! Finally noticed!", msg.sender);
    }

    function getTotalWaves() public view returns (uint256) {
      console.log("We have %d total waves! Take that dad!", totalWaves);
      return totalWaves;
    }

    function getWavers() public view {
      console.log("Here are all the wavers!");
      for (uint i = 0; i < wavers.length; i++) {
       console.log("Address: %s", wavers[i]);
      }
    }
}