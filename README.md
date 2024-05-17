# Functions and Errors - ETH + AVAX

This Solidity program is a  "Functions and Errors" program that demonstrates the basic syntax and functionality of the Solidity programming language. The purpose of this program is to serve as a starting point for those who are new to Solidity and want to get a feel for how it works.

## Description
This Course showing the funtion and errors of the code block with a name, parameters, and body designed for a specific purpose, enhancing organization and reuse. Errors, or exceptions, are issues that occur during program execution, including syntax errors.
### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., HelloWorld.sol). Copy and paste the following code into the file:


```javascript 
pragma solidity ^0.8.0;

contract RetailStore {
    mapping(address => uint256) public products;

    event ProductAdded(address indexed owner, string productName, uint256 quantity);
    event ProductPurchased(address indexed buyer, string productName, uint256 quantity);
}

```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.4" (or another compatible version), and then click on the "Compile GuerraContract.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Retailstore" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the addProduct function. Click on the "addProduc" once done place the "productName" and the quantity click transact the go to purchaseProduct then you can see the 3 which is "seller"copy the id  "productName" named of the product which is Cabinet "quantity" i placed 12 cabinets for the total quantity once done click transact and go to getAvailableQuantity paste the id of the seller then call you will see the ruslts once done go to products same procedure of getAvailableQuantity and the last is "triggerRevert"
click to call.
## Authors
Matt Norman A. Guerra
8212366@ntc.edu.ph


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
