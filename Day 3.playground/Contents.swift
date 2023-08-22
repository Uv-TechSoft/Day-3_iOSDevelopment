import UIKit

// Day 3

// Revision of Function
func new() -> (Int,String)
{
    return(32,"new function")
}
print(new())

// Switch

var username = [String]()
username.append("uvesh")
username.append("uveshimam")
print(username)
switch username
{
case ["uvesh","uvesh"]:

       print("Wrong")

case ["uvesh","uveshimam"]:

        print("Correct Value")

default:

        print("No Correct Value Found")

}

let news = "names"
switch news
{
case "new": print("no name found")
case "names": print("Uvesh Imam")
default:
    print("Check Your Input Properly")
}

// Extention

extension String
{
    var a : String { return self + " Uvesh Imam"}
}
var newvar:String = "my name"
print(newvar.a)

extension Int
{
    var v: Int {return self + 10}
    var v1: String{ return String(self)}
}
var newnew = 5000
print(newnew.v)
print(newnew.v1)


// Enum
// Using Enum first letter of it should be capitalized

enum News
{
    case Studentnames
    case StudentId
}
let students = News.StudentId
let studentsnamed = News.Studentnames
print(students)
print(students.hashValue)
print(studentsnamed.self)


enum Collage : Int
{
    case studentname
    case studentnumber
    case studentaddress
    case studentage
}
let studentsn = Collage.studentname
let studentsnum = Collage.studentnumber
let studentaddr = Collage.studentaddress
let studentages = Collage.studentage
print(studentsn)
print(studentsnum.self)
print(studentsn.self)
print(studentaddr.self)
print(studentages.self)
