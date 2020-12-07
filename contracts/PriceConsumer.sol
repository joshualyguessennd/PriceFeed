pragma solidity ^0.6.7;

import "@chainlink/contracts/v0.6/intefaces/AggregatorInterface.sol";

contract PriceConsumer {
    AggregatorInterface internal priceFeed;

    constructor() public {
        priceFeed = AggregatorInterface(0x8468b2bDCE073A157E560AA4D9CcF6dB1DB98507);
    }

    function getLatestPrice() public view returns (int256) {
        return priceFeed.latestAnswer();
    }

    function getLatestPriceTimeStamp() public view returns (uint256) {
        return priceFeed.latestTimeStamp();
    }
}

