import UIKit

//var greeting = "Hello, playground"

//function printValues
/*
func printValues(from value: Int)
{
    if value <= 0 { return }
    print(value)
    printValues(from: value - 1)
}
printValues(from: 3)


func basicData()
{
    var basicString: String="Hello"
    var basicChar: Character="X"
    var basicBool: Bool=false
    var basicInt:   Int=324
    var basicInt64: Int64=3453873484095830
    var basicDouoble = 43.46
    var basicArray: [Int] = [1, 2, 3, 4, 5, 9, 7, 6]
                             var basicDict: [String: Int] = ["Uno" : 1, "Dos" : 2, "Tres"  : 3]
    var basicArrayOfSize = (repeating : 0, count:5)
    var basicSet: Set<String> = ["Uno", "Dos", "Tres"]
    //print (basicSet)
}
basicData()
*/

func lettersUnique(input: String)-> Bool
{
    //set will contain only unique values
    //and will be shorter on dups
    var countingSet = Set<Character>()
    for char in input
    {
        countingSet.insert(char)
    }
    return (countingSet.count == input.count)
}
func lettersPalindrome(input: String)->Bool
{
    let result = String(input.reversed())
    if(input != "" && input == result) {
        return true
    } else {
        return false
    }
}
func stingContainsOther(input: String,
                    input2: String) -> Bool
{
    return input.contains(input2)
}

func charCount(input: String)->Int
{
    return input.count
}

func dupRemove(input: String)->String
{
    var result=""
    //set will contain only unique values
    var countingSet = Set<Character>()
    for char in input
    {
        if countingSet.contains(char)
        {
            //This is a duplicate entry
            //do not add it to result
        }
        else
        {
            countingSet.insert(char)
            result.append(char)
        }
    }
    return result
}

var newTest="racecar"
//print (dupRemove(input:newTest))

//Closure -- during class



/*
var inputString="gohangasalamiimalasagnahog"
var otherString="lasagna"
var newTest="racecar"
var other="car"
if stingContainsOther(input:newTest, input2:other)
{
    print ("AHA")
}
else
{
    print ("Shut her down Clancey she's pumping mud")
}
print (charCount(input: newTest))
 */

//Assigned problems:
/* Given an array and Sum
   Determine number of pairs that make the sum */
func SumProblem( inputArr: [Int], inputSum: Int) -> Int {
    //print("Start")
    var result=0;
    for i in 0..<inputArr.count
    {
        for j in i+1..<inputArr.count
        {
            //print (inputArr[i])
            if inputArr[i] + inputArr[j] == inputSum
            {
                result+=1
            }
        }
    }
    return result;
}
var inputArray1 = [0, 1, 2, 3, 4, 5, 6]
var sum = 6
var x = SumProblem(inputArr: inputArray1, inputSum: sum)
//print (x)


/* Assignment problem 2
 Write a function for mapping a closure to every object in an Array. The closure is passed a value from the array and returns an object.
 */


print ("Mapping Closure")
// Here's the array:
var numbers = [1, 2, 3, 4, 5]

// square the input value
var mapper = {  (currentNum: Int) -> Dictionary in
    let result=[currentNum: currentNum * currentNum]
    return result
}

// Now call it:
var newArray = numbers.map(mapper)
print (newArray)


/*
 What is the difference between var and let?
 var means the storage is a variable and the value can change, whereas let defines storage that takes an initial value that cannot be changed
 What is an optional?
 Optional is a constant or variable that can hold a value or no value
 What is optional chaining vs optional binding?
 Binding is used to check whether an optional variable or constant has a non-nil value,
 Optional chaining allows us to call properties, methods, and subscripts on an optional that might be nil.
 
 What are the different ways to unwrap an optional? How do they work? Are they safe?
 
 What is a closure?
 defining something as a closure allows the devloper to pass the function by reference as though it were any other parameter
 What is the difference between a class and a struct?
 Classes are reference type, Structs are value type objects AND
 classes can inherit another classes characteristics
 Classes are reference type, Structs are value type objects
 What is the syntax '??' do?
 allows the developer to provide a default value
 What is a tuple?
 an object that can contain multiple types and returned from a function
 What is Any vs AnyObject?
 Any can represent an instance of any type at all, including function types and optional types.
 AnyObject can represent an instance of any class type.
 What is a protocol?
 a set of rules that determines what methods and properties must be adopted by an inheriting class
 */
