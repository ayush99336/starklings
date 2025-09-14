// Make me compile without changing the indicated lines

// SOLUTION: Fixed the move semantics issue by cloning arr0 before passing it to fill_arr.
// This creates a separate copy of the data, allowing us to use the original arr0 in println!
//
// Alternative approaches mentioned in the hint:
// 1. [IMPLEMENTED] Clone arr0: fill_arr(arr0.clone()) 
// 2. Use mutable reference: change fill_arr to take `ref mut arr` and modify in place
// 3. Use snapshot: change fill_arr to take `@Array<felt252>` and clone inside the function

fn main() {
    let arr0 = array![];

    let mut _arr1 = fill_arr(arr0.clone());

    // Do not change the following line!
    println!("{:?}", arr0);
}

// Do not change the following line!
fn fill_arr(arr: Array<felt252>) -> Array<felt252> {
    let mut arr = arr;

    arr.append(22);
    arr.append(44);
    arr.append(66);

    arr
}
