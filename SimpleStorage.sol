// SPDX-License-Identifier: MIT

pragma solidity 0.8.8;
// pragma solidity ^0.8.0;
// pragma solidity >=0.8.0 <0.9.0;

contract SimpleStorage {

    // Solidity standard types: bool, uint (unsigned int), int, address, bytes
    // Examples: 
    // bool hasFavoriteNumber = true;
    // uint256 favoriteNumber = 5; 
    // string favoriteNumberInText = "Five"; // stored as a bytes object
    // int256 = -5;
    // address myAddress = 0x3868f192D05d5A4A875f440BF31C0232bbd8d5F9;
    // bytes32 favoriteBytes = "cat"; // Maximum size 32

    uint256 favoriteNumber;

    mapping(string => uint256) public nameToFavoriteNumber;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People[] public people;

    function store(uint256 _favoriteNumber) public { 
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}

