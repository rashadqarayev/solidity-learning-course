// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "forge-std/console.sol";

contract Example {
    /*  
    Burada biz dedik ki max value 255 dir, asagida a nin uzerine 1 gelirik ve 256 olur.
    forge test commandi ile test etdikde bize deyir ki bu mumkun ola bilmez.Cunki max limiti kecmisik  
    uint8 a = 255; // 0 -> 255

    constructor() {
        a += 1;
    }
    */

    // Uint(Unsigned integer) - Only zeros and non-negative values :  >= 0; uint = uint256;
    // Int(signed integer) - Can be negative and positive value
    // Maximum value for uint(n) = 2^n - 1;
    uint8 a = 255; // 0 -> 255  0000 0000 -> 1111 1111
    // Uint ucun max value gormek yolu: uint256 b  = type(uint).max
    uint256 b = type(uint).max; // alias: uint



    bool myCondition;
    // Boolean valuedir.True(1) or False(0) olur.Default value olaraq false qebul edir;

    int8 c = 127; // -128 -> 127
    int256 d = -55; // alias: int256

    enum Choice {
        Up,
        Down,
        Left,
        Right
    }

    //Enums (short for "enumerations") are a way to define a set of named values. They are useful for representing a collection of related constants with meaningful names, improving code readability.

    //  Enum-lar (və ya "enumerations") müəyyən adlandırılmış dəyərlər dəstini təyin etmək üçün istifadə olunur. Onlar bir-birinə aid olan sabitlərin mənalı adlarla təmsil olunmasını təmin edir, kodun oxunabilirliyini artırır.

    Choice choice = Choice.Up;

    constructor() {
        /*Burada ne bash verir? unchecked de baxilir ki a ni artirdiq amma max value 255dir. Biz bunu 256 ede bilmerik. O sebebden bu deyisen e 0 menimsedilir. Ve artirdiqda onun deyeri 0 dan hesablanir
        forge test -vv  - commandi ile consoleu gore bilirik
        unchecked {
            a += 1;
        }
        console.log(a); --- Logs : 0
        */
        // console.log(b);
        //   115792089237316195423570985008687907853269984665640564039457584007913129639935

        //256 bites / 8 = 32 bytes
        // console.logBytes32(bytes32(b));
        //   0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff

        // if (myCondition == false) {
        //     console.log("RASHAD");
        // }

        if (choice == Choice.Up) {
            console.log("UP");
        }

        if (choice == Choice.Down) {
            console.log("Down");
        }

        // console.logInt(type(int8).min);
        // console.logInt(type(int8).max);
        // Logs:
        // -128
        // 127
    }
}
