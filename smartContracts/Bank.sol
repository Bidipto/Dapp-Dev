pragma solidity 0.4.25;

contract Bank 
{
    // balance
    int bal;

    // we create a constructor
    constructor() public
    {
        bal = 1;
    }
    // This is not changing anything so we set is as a view
    function getBalance() view public returns(int)
    {
        return bal;
    }

    function withdraw(int amt) public
    {
        bal = bal - amt;
    }
    function deposit(int amt) public
    {
        bal = bal+amt;
    }


}