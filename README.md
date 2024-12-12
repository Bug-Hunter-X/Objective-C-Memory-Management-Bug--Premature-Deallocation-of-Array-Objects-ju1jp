# Objective-C Memory Management Bug: Premature Deallocation of Array Objects

This repository demonstrates a common Objective-C memory management issue involving premature deallocation of objects added to arrays.  The bug arises from a misunderstanding of how `retain`, `release`, and `autorelease` interact with array additions.  The solution highlights the correct approach to ensure proper memory management in such scenarios.

**Bug:**
The `bug.m` file illustrates the incorrect memory management practice where an object is added to an array but prematurely released, leading to potential crashes or unexpected behavior.

**Solution:**
The `bugSolution.m` file demonstrates the corrected approach, which ensures proper retention of the object until it's no longer needed by the array.