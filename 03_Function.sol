// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
contract FunctionTypes{
    uint public number = 5;
    
    // default function
    function add() external{
        number = number + 1;
    }

    // pure function
    function addPure(uint256 _number) external pure returns (uint256 new_number){
        new_number = _number + 1;
    }

    // view function
    function addView() external view returns(uint256 new_number) {
        new_number = number + 1;
    }

    // internal function
    function minus() internal {
        number = number - 1;
    }

    // external function to call internal 
    function minusCall() external {
        minus();
    }

    // payable function
    function minusPayable() external payable returns(uint256 balance) {
        minus();
        balance = address(this).balance;
    } 
}