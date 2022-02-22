//
//  ResultViewController.swift
//  SecondKadaiApp
//
//  Created by 太田喬也 on 2022/02/20.
//

import UIKit

class ResultViewController: UIViewController {
    // 2画面目のLabelを、StoryboardでこのViewControllerにIBOutletとして接続しておく
    
    @IBOutlet weak var greetingLabel: UILabel!
    // 受け取るためのプロパティ（変数）を宣言しておく
    var nameData = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = "こんにちは、\(nameData)さん"
    }
}
