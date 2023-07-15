//
//  InputSceneViewController.swift
//  Siyu_Liu_MT_8859412
//
//  Created by user on 2023-02-22.
//

import UIKit

class InputSceneViewController: UIViewController {
    var current_city = "toronto"
    // selectable cities
    let city_list = [
        "calgary",
        "halifax",
        "montreal",
        "toronto",
        "vancouver",
        "winnipeg",
    ]

    @IBOutlet var InputCities: UITextField!
    @IBOutlet var CityImage: UIImageView!
    @IBAction func GetCity(_ sender: UIButton) {
        // input checking
        if InputCities.text != nil && city_list.contains(InputCities.text!.lowercased().trimmingCharacters(in: .whitespaces)) {
            current_city = InputCities.text!.lowercased().trimmingCharacters(in: .whitespaces)
            CityImage.image = UIImage(named: current_city)
        }
    }

    // hide the keyboard when tapping other place
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
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
