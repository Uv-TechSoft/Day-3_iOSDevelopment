import UIKit

//File -> New -> Playground

var greeting = "Hello, playground"
print(greeting)

let age: Int = 20 //constant, immutable, change na thay
var name: String = "Yogesh" //mutable, change thashe
//name = "Mihir"
//print(age)
//print(name)
//String()
//\()
//"\()" - String Interpolation
print("My name is", name, "My age is", age)
print("My name is " + name + " My age is " + String(age))//IMP
print("My name is \(name) and My age is \(age)")//MIMP


let multipleStr = """
My name is \(name) and
My age is \(age).
"""
print(multipleStr)

//Array- []
var firstArray: [Int] = []
var secondArray = [Int]()//imp
var secondArray1: [Int] = [Int]()
var thirdArray = [1,2,3,4,5]//direct init

print(thirdArray.contains(2))
print(thirdArray.append(8))
//print(thirdArray.append(9))
print(thirdArray.insert(6, at: 5))
print(thirdArray.insert(7, at: 6))

print(thirdArray.append(contentsOf: [9,10,11]))

//print(thirdArray.remove(at: 2))
//thirdArray.removeAll()
//thirdArray = []
print(thirdArray)
print(thirdArray.count)
//print(thirdArray[2])

//Task 1
/*
 1. Make an String Array
 2. add values - yogesh, mihir, uvesh
 3. Append
 4. remove at index
 5. array append karjo - 39 number line
 6. remove all
 
 [1,1,2,2,3,3] -array
 print([1,1,2,2,3,3]) - Output - [1,2,3]//remove duplicate from array.
 */


//Dictionary - []
var myDict1: [String: String] = [:]
var myDict2 = [String: String]()//IMP

var mainDict: [String: String] = [
    "fname": "Yogesh",
    "lname": "Patel"
]

if let dictFname = mainDict["fname"]{
    print(dictFname)
}

print(mainDict["fname"]!)
print(mainDict["lname"]!)

mainDict["fname"] = "Uvesh" // append (Add)

mainDict["age"] = "20" // append (Add)
print(mainDict.keys)
print(mainDict.values)

//print(mainDict.removeValue(forKey: "fname"))
print(mainDict)
//print(mainDict.removeAll())
//mainDict = [:]
//print(mainDict)

//Array - []
//Dictionary - [:]

var dict: [String: [Int]] = [
    "first": [1,2,3,4],
    "second": [5,6,7,8]
]
print(dict)

//var a1 = [[String: String]]()




//Task 2
/*
 var dictDict = [String: [String: String]]()
 */

//for loop
for i in 0...6{
//    print(i)
}

for i in 0..<5{
   // print(i)
}

print(thirdArray)
print(thirdArray.count)

for i in 0...thirdArray.count{
   // print("Index is \(i), and value is \(thirdArray[i])")
}

for number in thirdArray{
    print(number)
}

//dict
//(key, value) - tuple
for (key, value) in mainDict{
    print("Key is \(key), and value is \(value)")
}

//TASK
//for(index, value) in thirdArray{}


//Tuple
let fullname = ("Yogesh", "Patel")
print(fullname.0)
print(fullname.1)

let (fname, lname) = ("Yogesh", "Patel")
print(fname)
print(lname)

//Array and dict - []
//Tuple - ()


//First Day All Tasks

//Array
/*
 Task 1
 1. Make an String Array
 2. add values - yogesh, mihir, uvesh
 3. Append
 4. remove at index
 5. array append karjo - 39 number line
 6. remove all
 
 Task 2
 [1,1,2,2,3,3] -array
 print([1,1,2,2,3,3]) - Output - [1,2,3]//remove duplicate from array.
 
 Task 3
 //Remove duplicate using Forloop - CONTAIN//IMP nathi hu karaie daish try karjo.
 
 */

//Dictionary
/*
 Task 4
 var dictDict = [String: [String: String]]()
 */

//Looping
//Task 5
//for(index, value) in thirdArray{}


//Time

//ALL TASK SOLUTION

var newArray: [Int] = [1,1,2,2,3,3]
print(Set(newArray))
print(Array(Set(newArray)))
print(Set(newArray).sorted())

let characters: Set<String> = ["A", "B", "C", "A", "B", "C"]
print(characters)

