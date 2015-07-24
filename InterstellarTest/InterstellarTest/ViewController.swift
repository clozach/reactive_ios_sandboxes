//
//  ViewController.swift
//  InterstellarTest
//
//  Created by Hoverfly on 7/23/15.
//  Copyright (c) 2015 everyone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var textField: UITextField!
  @IBOutlet weak var label: UILabel!

  func dubble(string: String) -> Int {
    if let i = string.toInt() {
      return i * 2
    }
    return 0
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    // This works
    textField.typingSignal
      .map(dubble)
      .next {
        i in
        self.label.text = "\(i)"
    }

    // And so does this
//    textField.typingSignal
//      .map { return $0.toInt() ?? 0 }
//      .map { return $0 * 2 }
//      .next {
//        i in
//        self.label.text = "\(i)"
//    }
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

