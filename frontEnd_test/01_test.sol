pragma solidity ^0.4.25;

contract Test {
    
   string fName;
   uint age;

   event Owner(
       string name,
       uint age
    );

   function setOwner(string _fName, uint _age) public {
       fName = _fName;
       age = _age;
       Owner(_fName, _age);
   }
   
   function getOwner() view public returns (string, uint) {
       return (fName, age);
   }
   
}