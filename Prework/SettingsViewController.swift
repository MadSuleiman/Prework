//
//  SettingsViewController.swift
//  Prework
//
//  Created by Ahmad Suleiman on 8/15/21.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var picker: UIPickerView!
    
    var pickerData: [String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        pickerData =  ["$","€","¥","£","¢","৳","₣","₴"]
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
