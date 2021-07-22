import UIKit
//HomeWorks2
/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()
 */
/*var numberOne: Float = 3.1
var numberTwo: Float = 42.0
var numberThree: Double = Double(numberOne) + Double(numberTwo)
print(numberThree)*/
/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 */
var numberOne = 123
var numberTwo = 100
let numberTree = numberOne / numberTwo
let numberFourRemainder = numberOne % numberTwo

print("When dividing \(numberOne) by \(numberTwo), the result is \(numberTree), the remainder is \(numberFourRemainder).")
/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */
let qty = 0
var price = 1000
var totalSum = qty * price
if qty >= 5 && qty < 10 {
    price = 900
}else if qty >= 10{
    price = 850
}

if qty != 0 {
    print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
}else{
    print("please enter a valid MacBook qty")
}


/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */
let userInputAge = "33a"
//let convertStringToInt = Int(userInputAge)!
if Int(userInputAge) != nil {
    print("String is convertible to Int with the value \(Int(userInputAge) ?? 0)")
}else{
    print("Unable to convert")
}
/*
 Ex5:
 Calculate the number of years, months, days from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")
 */
let formatter = DateFormatter()
formatter.dateFormat = "dd.MM.yyyy"
let calendar = Calendar.current
let currentDate = Date()
let myBirthDateString = "27.01.1986"
let myBirthDate = formatter.date(from: myBirthDateString) ?? Date()
let totalYearsFromBirth = calendar.dateComponents([.year], from: myBirthDate, to: currentDate).year
let totalMonthsFromBirth = calendar.dateComponents([.month], from: myBirthDate, to: currentDate).month
let totalDaysFromBirth = calendar.dateComponents([.day], from: myBirthDate, to: currentDate).day
if totalYearsFromBirth == 0 || totalMonthsFromBirth == 0 || totalDaysFromBirth == 0 {
    print("Unable to check total years, months is \(totalYearsFromBirth ?? 0)")
}else{
    print("Total years: \(totalYearsFromBirth!) , total months: \(totalMonthsFromBirth!), total days: \(totalDaysFromBirth!)")
}
/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */
if let month = calendar.dateComponents([.month], from: myBirthDate).month {
    var quarter = 0
    switch month {
    case 1...3:
        quarter = 1
    case 4...6:
        quarter = 2
    case 7...9:
        quarter = 3
    case 10...12:
        quarter = 4
    default:
        quarter = 0
    }
    if quarter != 0 {
        print("I was born in the \(quarter) quarter")
    }else{
    }
}
