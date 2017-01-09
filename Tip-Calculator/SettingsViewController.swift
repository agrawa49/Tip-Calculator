//
//  SettingsViewController.swift
//  Tip-Calculator
//
//  Created by Akhil Agrawal on 1/9/17.
//  Copyright © 2017 Akhil Agrawal. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipPercentage: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func setTipPercentage(_ sender: Any) {
        let defaults = UserDefaults.standard
        defaults.set(defaultTipPercentage.selectedSegmentIndex, forKey: "defaultPercentage")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let defaults = UserDefaults.standard
        defaultTipPercentage.selectedSegmentIndex = defaults.integer(forKey: "defaultPercentage")

    }

}
