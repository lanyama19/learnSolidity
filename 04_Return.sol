// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Return {
    // return multiple
    function returnMultiple() public pure returns(uint256, bool, uint256[3] memory){
        return(1, true, [uint256(1),2,5]);
    }
    
    // Return values can be named
    function returnNamed() public pure returns(uint256 _number, bool _bool, uint256[3] memory _array){
        _number = 2;
        _bool = false;
        _array = [uint256(3),2,1];
    }

    function returnNamed2() public pure returns(uint256 _number, bool _bool, uint256[3] memory _array){
        return(1, true, [uint256(1),2,5]);
    }

    // use destructuring assignment
    function readReturn() public pure{
        // read all return values
        uint256 _number;
        bool _bool;
        bool _bool2;
        uint[3] memory _array;
        (_number, _bool, _array) = returnNamed();

        // values can be left out
        (, _bool2, ) = returnNamed();
    }
}