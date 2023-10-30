// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/CaughtWithFuzz.sol";

contract CaughtWithFuzzTest is Test {
    CaughtWithFuzz public caughtWithFuzz;

    function setUp() public {
        caughtWithFuzz = new CaughtWithFuzz();
    }

    function testFuzz(uint256 randomNumber) public {
        uint256 returnedNumber = caughtWithFuzz.doMoreMath(randomNumber);
        assert(returnedNumber != 0);
    }
}

// forge test --mt testFuzz
// [⠒] Compiling...
// [⠊] Compiling 1 files with 0.8.21
// [⠰] Solc 0.8.21 finished in 8.46s
// Compiler run successful with warnings:
// Warning (2018): Function state mutability can be restricted to view
//   --> test/CaughtWithFuzz.t.sol:14:5:
//    |
// 14 |     function testFuzz(uint256 randomNumber) public {
//    |     ^ (Relevant source part starts here and spans across multiple lines).

// Warning (8158): Solver z3 was selected for SMTChecker but it is not available. libz3.so.4.12 was not found.

// Warning (9134): Requested source "src/CaughtWithSymbolic.sol" does not exist.

// Warning (7649): CHC analysis was not possible since no Horn solver was found and enabled. The accepted solvers for CHC are Eldarica and z3.

// Warning (7649): CHC analysis was not possible since no Horn solver was found and enabled. The accepted solvers for CHC are Eldarica and z3.

// Warning (7649): CHC analysis was not possible since no Horn solver was found and enabled. The accepted solvers for CHC are Eldarica and z3.

// Warning (7649): CHC analysis was not possible since no Horn solver was found and enabled. The accepted solvers for CHC are Eldarica and z3.

// Warning (7649): CHC analysis was not possible since no Horn solver was found and enabled. The accepted solvers for CHC are Eldarica and z3.

// Warning (7649): CHC analysis was not possible since no Horn solver was found and enabled. The accepted solvers for CHC are Eldarica and z3.

// Warning (7649): CHC analysis was not possible since no Horn solver was found and enabled. The accepted solvers for CHC are Eldarica and z3.

// Warning (7649): CHC analysis was not possible since no Horn solver was found and enabled. The accepted solvers for CHC are Eldarica and z3.

// Warning (7649): CHC analysis was not possible since no Horn solver was found and enabled. The accepted solvers for CHC are Eldarica and z3.

// Warning (7649): CHC analysis was not possible since no Horn solver was found and enabled. The accepted solvers for CHC are Eldarica and z3.

// Warning (7649): CHC analysis was not possible since no Horn solver was found and enabled. The accepted solvers for CHC are Eldarica and z3.

// Warning (7649): CHC analysis was not possible since no Horn solver was found and enabled. The accepted solvers for CHC are Eldarica and z3.

// Warning (7649): CHC analysis was not possible since no Horn solver was found and enabled. The accepted solvers for CHC are Eldarica and z3.

// Warning (7649): CHC analysis was not possible since no Horn solver was found and enabled. The accepted solvers for CHC are Eldarica and z3.

// Warning (7649): CHC analysis was not possible since no Horn solver was found and enabled. The accepted solvers for CHC are Eldarica and z3.

// Warning (7649): CHC analysis was not possible since no Horn solver was found and enabled. The accepted solvers for CHC are Eldarica and z3.

// Warning (7649): CHC analysis was not possible since no Horn solver was found and enabled. The accepted solvers for CHC are Eldarica and z3.

// Warning (7649): CHC analysis was not possible since no Horn solver was found and enabled. The accepted solvers for CHC are Eldarica and z3.

// Warning (7649): CHC analysis was not possible since no Horn solver was found and enabled. The accepted solvers for CHC are Eldarica and z3.

// Warning (7649): CHC analysis was not possible since no Horn solver was found and enabled. The accepted solvers for CHC are Eldarica and z3.


// Running 1 test for test/CaughtWithFuzz.t.sol:CaughtWithFuzzTest
// [PASS] testFuzz(uint256) (runs: 1000, μ: 5782, ~: 5766)
// Test result: ok. 1 passed; 0 failed; 0 skipped; finished in 1.54s

// Running 1 test for test/CaughtWithStatefulFuzz.t.sol:CaughtWithStatefulFuzzTest
// [PASS] testFuzzPasses(uint128) (runs: 1000, μ: 13682, ~: 13682)
// Test result: ok. 1 passed; 0 failed; 0 skipped; finished in 1.62s

// Ran 2 test suites: 2 tests passed, 0 failed, 0 skipped (2 total tests)