var tempArray = [Int]()
print("--------------------")
for number in newArray{
//    if tempArray.contains(number){
//        print(tempArray)
//    }else{
//        tempArray.append(number)
//    }
    print(number)
    print(tempArray)
    if !tempArray.contains(number){
        tempArray.append(number)
    }
}
print("Temp Array", tempArray)

//Dictionary
var dictDict: [String: [String: String]] = [

    "person1": [
        "fname": "Yogesh",
        "lname": "Patel"
    ],
    "person2": [
        "fname": "Uvesh",
        "lname": "Imam"
    ]

]

if let person1 = dictDict["person1"]{
    if let personeName = person1["fname"]{
        print(personeName)
    }
}


for (index, value) in thirdArray.enumerated(){
    print("Index is \(index) and value is \(value)")
}

//Second Day
//Optional Chaning

var myname: String?
//print(myname ?? "No name found")//nil coalescing
/*
if myname == nil{
    print("No name found")
}else{
    print(myname!)
}
*/

//Optional Binding - optional value ne remove karshe and nil value handle karshe
if let myNameis = myname{
    print(myNameis)
}else{
    //nil
    print("No name found")
}


var mainDict1: [String: String?] = [
    "fname": nil,
    "lname": "Patel"
]

if let myName1 = mainDict1["fname"] as? String{
    print(myName1)
}else{
    print("Name is nil")
}
//print(mainDict1["fname"]!)


//Function
//Basic Syntax

func getFullName(fname: String, lname: String) -> String{
    return fname + " " + lname
}
func getFullName1(_ fname: String, lname: String) -> String{
    return fname + " " + lname
}
func getFullName2(fname: String, with lname: String) -> String{
    return fname + " " + lname
}

print(getFullName(fname: "Yogesh", lname: "Patel"))
print(getFullName1("Yogesh", lname: "Patel"))
print(getFullName2(fname: "Yogesh", with: "Patel"))


//Nested Func
func returnTen() -> Int{
    var value: Int = 5 //first operation
    
    func addFive(){
        value = value + 5 // second operation
    }
    addFive()
    
    return value
}

func returnTen1() -> (Int, String){
    var value: Int = 5 //first operation
    
    func addFive(){
        value = value + 5 // second operation
    }
    addFive()
    
    return (value, String(value))
}

//function multiple return thay

print(returnTen())
print(returnTen1().0)
print(returnTen1().1)

/*
 //DAY 1
 Let, Var, Data Types(String, Int), Array, Dictionary, For Loop, Tuple
 //DAY 2
 SET, FORLOOP(Logic), Optional ? !, nil coalescing, IFLET, Function(Multiple task), nested function, dictionary(value dictionary), enumerated(forloop array)
 */


func tempName() -> (Int, String){
    return (5, "5")
}


/*
 Enum, Switch, Extension
 */

extension Int{
    var add: Int { return self + 500 }
    var mul: Int { return self * 50 }
    var stringValue: String { return String(self) }
}

var v1: Int = 10
print(v1.add)
print(v1.mul)
print(120.add)
print(220.add)

print(String(v1))
print(v1.stringValue)

//print(v1.stringValue)
/*
 Make Int extension and add var stringValue
 */

//Developer Help Doc.

var myFullName = "Yogesh"

switch myFullName {
case "Uvesh":
    print("Uvesh Imam")
case "Yogesh":
    print("Yogesh Patel")
default:
    print("No name found!")
}

/*
//Without Type
enum CollegeDetail{
    case id
    case studentName
    case collegeName
    
    func description() -> String{
        switch self {
        case .id:
            return "IDs"
        case .studentName:
            return "Student Name"
        case .collegeName:
            return "College Name"
        }
    }
}

let collegeId = CollegeDetail.studentName.description()
print(collegeId, 3)
print(collegeId, 4)
print(collegeId, 5)
*/

//WithType
enum CollegeDetail: String{
    case id = "IDs"
    case studentName = "Student Name"
    case collegeName = "College Name"
}

print(CollegeDetail.id)//case nu name return karshe
print(CollegeDetail.id.rawValue)// assign value
print(CollegeDetail.id.hashValue)// index

/*
 Switch and Enum aene thodu detail ma net par jo jo.
 */

enum CollegeDetail1{
    case id
    case studentName
    case collegeName
}

let id = CollegeDetail1.id
print(id)
