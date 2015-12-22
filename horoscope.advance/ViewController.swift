//
//  ViewController.swift
//  horoscope.advance
//
//  Created by Ryan on 22/12/2015.
//  Copyright © 2015 Ryan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
     var arrayHoroscope = ["水瓶座", "雙魚座", "牡羊座", "金牛座", "雙子座", "巨蟹座", "獅子座", "處女座", "天秤座", "天蝎座", "射手座", "山羊座"]

    
    @IBOutlet weak var horoscopeLabel: UILabel!
    @IBOutlet weak var aquarius: UIButton!
    @IBOutlet weak var aries: UIButton!
    @IBOutlet weak var pisces: UIButton!
    @IBOutlet weak var taurus: UIButton!
    @IBOutlet weak var gemini: UIButton!
    @IBOutlet weak var cancer: UIButton!
    @IBOutlet weak var leo: UIButton!
    @IBOutlet weak var virgo: UIButton!
    @IBOutlet weak var libra: UIButton!
    @IBOutlet weak var scorpio: UIButton!
    @IBOutlet weak var sagittarius: UIButton!
    @IBOutlet weak var capricorn: UIButton!
    @IBOutlet weak var perivous: UIButton!
    @IBOutlet weak var next: UIButton!
    
    var arrayNum = 7
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        changeLabelTitle()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func changeArrayNum(array: Int) {
        arrayNum = array
        if arrayNum <= 10 &&  arrayNum > 0 {
            changeLabelTitle()
        }else if arrayNum < 0 {
            arrayNum = 11
            changeLabelTitle()
        }else{
            arrayNum = 0
            changeLabelTitle()
        }
    }
    func changeLabelTitle () {
        horoscopeLabel.text = "\(arrayHoroscope[arrayNum])"
    }
    
    @IBAction func aquariusPressed(sender: AnyObject) {
        changeArrayNum(0)
    }
    @IBAction func ariesPressed(sender: AnyObject) {
        changeArrayNum(1)
    }
    @IBAction func piscesPressed(sender: AnyObject) {
        changeArrayNum(2)
    }
    @IBAction func taurusPressed(sender: AnyObject) {
        changeArrayNum(3)
    }
    @IBAction func geminiPressed(sender: AnyObject) {
        changeArrayNum(4)
    }
    @IBAction func cancerPressed(sender: AnyObject) {
        changeArrayNum(5)
    }
    @IBAction func leoPressed(sender: AnyObject) {
        changeArrayNum(6)
    }
    @IBAction func virgoPressed(sender: AnyObject) {
       changeArrayNum(7)
    }
    @IBAction func libraPressed(sender: AnyObject) {
      changeArrayNum(8)
    }
    @IBAction func scorpioPressed(sender: AnyObject) {
        changeArrayNum(9)
    }
    @IBAction func sagittariusPressed(sender: AnyObject) {
      changeArrayNum(10)
    }
    @IBAction func capricornPressed(sender: AnyObject) {
        changeArrayNum(11)
    }
    @IBAction func nextPressed(sender: AnyObject) {
        changeArrayNum(arrayNum + 1)
    }
    @IBAction func perviousPressed(sender: AnyObject) {
        changeArrayNum(arrayNum - 1)
    }

    

}

