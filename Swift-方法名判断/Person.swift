//
//  Person.swift
//  Swift-方法名判断
//
//  Created by yz on 15/4/24.
//  Copyright (c) 2015年 yz. All rights reserved.
//

import Foundation

/*
看前须知:

方法名：跟参数类型没有关系，在下面的方法中，第一个参数类型使用NSTimer，第二个参数使用Int类型，是为了测试才这样设计的。

ViewController.swift里有详细的解释。。

*/

class Person: NSObject {
    
    /*****************以下是没有参数名的情况****************/
    
        // 定义一个跑步方法
        func run(){
            println(__FUNCTION__)
        }
        // 注解: 以上方法名为: run
    
    /*********测试bug：参数类型与方法名无关*****************/
    func test(str: String){
        println(__FUNCTION__)
    }
    
    
    /*****************以下是只有一个参数并且没有外部参数名的情况****************/
    
        // 定义一个打游戏方法,只有一个参数
        func playGame(game: NSTimer){
            println(__FUNCTION__)
        }
       // 注解: 以上方法名为: playGame:, 因为game是第一个内部参数名，因此不作为方法名的一部分。

    
    /*****************以下是只有一个参数并且有外部参数名的情况****************/
    
        // 定义一个打游戏方法,只有一个参数
        func playGame(gameName game: NSTimer){
            println(__FUNCTION__)
        }
        // 注解: 以上方法名为: playGameWithGameName:, 因为系统首先会自动把外部参数名gameName的首字母大写GameName，并且在函数名playName和第一个外部参数名GameName之间拼接一个介词With,生成一个完整的方法名。
    
   
    /*****************以下是如果函数名中已经有介词了，就不会自动拼接介词With的情况****************/
        // 定义一个打游戏方法,只有一个参数
        func playGameWith(gameName game: NSTimer){
            println(__FUNCTION__)
        }
        // 注解: 以上方法名为: playGameWithGameName:, 并不是playGameWithWithGameName，因为函数名playGameWith中已经有介词With了，就不会在自动拼接了，而是直接把外部参数名gameName首字母大写，拼接上去就好了。
        
        func playGameOf(gameName game: NSTimer){
            println(__FUNCTION__)
        }
        // 注解: 以上方法名为: playGameOfGameName:,理由同上
        
        func playGameAt(gameName game: NSTimer){
            println(__FUNCTION__)
        }
        // 注解: 以上方法名为: playGameAtGameName:, ,理由同上
        
        func playGameIn(gameName game: NSTimer){
            println(__FUNCTION__)
        }
        // 注解: 以上方法名为: playGameInGameName: ,理由同上
        
        func playGameOn(gameName game: NSTimer){
            println(__FUNCTION__)
        }
        // 注解: 以上方法名为: playGameOnGameName: ,理由同上
        
        func playGameBy(gameName game: NSTimer){
            println(__FUNCTION__)
        }
        // 注解: 以上方法名为: playGameByGameName:,理由同上

   
    
    
    /*****************以下有多个参数，并且没有外部参数名的情况****************/
    
        // 定义一个和MM，在某个地点聊天方法，有2个参数
        func chat(mm: NSTimer, address: Int){
            println(__FUNCTION__)
        }
    
        // 注解 以上方法名为: chat:address:, 因为mm是第一个参数，不作为方法名的一部分，第二个内部参数名address才作为方法名的一部分，每个参数对应一个冒号.
    
    
    /*****************以下有多个参数，并且有外部参数名情况****************/

        // 定义一个和MM，在某个地点聊天方法
        func chat(mm: NSTimer, place address: Int){
            
            println(__FUNCTION__)
        }
        // 注解: 以上方法名为: chat:place:,因为mm没有外部参数名就不会作为方法的一部分，address有外部参数，就系统就不会自动生成address外部参数，直接使用定义的外部参数名place
        
        // 定义一个和MM，在某个地点聊天方法
        func chat(xiaoCang mm: NSTimer, place address: Int){
            
            println(__FUNCTION__)
        }
        // 注解：以上方法名为: chatWithXiaoCang:place:,因为mm有外部参数名就会作为方法的一部分并且拼接一个介词With，address有外部参数，就系统就不会自动生成address外部参数，直接使用定义的外部参数名place
        
        // 定义一个和MM，在某个地点聊天方法
        func chat(xiaoCang mm: NSTimer, _ address: Int){
            
            println(__FUNCTION__)
        }
        // 注解： 以上方法名为: chatWithXiaoCang::,因为mm有外部参数名就会作为方法的一部分并且拼接一个介词With，address没有外部参数，因为声明_(强制符)系统就不会自动生成address外部参数，切记只有外部参数才会作为方法的一部分。
}

/*

*/