
// x is private, y is public.  
// This means that we will assert that we know a value x which is different from y without revealing x
fn main(x: Field, y: pub Field) {
    assert(x != y);
}

#[test]
fn test_main() {
    main(1, 2);

    // Uncomment to make test fail
    // main(1, 1);
}
