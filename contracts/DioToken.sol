pragma solidity ^0.4.21;

import 'openzeppelin-solidity/contracts/ownership/Ownable.sol';
import 'openzeppelin-solidity/contracts/token/ERC20/BasicToken.sol';
import 'openzeppelin-solidity/contracts/math/SafeMath.sol';

contract DioToken is BasicToken, Ownable {

  /**
   * @dev Math operations with safety checks that throw on error
   */
  using SafeMath for uint256;

  string public constant name = "DIO Token";
  string public constant symbol = "DIO";
  uint8  public constant decimals = 8;

  /**
   * @dev E8 represents the number 100000000, allowing easy multiplications between the minimal
   */
  uint constant E8 = 10**8;

  constructor() public {
    balances[msg.sender] = 100000000 * E8;
    totalSupply_ = 100000000 * E8;
  }

  function transfer(address _to, uint _amount) public onlyOwner returns (bool success) {
    return super.transfer(_to, _amount);
  }
}