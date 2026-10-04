// Exercise 06 - Understanding Optionals
var middleName: String? = "Nimal"
print(middleName as Any)
middleName = nil
print(middleName as Any)
let validNumber = Int("25")
let invalidNumber = Int("Hello")
print(validNumber as Any)
print(invalidNumber as Any)

var studentName: String? = "Kamal"
if let name = studentName {
    print("Student Name: \(name)")
} else {
    print("Student name is not available")
}
studentName = nil
// print(studentName!) // Unsafe: force unwrapping nil would crash.
if let name = studentName {
    print("Student Name: \(name)")
} else {
    print("Student name is not available")
}

// Activity 5 - Multiple optional binding and nil coalescing
var firstName: String? = "Kamal"
var lastName: String? = "Perera"
var email: String? = nil
if let first = firstName, let last = lastName {
    print("Full Name: \(first) \(last)")
} else {
    print("Complete name is not available")
}
print("Email: \(email ?? "Not Provided")")
lastName = nil
if let first = firstName, let last = lastName {
    print("Full Name: \(first) \(last)")
} else {
    print("Complete name is not available")
}
var nickname: String? = nil
print(nickname ?? "No Nickname")
nickname = "Kama"
print(nickname ?? "No Nickname")

/* Knowledge Check
1. let declares a constant that cannot be reassigned after initialization;
   var declares a variable whose value can change.
2. Type inference means Swift determines a value's type from its initial value.
3. Int stores whole numbers; Double stores double-precision floating-point numbers.
4. Explicit conversion makes the intended numeric type clear and prevents
   incompatible types from being mixed accidentally. Some conversions lose precision.
5. % calculates the remainder after integer division.
6. String interpolation inserts values into a string using \(value).
7. String? is an optional String: it can contain a String or nil.
8. nil means the absence of a value in an optional.
9. Force unwrapping with ! causes a runtime error when the optional is nil.
10. if let safely unwraps an optional and executes its block only if a value exists.
11. ?? uses an optional's value when present, or supplies a default when it is nil.
*/
