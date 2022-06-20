// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;
// This is used to mention of the version of solidity we are using basically the compiler

contract Inbox{

    // Declaring a contract is similar to a class

    string public message;
    // string is used to define that it is going string into it
    // public acts as a access specifier
    // This are called as storage variables which are going to store the data whatever we give while deploying a instance into 
    // the network

    // There is other kind of variable which is called as local variable, they will be valid only till the 
    // execution of the contract and after that they are deleted


    constructor(string memory message_) {
        message=message_;

        // This is known as constructor function which will be automatically called when an instance of this class
        // is created

    }

    function setMessage(string memory message_) public{
        message=message_;
    }

    // function getMessage() public view returns (string){

        // public view is known to be as function type

        // Common function types
        // public : Anyone can call this function (Basically who have ethereum account)
        // private : Only the contract can call this function
        // view : this says that the function should return a data and it does not modify the contracts data
        // constant : this says that the function should return a data and it does not modify the contracts data
        // pure: Function will not read or even change the contracts data
        // payable : this is to declare a function when the user try to use this function and send ether along


        // returns are only going to be used where functions are marked as constants or view



// 0: string: This is Shakti Santosh Nayak
// Here 0 says that this is the first value returned

// If you declare a variable as public in a contract then a function will be created with the name same as 
// that variable and this will return the value stored in the variable
// This function is automatically created by solidity




        // return message;
    // }


    // Contract Redeployed
}

// The Account section during deployment denotes the sender


// receiver's address while sender deploying a contract remains blank and thus it is idetified the sender
// is deploying a new contract

contract Info{



    string public name;
    string public phone_number;
    string public id;
    string public program;
    string public wallet_address;
    constructor(string memory name_,string memory phone_number_,string memory id_,string memory w_a,string memory p_g) {
        name=name_;
        phone_number=phone_number_;
        id=id_;
        wallet_address=w_a;
        program=p_g;




    }

}


// In order to change anything on the blockchain we need to submit a transaction

// Basically whenever you want to modify a data in blockchain then you need to make a transaction and 
// and thus you have to pay some fees for getting it to be mined and update the data

// so basically while using the setmessage function we need to make a transaction because we are changing the data
// and while using the simple getmessage function we don't need to make a transaction because we are not changing any data
// and also getmessage function gets executed instantly
// and setmessage function will take time as we are making a transaction and transaction needs to be verified

// Why do we don't return value from a function making a transaction
// Because that function is not going to be instaneous and whenever transaction happens it returns a transaction hash
// Though solidity won't raise error while returning a value from such functions but we should not do it 
// because it returns a transaction hash for the particular transaction and it is not instantaneous


// As remix is running on local test network so the transaction happens very instantly but in real life
// the transaction takes around 15 to 20 seconds
// But in Rinkby test network the block time is around 15 to 20 seconds and thus we will feel the real time for the execution of a transaction

// Gas price means how much wei we can pay for each gas
// If Gas price is set as 10 and gas is 5 then you have to pay 50 wei to complete the transaction

// startGas/Gaslimit measures how much gas is required for this transaction


// BIP39 -Mnemonic Algorithm is used to make new Accounts and store all the Accounts in one Mnemonic




