pragma solidity ^0.5.0;
//Eat The blockhash
//Day 6: Ether Wallet-Part1
//Building a wallet that will store Ether and send Ether to an address


//transfer ETH from the smart contract to address specified by the to variable
//name of smart contract EtherWallet

contract EtherWallet{

    //function name: deposit
    //payable here means function will accept Ether
    //function deposit will not accept any argument
    //function deposite view is public 
    function deposit() payable public{
    }
    //amount is a varible with an integer unit
    //function is public
    //send Ether from a wallet to another address
    //first argument is the address and amount transferred
    //transfer money from the smart contract to the address specified by the to variable
    function send(address payable to, uint amount) public {
    //to variable will hold the amount of ETH transferred from the smart contract    
        to.transfer(amount);
    }
}