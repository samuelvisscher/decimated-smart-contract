var DioToken = artifacts.require("./DioToken.sol");

module.exports = function(deployer) {
  deployer.deploy(DioToken);
};
