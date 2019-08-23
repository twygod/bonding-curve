pragma solidity ^0.5.2;

import "../BondingCurve.sol";


contract BondingCurveMock is BondingCurve {
  constructor(
    uint256 _supply,
    uint32 _reserveRatio,
    address _owner,
    uint256 _gasPrice) public payable
  {

    reserveRatio = _reserveRatio;
    poolBalance = msg.value;
    gasPrice = _gasPrice;

    _mint(_owner, _supply);
  }
}
