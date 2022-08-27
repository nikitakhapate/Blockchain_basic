// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 ;


contract basic_learning{
    uint amount;
    address owner;
    constructor(){
        owner= msg.sender;
    }
    modifier onlyOwner{
        require(owner==msg.sender);
        _;
    }
    function set(uint x)public{
        amount=x;
    }
    function get() public onlyOwner view returns (uint) {
        return amount;
    }
}