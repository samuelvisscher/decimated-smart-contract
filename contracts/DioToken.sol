pragma solidity ^0.4.21;

import 'openzeppelin-solidity/contracts/token/ERC20/BasicToken.sol';
import 'openzeppelin-solidity/contracts/token/ERC20/MintableToken.sol';
import 'openzeppelin-solidity/contracts/math/SafeMath.sol';

contract DioToken is BasicToken, MintableToken {

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

    function transfer(
        address _to,
        uint256 _value
    )
    public
    onlyOwner
    returns (bool)
    {
        return super.transfer(_to, _value);
    }

    function transferFrom(
        address _from,
        address _to,
        uint256 _value
    )
    public
    onlyOwner
    returns (bool)
    {
        return super.transferFrom(_from, _to, _value);
    }

    function approve(
        address _spender,
        uint256 _value
    )
    public
    onlyOwner
    returns (bool)
    {
        return super.approve(_spender, _value);
    }

    function increaseApproval(
        address _spender,
        uint _addedValue
    )
    public
    onlyOwner
    returns (bool success)
    {
        return super.increaseApproval(_spender, _addedValue);
    }

    function decreaseApproval(
        address _spender,
        uint _subtractedValue
    )
    public
    onlyOwner
    returns (bool success)
    {
        return super.decreaseApproval(_spender, _subtractedValue);
    }
}