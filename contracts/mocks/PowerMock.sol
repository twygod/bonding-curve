pragma solidity ^0.5.2;
import "../Power.sol";

/*
    BancorFormula test helper that exposes some BancorFormula functions
*/
contract PowerMock is Power {
  constructor()  public {
  }

  function powerTest(uint256 _baseN, uint256 _baseD, uint32 _expN, uint32 _expD) public view returns (uint256, uint8) {
    return super.power(_baseN, _baseD, _expN, _expD);
  }

  function lnTest(uint256 _numerator, uint256 _denominator) public view returns (uint256) {
    return super.ln(_numerator, _denominator);
  }

  function findPositionInMaxExpArrayTest(uint256 _x) public view returns (uint8) {
    return super.findPositionInMaxExpArray(_x);
  }

  function fixedExpTest(uint256 _x, uint8 _precision) public view returns (uint256) {
    return super.fixedExp(_x, _precision);
  }

  function floorLog2Test(uint256 _n) public view returns (uint8) {
    return super.floorLog2(_n);
  }
}
