//
//  ViewController.swift
//  Miracle Pill
//
//  Created by Aman Chawla on 19/02/17.
//  Copyright © 2017 Aman Chawla. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

	@IBOutlet weak var statePicker: UIPickerView!
	@IBOutlet weak var statePickerBtn: UIButton!
	
	@IBOutlet weak var countryTextBox: UITextField!
	@IBOutlet weak var countryLabel: UILabel!
	@IBOutlet weak var zipLabel: UILabel!
	@IBOutlet weak var zipTextBox: UITextField!
	
	let states = ["California,", "Alabama,", "Arkansas,", "Arizona,", "Alaska,", "Colorado,", "Connecticut,", "Delaware,", "Florida,", "Georgia,", "Hawaii,", "Idaho,", "Illinois,", "Indiana,", "Iowa,", "Kansas,", "Kentucky,", "Louisiana,", "Maine,", "Maryland,", "Massachusetts,", "Michigan,", "Minnesota,", "Mississippi,", "Missouri,", "Montana,", "Nebraska,", "Nevada,", "New Hampshire,", "New Jersey,", "New Mexico,", "New York,", "North Carolina,", "North Dakota,", "Ohio,", "Oklahoma,", "Oregon,", "Pennsylvania,", "Rhode Island,", "South Carolina,", "South Dakota,", "Tennessee,", "Texas,", "Utah,", "Vermont,", "Virginia,", "Washington,", "West Virginia,", "Wisconsin,", "Wyoming" ]
	
	override func viewDidLoad() {
		super.viewDidLoad()
		statePicker.dataSource = self
		statePicker.delegate = self
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}

	@IBAction func statePickerBtnPress(_ sender: Any) {
		statePicker.isHidden = false
		
		countryTextBox.isHidden = true
		countryLabel.isHidden = true
		zipLabel.isHidden = true
		zipTextBox.isHidden = true
	}
	
	func numberOfComponents(in pickerView: UIPickerView) -> Int {
		return 1
	}
	
	func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
		return states.count
	}
	
	func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
		return states[row]
	}
	
	func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
		statePickerBtn.setTitle(states[row], for: UIControlState.normal)
		statePicker.isHidden = true
		
		countryTextBox.isHidden = false
		countryLabel.isHidden = false
		zipTextBox.isHidden = false
		zipLabel.isHidden = false
	}

}

