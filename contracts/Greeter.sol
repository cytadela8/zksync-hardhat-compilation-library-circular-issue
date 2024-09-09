//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

library GreaterHelper {

    string internal constant SEPARATOR = ": ";

    function addPrefix(Greeter greeter, string memory great) internal view returns (string memory) {
        return string.concat(greeter.prefix(),string.concat(SEPARATOR, great));
    }
}

contract Greeter {
    string private greeting;
    string private _prefix;

    constructor(string memory _greeting) {
        greeting = _greeting;
        _prefix = "The greating is:";
    }

    function prefix() public view returns (string memory) {
        return _prefix;
    }

    function greet() public view returns (string memory) {
        return GreaterHelper.addPrefix(this, greeting);
    }

    function setGreeting(string memory _greeting) public {
        greeting = _greeting;
    }
}
