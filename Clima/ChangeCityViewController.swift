//
//  ChangeCityViewController.swift
//  WeatherApp
//
//  Created by Angela Yu on 23/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit


//Write the protocol declaration here:
protocol ChangeCityDelegate {
    func userEnteredANewCityName(city: String)
    func humidityShow (showHumidity: String)
}


class ChangeCityViewController: UIViewController {
    
    var trueorfalse : String = ""
    var delegate : ChangeCityDelegate?
    
    //This is the pre-linked IBOutlets to the text field:
    @IBOutlet weak var changeCityTextField: UITextField!
    
    
    //This is the IBAction that gets called when the user taps on the "Get Weather" button:
    
    
    @IBAction func getWeatherPressed(_ sender: AnyObject) {
        
        let cityName = changeCityTextField.text!
        
        delegate?.userEnteredANewCityName(city: cityName)
        
        self.dismiss(animated: true, completion: nil)
        
    }
    @IBAction func toggle(_ sender: UISwitch) {
        
        if (sender.isOn == true) {
            trueorfalse = "isOn"
    delegate?.humidityShow(showHumidity: trueorfalse)
        }
        else{
            trueorfalse = "isOff"
            delegate?.humidityShow(showHumidity: trueorfalse)
        }
    }
    
    @IBAction func backButtonPress(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    //This is the IBAction that gets called when the user taps the back button. It dismisses the ChangeCityViewController.
    
}
