//
//  ColorPickerViewController.swift
//  ColorPicker
//
//  Created by Chaz on 10/5/18.
//  Copyright © 2018 Chaz. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    struct Colors{
        let colorName: String
        let UIVal: UIColor
    }
    
    func createArray() -> [Colors]{
        var colorsArray = [Colors]()
        colorsArray.append (Colors(colorName: "Red" , UIVal: UIColor.red))
        colorsArray.append (Colors(colorName: "Orange" , UIVal: UIColor.orange))
        colorsArray.append (Colors(colorName: "Yellow" , UIVal: UIColor.yellow))
        colorsArray.append (Colors(colorName: "Green" , UIVal: UIColor.green))
        colorsArray.append (Colors(colorName: "Blue" , UIVal: UIColor.blue))
        colorsArray.append (Colors(colorName: "Purple" , UIVal: UIColor.purple))
        return colorsArray;
    }
    lazy var colorsArray = createArray();
    /* When I tried to create colorsArray outside of a function, I got the "expected declaration" error. Creating the array inside of viewDidLoad would mean I couldn't access colorsArray.count for numberOfRowsInComponent. This feels like a sloppy way of doing this, please let me know if there's a better way.
    */
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorsArray.append (Colors(colorName: "Red" , UIVal: UIColor.red))
        colorsArray.append (Colors(colorName: "Orange" , UIVal: UIColor.orange))
        colorsArray.append (Colors(colorName: "Yellow" , UIVal: UIColor.yellow))
        colorsArray.append (Colors(colorName: "Green" , UIVal: UIColor.green))
        colorsArray.append (Colors(colorName: "Blue" , UIVal: UIColor.blue))
        colorsArray.append (Colors(colorName: "Purple" , UIVal: UIColor.purple))

        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colorsArray.count
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
