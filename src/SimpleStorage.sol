// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    uint256 favoriteNumber;
    uint256[] listofFavoriteNumbers;

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns (uint256) {
        return favoriteNumber;
    }

    function addFavoriteNumber(uint256 _favoriteNumber) public {
        listofFavoriteNumbers.push(_favoriteNumber);
    }

    function retrieveFavoriteNumber(
        uint256 index
    ) public view returns (uint256) {
        return listofFavoriteNumbers[index];
    }

    struct Person {
        string name;
        uint256 favNumber;
    }

    Person[] public listofPeople;

    mapping(string => uint256) public nametoFavoriteNumber;

    function addFavoriteNumberModified(
        uint256 _favoriteNumber,
        string memory _name
    ) public {
        listofPeople.push(Person(_name, _favoriteNumber));
        nametoFavoriteNumber[_name] = _favoriteNumber;
    }
}
