// Load the deployed contract
const SimpleLendingPlatform = artifacts.require("SimpleLendingPlatform");

// Get an instance of the deployed contract
SimpleLendingPlatform.deployed().then(instance => {
    // Interact with the contract
    // For example, call the lend function
    return instance.lend("0x123...", web3.utils.toWei("1", "ether"), 3600, 5, {value: web3.utils.toWei("1", "ether")});
}).then(result => {
    console.log("Lending transaction successful:", result);
}).catch(error => {
    console.error("Error while lending:", error);
});
