The solution involves ensuring that the array retains the added object, either explicitly or implicitly.  One approach is to explicitly retain the object before adding it to the array:

```objectivec
NSMutableArray *myArray = [NSMutableArray array];
MyObject *myObject = [[MyObject alloc] init];
[myObject retain]; // Explicit retain
[myArray addObject:myObject];
[myObject release]; // Now safe to release because array retains it
```

Another, simpler approach which avoids explicit retain/release calls is to use ARC (Automatic Reference Counting) which handles retain/release automatically. In ARC, the code would simply be:
```objectivec
NSMutableArray *myArray = [NSMutableArray array];
MyObject *myObject = [[MyObject alloc] init];
[myArray addObject:myObject];
//No need for explicit release here, ARC handles this.
```

In both cases, the key is preventing premature release of the object. If you are using non-ARC you need to manage the object's retain count carefully, whereas in ARC the compiler will handle the details for you.