//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "./GreaterInterface.sol";

library GreaterHelper {
    function addPrefix(IGreater greeter, string memory great) public view returns (string memory) {
        return string.concat(greeter.prefix(),great);
    }
}