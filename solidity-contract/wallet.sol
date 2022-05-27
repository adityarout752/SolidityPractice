//SPDX-License-Identifier : Mit

pragma solidity >=0.5.0 <0.9.0;

contract wallet {
 address payable[] public accounts;
    address payable public owner ;

    constructor(address _owner) {
        owner = payable(_owner);
         accounts.push(payable(owner));

    }

    function deposit() public payable  {


    }


    function sendEther(address _to,uint256 _amount) public onlyOwner {

payable(_to).transfer(_amount);
    }

    function balanceOf() public view returns (uint) {
        return address(this).balance;
    }


    modifier onlyOwner() {
        require(msg.sender == owner , "Not Owner");
        _;
    } 
}