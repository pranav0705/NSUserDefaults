//
//  ViewController.swift
//  NSUserDefaults
//
//  Created by Pranav Bhandari on 4/2/17.
//  Copyright © 2017 Pranav Bhandari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var theme: UILabel!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var themeSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let value = UserDefaults.standard.value(forKey: "ThemeOn") {
            if(value as! Bool){
            
                themeSwitch.setOn(true, animated: false)
            }
            else{
                UserDefaults.standard.set(true, forKey: "ThemeOn")
                themeSwitch.setOn(false, animated: false)
            }
        }
        switchFlipped(sender: self)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func switchFlipped(sender: AnyObject){
        if themeSwitch.isOn{
            theme.text = "DayLight Theme is On"
            img.image = UIImage(named: "Sun")
            view.backgroundColor = UIColor(red: 129/255, green: 243/255, blue: 253/255, alpha: 1)
            UserDefaults.standard.set(true, forKey: "ThemeOn")
        }
        else{
            theme.text = "MidNight Theme is On"
            img.image = UIImage(named: "moon")
            view.backgroundColor = UIColor(red: 88/255, green: 86/255, blue: 214/255, alpha: 1)
            UserDefaults.standard.set(false, forKey: "ThemeOn")
        }
    }


}

