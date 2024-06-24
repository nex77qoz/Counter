//
//  ViewController.swift
//  Counter
//
//  Created by Максим Бабкин on 24.06.2024.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var countedLabel: UILabel!
    
    @IBOutlet weak var plusButton: UIButton!
    
    @IBOutlet weak var minusButton: UIButton!
    
    @IBOutlet weak var resetButton: UIButton!
    
    @IBOutlet weak var changeHistory: UITextView!
    
    private var count: Int = 0
    
    private let date = Date()
    private let localizedDate = Date.FormatStyle(locale: Locale(identifier: "ru_RU"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func countPlus(_ sender: Any) {
        count += 1
        countedLabel.text = String(count)
        let formattedDate = date.formatted(localizedDate)
        changeHistory.text += "\n \(formattedDate): Значение изменено на +1"
    }
    
    @IBAction func countMinus(_ sender: Any) {
        if count > 0 {
            count -= 1
            countedLabel.text = String(count)
            let formattedDate = date.formatted(localizedDate)
            changeHistory.text += "\n \(formattedDate): Значение изменено на -1"
        }
    }
    @IBAction func resetButtonPressed(_ sender: Any) {
        count = 0
        countedLabel.text = String(count)
        let formattedDate = date.formatted(localizedDate)
        changeHistory.text += "\n \(formattedDate): Значение сброшено"
    }
}

