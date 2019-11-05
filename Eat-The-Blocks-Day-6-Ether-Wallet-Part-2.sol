pragma solidity ^0.5.0;
contract EtherWallet{
    //the onwner variable reflects the authorized sender

    address public owner;
    //constructor function can accept arguments, in this case it's the owner variable, note underscore
    //the _owner argument has an underscore b/c we don't want to overshadow the owner variable
    //allows us to access the owner variable

    constructor(address _owner) public {
     //assign value of parameter to owner variable   
        owner =_owner;
    }
    
    function deposit()payable public{
        
    }

    function send(address payable to, uint amount) public{
       //compare sender of transaction is the authorized sender
       //msg.sender, address that signed the transaction 

        if(msg.sender == owner){
            to.transfer(amount);
            //return statement

            return;
        }
        //throw an error with revert call
        //revert can take an optional argument
        //means someone unauthorized tried to send a transaction
            revert('sender is not allowed');
        }
        //read only, public function that uses view keyword and be called outside of smart contract
        //this function will give of the balance of Ether Smart contract
        //public function can be called from outside of smart contract
        
        function balanceOf() view public returns(uint){
            //this represents the smart contract, the smart contract has different properties that we can access
            
            //objects should explicity address the object to an address type.....
            //we cannot use this.balance
            return address(this).balance;
        }
    }
