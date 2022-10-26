import UIKit

var greeting = "Hello, playground"

//func challengeFun(name:String, age:Int) -> String {
//    if(age >= 0){
//        if(age>=18){
//            var ageStr = String(age)
//            return "Hello \(name), \(ageStr)"
//        }
//        else{return "No you can't"}
//    }
//    else{return "Error"}
//}
//print(challengeFun(name: "Alex", age: 19))
let list = "qwertyuiopasdfghjklzxcvbnm`~!@#$%^&*()_-+=|:;<,>.?/{}[]QWERTYUIOPASDFGHJKLZXCVBNM"
func challengeFun(password:String) -> Bool{
    var check1 = Bool(false) // check if all characters are not numbers
    var check2 = Bool(false) // check if more than 6 and less than 20
    var check3 = Bool(false) // check if don't contain space
    //firs  bool
    for char in list{
        if (password.contains(char)){
            check1 = true                }
        else{}
    }
    //second bool
    if (password.count >= 6 && password.count <= 20){check2 = true}
    else{check2 = false}
    //third bool
    if(password.contains(" ")){check3 = false}
    else{check3 = true}
    
    if(check1 == true && check2 == true && check3 == true){return true}
    else{return false}
    
}
print(challengeFun(password: "123456A"))
print(challengeFun(password: "pas"))
print(challengeFun(password: "passwor D"))
print(challengeFun(password: "123455"))

