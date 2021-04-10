//
//  ViewController.swift
//  UISegmentedControl
//
//  Created by Никита Коголенок on 16.12.20.
//

import UIKit

class ViewController: UIViewController {
    // MARK: - Outlet
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var label: UILabel!
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        label.isHidden = true
        label.font = label.font.withSize(35)
        label.textAlignment = .center
        label.numberOfLines = 2
        
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: true)
    }
    // MARK: - Action
    @IBAction func choiceSegment(_ sender: UISegmentedControl) {
        label.isHidden = false
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            label.text = "The first segment is selected!"
            label.textColor = .red
        case 1:
            label.text = "The second segment is selected!"
            label.textColor = .yellow
        case 2:
            label.text = "The third segment is selected!"
            label.textColor = .green
        default:
            print("Sothing wrong!")
        }
    }
}

