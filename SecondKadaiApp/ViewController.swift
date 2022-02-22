//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 太田喬也 on 2022/02/17.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameTextField.placeholder = "名前を入力してください"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        if segue.identifier == "toNext" {
            let nextView = segue.destination as! ResultViewController
            // 遷移先のResultViewControllerで宣言しているnameDataに値を代入して渡す
            nextView.nameData = nameTextField.text!
        }
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }

}

