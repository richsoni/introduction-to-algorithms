# Ch2

## Insertion Sort
![sort](./Insertion-sort-example-300px.gif)

To run: start a lisp session ```clisp -i './insertion_sort'```

### Methods

*  ```(insertion-sort unordered-list)``` => ```ordered-list```

### Thoughts

This program defines 3 methods:  insertion-sort, _insert, and reverse-cdr.

#### insertion-sort
```insertion-sort``` sets wraps the recursive _insert method.

#### reverse-cdr
```reverse-cdr``` is a util that returns the list sans the last element e.g. ```(reverse-cdr '(1 2 3 4)) => '(1 2 3)```

#### _insert

The meat of the sorting algorithm is done in this method.
There will always only be 1 representation of each node at any given point.
The algorithm starts loaded with the cdr of the initial sequence to the right.
It loads the car of the sequence as the initial element.

The algorithm incrementally pushes elements as far left as need be.
When the right is emptied, and the last elem trickles though the left, the sort is complete.



