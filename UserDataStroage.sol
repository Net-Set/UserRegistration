// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UserRegistration {
    
    //user registration fields email,password,wallet address and referral address
    struct User {
        string email;
        string password;
        address walletAddress;
        address referralAddress;
    }

    //user Registration data push into the array
    User[] public users;

    //function to register user
    function registerUser(string memory _email, string memory _password, address _walletAddress, address _referralAddress) public {
        users.push(User(_email, _password, _walletAddress, _referralAddress));
    }   

    //function to get user data get all the data of the user
    function getUserData() public view returns (User[] memory) {
        return users;
    }

    //function passing fetch wallet address ways fetch all data 
    function getUserDataByWalletAddress(address /* _walletAddress */) public view returns (User[] memory) {
        return users;
    }


    
}