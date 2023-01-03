//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract Counter{
    uint32 counter;
    event counterIncreament(uint32 counter);
    function count() public {
        counter++;
        console.log("counter:", counter);
        emit counterIncreament(counter);
    }
    function getCounter() public view returns(uint32){
        return counter;
    }
    function hello() public pure returns(string memory){
        return "Hello";
    }
}