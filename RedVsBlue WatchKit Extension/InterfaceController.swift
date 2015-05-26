//
//  InterfaceController.swift
//  RedVsBlue WatchKit Extension
//
//  Created by Brown Magic on 5/25/15.
//  Copyright (c) 2015 codeHatcher. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
  
  @IBOutlet weak var mainGroup: WKInterfaceGroup!
  @IBOutlet weak var mainSlider: WKInterfaceSlider!
  @IBOutlet weak var mainSwitch: WKInterfaceSwitch!
  @IBOutlet weak var mainLabel: WKInterfaceLabel!
  
  override func awakeWithContext(context: AnyObject?) {
    super.awakeWithContext(context)
    
    // Configure interface objects here.
  }
  
  override func willActivate() {
    // This method is called when watch view controller is about to be visible to user
    super.willActivate()
  }
  
  override func didDeactivate() {
    // This method is called when watch view controller is no longer visible
    super.didDeactivate()
  }
  
  @IBAction func sliderPressed(value: Float) {
    // convert from float to alpha
    let alpha = CGFloat(value)
//    mainSlider.setAlpha(alpha)
//    mainSwitch.setAlpha(alpha)
//    mainLabel.setAlpha(alpha)
    mainGroup.setAlpha(alpha)
  }
  @IBAction func switchPressed(value: Bool) {
    if value {
      mainGroup.setBackgroundColor(UIColor.blueColor())
      mainLabel.setText("Blue")
    } else {
      mainGroup.setBackgroundColor(UIColor.redColor())
      mainLabel.setText("Red")
    }
    
  }
  
}
