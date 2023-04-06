//
//  ViewController.swift
//  DatePicker
//
//  Created by Mac on 05/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker.locale = .current
        datePicker.date = Date()
        datePicker.preferredDatePickerStyle = .compact
        datePicker.addTarget(self, action: #selector(dateSelected), for: .valueChanged)

    }
      @IBAction func btnSegTapped(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0 : datePicker.preferredDatePickerStyle = .compact
        case 1 : datePicker.preferredDatePickerStyle = .inline
        case 2 : datePicker.preferredDatePickerStyle = .wheels
        default : break
        }
    }
    @objc
    func dateSelected(){
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        dateFormatter.timeStyle = .short
        let date = dateFormatter.string(from: datePicker.date)
        dateLbl.text = date
    }
}

