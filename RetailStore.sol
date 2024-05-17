// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RetailStore {
    mapping(address => uint256) public products;

    event ProductAdded(address indexed owner, string productName, uint256 quantity);
    event ProductPurchased(address indexed buyer, string productName, uint256 quantity);

    function addProduct(string memory _productName, uint256 _quantity) external {
        require(bytes(_productName).length > 0, "Product name cannot be empty");
        require(_quantity > 0, "Quantity must be greater than 0");

        products[msg.sender] += _quantity;
        emit ProductAdded(msg.sender, _productName, _quantity);
    }

    function purchaseProduct(address _seller, string memory _productName, uint256 _quantity) external payable {
        require(bytes(_productName).length > 0, "Product name cannot be empty");
        require(_quantity > 0, "Quantity must be greater than 0");
        require(products[_seller] >= _quantity, "Insufficient quantity available");

        uint256 totalPrice = _quantity * 1 ether; // Price per product is 1 ether
        require(msg.value >= totalPrice, "Insufficient payment");

        // Using assert() to check for integer overflow
        uint256 previousQuantity = products[_seller];
        assert(previousQuantity - _quantity < previousQuantity);

        products[_seller] -= _quantity;
        emit ProductPurchased(msg.sender, _productName, _quantity);

        // Transfer payment to the seller
        payable(_seller).transfer(totalPrice);
    }

    function getAvailableQuantity(address _seller) external view returns (uint256) {
        return products[_seller];
    }

    function triggerRevert() pure external {
        // Using revert() to intentionally revert the transaction
        revert("Transaction reverted intentionally");
    }
}
