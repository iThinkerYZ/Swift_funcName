//
//  ViewController.swift
//  Swift-方法名判断
//
//  Created by yz on 15/4/24.
//  Copyright (c) 2015年 yz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var p: Person = Person()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 如何验证方法名正确:如果能成功调用对应的方法，就说明方法名正确，方法名错误是不可能调用方法的。
        
        // 测试Bug方法
        // Bug分析:
        // 会报错-[__NSCFTimer copyWithZone:]: unrecognized selector sent to instance 0x7ff7b3e714a0
        // 这是因为test:参数类型是String,而传入的第一个参数是定时器本身，NSTimer类型，string类型在Swift中是值传递，也就是会复制一份字符串，在传入进去，而NSTimer类型是没有copy语法的，就报错了。
        // 因此为了测试方便，第一个参数类型就采用NSTimer,避免copy错误。
        // 这个测试技巧必须了解，方法名跟参数类型无关
//        NSTimer.scheduledTimerWithTimeInterval(1, target: p, selector: "test:", userInfo: nil, repeats: true)
        
        // 没有参数
         NSTimer.scheduledTimerWithTimeInterval(1, target: p, selector: "run", userInfo: nil, repeats: true)
        
        // 只有一个参数并且没有外部参数名
//         NSTimer.scheduledTimerWithTimeInterval(1, target: p, selector: "playGame:", userInfo: nil, repeats: true)
        
        // 只有一个参数并且有外部参数名
//        NSTimer.scheduledTimerWithTimeInterval(1, target: p, selector: "playGameWithGameName:", userInfo: nil, repeats: true)
        
        //如果函数名中已经有介词了，就不会自动拼接介词With的情况
//        NSTimer.scheduledTimerWithTimeInterval(1, target: p, selector: "playGameByGameName:", userInfo: nil, repeats: true)
        
        // 以下有多个参数，并且没有外部参数名的情况
//        NSTimer.scheduledTimerWithTimeInterval(1, target: p, selector: "chat:address:", userInfo: nil, repeats: true)
        
        
        // 以下有多个参数，并且有外部参数名情况
//        NSTimer.scheduledTimerWithTimeInterval(1, target: p, selector: "chat:place:", userInfo: nil, repeats: true)
//        NSTimer.scheduledTimerWithTimeInterval(1, target: p, selector: "chatWithXiaoCang:place:", userInfo: nil, repeats: true)
//
//        NSTimer.scheduledTimerWithTimeInterval(1, target: p, selector: "chatWithXiaoCang::", userInfo: nil, repeats: true)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

