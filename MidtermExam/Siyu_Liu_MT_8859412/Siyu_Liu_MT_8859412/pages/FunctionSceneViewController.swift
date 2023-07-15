//
//  FunctionSceneViewController.swift
//  Siyu_Liu_MT_8859412
//
//  Created by user on 2023-02-22.
//

import UIKit

class FunctionSceneViewController: UIViewController, UITextFieldDelegate {
    // variables
    var OpersandA: Double?
    var OpersandB: Double?
    var ResultC: Double?
    var label_message = ""

    // views
    @IBOutlet var InputA: UITextField!
    @IBOutlet var InputB: UITextField!
    @IBOutlet var MessageLabel: UILabel!
    @IBOutlet var ValueLabel: UILabel!

    // calculate button action
    @IBAction func CalculateButton(_ sender: UIButton) {
        if InputA.text != nil && InputA.text!.trimmingCharacters(in: .whitespaces) != "" && InputB.text != nil && InputB.text!.trimmingCharacters(in: .whitespaces) != "" {
            OpersandA = Double(InputA.text!)
            OpersandB = Double(InputB.text!)
            ResultC = sqrt(pow(OpersandA!, 2)
                + pow(OpersandB!, 2))
            label_message = "The value of C according to Pythagorean is"
            MessageLabel.text = label_message
            ValueLabel.text = "\(ResultC!)"
        } else {
            label_message = "Enter a value for A and B to find C"
            MessageLabel.text = label_message
        }
    }

    // clear button action
    @IBAction func ResetValues(_ sender: UIButton) {
        InputA.text = ""
        InputB.text = ""
        label_message = "Enter a value for A and B to find C"
        MessageLabel.text = label_message
        ValueLabel.text = ""
    }

    // hide keyboard
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    override func viewDidLoad() {
        // set numberic keyboard
        InputA.keyboardType = .numberPad
        InputB.keyboardType = .numberPad
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
