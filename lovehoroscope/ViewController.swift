//
//  ViewController.swift
//  lovehoroscope
//
//  Created by Desireé Bryant on 2/6/16.
//  Copyright © 2016 Desireé Bryant. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
 
  @IBAction func dateTextFieldedit(_ sender: UITextField) {

    // Show date picker on load
    datePickerView.isHidden = false
    
    //hide results
    results.isHidden = true
    
    // hide keyboard
    dateTextField.inputView = UIView()

  }
  
  // Set Date Formatter
  let dateFormatter = DateFormatter()
  

  @IBAction func datePickerAction(_ sender: AnyObject) {
    dateFormatter.dateFormat = "MM-dd-yyyy"
    dateFormatter.dateStyle = DateFormatter.Style.medium
    let strDate = dateFormatter.string(from: datePickerView.date)
    dateTextField.text = strDate
  }
 
  @IBAction func getDateSubmit(_ sender: UIButton) {
  
    // Hide date picker on load
    datePickerView.isHidden = true
    
    // Set Date Formatter
    let dateFormatter = DateFormatter()

    dateFormatter.dateFormat = "MMdd"
    let strBday = Int(dateFormatter.string(from: datePickerView.date))
    print(strBday!)
    
    // ARIES
    let ariesStart: Int = 321;
    let ariesEnd: Int = 421;
    
    if (strBday! >= ariesStart && strBday! <= ariesEnd) {
      let aries = "Aries\n" + "\n" + "Most compatible:\n" + "Leo and Sagittarius.\n" + "\n" + "Least compatible:\n" + "Cancer, Libra and Capricorn.";
      results.text = aries;
      results.isHidden = false
    }
    
    // TAURUS
    let taurusStart: Int = 0420;
    let taurusEnd: Int = 0520;
    
    if (strBday! >= taurusStart && strBday! <= taurusEnd) {
      let taurus = "Taurus\n" + "\n" + "Most compatible:\n" +  "Virgo and Capricorn.\n" + "\n" + "Least compatible with Aquarius, Leo and Scorpio."
      results.text = taurus;
      results.isHidden = false
    }
    
    // GEMINI
    let geminiStart: Int = 0521;
    let geminiEnd: Int = 0620;
    
    if (strBday! >= geminiStart && strBday! <= geminiEnd) {
      let gemini = "Gemini\n" + "\n" + "Most compatible:\n" + "Libra and Aquarius.\n" + "\n" + "Least compatible:\n" + "Virgo, Sagittarius and Pisces."
      results.text = gemini;
      results.isHidden = false
    }
    
    // CANCER
    let cancerStart: Int = 0621;
    let cancerEnd: Int = 0722;
    
    if (strBday! >= cancerStart && strBday! <= cancerEnd) {
      let cancer = "Cancer\n" + "\n" + "Most compatible:\n" + "Scorpio and Pisces.\n" + "\n" + "Least compatible:\n" + "Aries, Libra and Capricorn."
      results.text = cancer;
      results.isHidden = false
    }
    
    // LEO
    let leoStart: Int = 0723;
    let leoEnd: Int = 0822;
    
    if (strBday! >= leoStart && strBday! <= leoEnd) {
      let leo = "Leo\n" + "\n" + "Most compatible:\n" + "Sagittarius and Aries.\n" + "\n" + "Least compatible:\n" + "Scorpio, Aquarius and Taurus."
      results.text = leo;
      results.isHidden = false
    }
    
    // VIRGO
    let virgoStart: Int = 0823;
    let virgoEnd: Int = 0922;
    
    if (strBday! >= virgoStart && strBday! <= virgoEnd) {
      let virgo = "Virgo\n" + "\n" + "Most compatible:\n" + "Capricorn and Taurus.\n" + "\n" + "Least compatible:\n" + "Sagittarius, Pisces and Gemini."
      results.text = virgo;
      results.isHidden = false
    }
    
    // LIBRA
    let libraStart: Int = 0923;
    let libraEnd: Int = 1022;
    
    if (strBday! >= libraStart && strBday! <= libraEnd) {
      let libra = "Libra\n" + "\n" + "Most compatible:\n" + "Aquarius and Gemini.\n" + "\n" + "Least compatible:\n" + "Aries, Capricorn and Cancer."
      results.text = libra;
      results.isHidden = false
    }
    
    // SCORPIO
    let scorpioStart: Int = 1023;
    let scorpioEnd: Int = 1121;
    
    if (strBday! >= scorpioStart && strBday! <= scorpioEnd) {
      let scorpio = "Scorpio\n" + "\n" + "Most compatible:\n" + "Pisces and Cancer.\n" + "\n" + "Least compatible:\n" + "Aquarius, Taurus and Leo."
      results.text = scorpio;
      results.isHidden = false
    }
    
    // SAGITTARIUS
    let sagittariusStart: Int = 1122;
    let sagittariusEnd: Int = 1221;
    
    if (strBday! >= sagittariusStart && strBday! <= sagittariusEnd) {
      let sagittarius = "Sagittarius\n" + "\n" + "Most compatible:\n" + "Aries and Leo.\n" + "\n" + "Least compatible:\n" + "Pisces, Gemini and Virgo."
      results.text = sagittarius;
      results.isHidden = false
    }
    
    // CAPRICORN
    let capricornStart: Int = 1222;
    let capricornEnd: Int = 0119;

    if ((strBday! >= capricornStart && strBday! <= 1231) || (strBday! >= 0101 && strBday! <= capricornEnd)) {
      let capricorn = "Capricorn\n" + "\n" + "Most compatible:\n" + "Virgo and Taurus.\n" + "\n" + "Least compatible:\n" + "Aries, Cancer and Libra."
      results.text = capricorn;
      results.isHidden = false
    }
    
    // AQUARIUS
    let aquariusStart: Int = 0120;
    let aquariusEnd: Int = 0219;
    
    if (strBday! >= aquariusStart && strBday! <= aquariusEnd) {
      let aquarius = "Aquarius\n" + "\n" + "Most compatible:\n" + "Gemini and Libra.\n" + "\n" + "Least compatible:\n" + "Taurus, Leo and Scorpio."
      results.text = aquarius;
      results.isHidden = false
    }
    
    // PISCES
    let piscesStart: Int = 0220;
    let piscesEnd: Int = 0320;
    
    if (strBday! >= piscesStart && strBday! <= piscesEnd) {
      let pisces = "Pisces\n" + "\n" + "Most compatible:\n" + "Scorpio and Cancer.\n" + "\n" + "Least compatible:\n" + "Gemini, Virgo, and Sagittarius."
      results.text = pisces;
      results.isHidden = false
    }

  }
  
  @IBOutlet weak var results: UILabel!
  @IBOutlet weak var dateTextField: UITextField!
  @IBOutlet weak var datePickerView: UIDatePicker!
  
  override func viewDidLoad() {
    
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.

    // Override background color - simulator bug
    self.view.backgroundColor = UIColor.white
    
    // Date Picker: Month, Day, Year
    datePickerView.datePickerMode = UIDatePickerMode.date
    
    // Hide date picker on load
    datePickerView.isHidden = true
    
    // text input padding
    let spacerView = UIView(frame:CGRect(x:0, y:0, width:10, height:10))
    dateTextField.leftViewMode = UITextFieldViewMode.always
    dateTextField.leftView = spacerView
    
    // invisible cursor
    dateTextField.tintColor = UIColor.clear

  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
}


