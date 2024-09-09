// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "forge-std/console.sol";

contract Example {
    uint256 a; // storage slot - 0x0
    uint256 b; // storage slot - 0x1
    bool c; // storage slot - 0x2

    // Burada eger deyisen constantla teyin olunursa yaddasda ozune yer goturur.Yeni it takes slot from storage
    // Slots are 32 bytes : 0x1 means = 0x00000.....001;
    // Solidity slotlari ardicil verir: 0x0 , 0x1, 0x2
    // Reading/Writing diger opcodelara baxanda daha cox qiymetlidi.Bu usere hec de yaxsi goruntu vermez

    uint256 constant d = 55;
    uint256 e; // storage slot - 0x0
    bool f; // storage slot - 0x1

    constructor() {
        // SSTORE - store to some storage location
        // SLOAD - read from some storage location
        // bytes32 x;
        // assembly {
        //     x := sload(0x1)
        // }
        //   0x0000000000000000000000000000000000000000000000000000000000000000
        // uint256 x;
        // assembly {
        //     x := sload(0x1)
        // }
        // 0

        bool x;
        assembly {
            x := sload(0x1)
        }
        console.log(x);
        // false
    }
}
