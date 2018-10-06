//
//  ColorPickerViewController.swift
//  ColorPicker
//
//  Created by Chaz on 10/5/18.
//  Copyright © 2018 Chaz. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    

    @IBOutlet weak var myPicker: UIPickerView!
    
    @IBOutlet weak var myLabel: UILabel!
    
    struct Colors{
        let colorName: String
        let UIVal: UIColor
    }
    
    var colorsArray : [Colors] = [Colors]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorsArray.append (Colors(colorName: "Red" , UIVal: UIColor.red))
        colorsArray.append (Colors(colorName: "Orange" , UIVal: UIColor.orange))
        colorsArray.append (Colors(colorName: "Yellow" , UIVal: UIColor.yellow))
        colorsArray.append (Colors(colorName: "Green" , UIVal: UIColor.green))
        colorsArray.append (Colors(colorName: "Blue" , UIVal: UIColor.blue))
        colorsArray.append (Colors(colorName: "Purple" , UIVal: UIColor.purple))

        let startColor = colorsArray.index(where: {$0.colorName == "Yellow"})
        let safeStartColor = startColor ?? 0    //ensures there is a value for selectRow
        
        myLabel.text = colorsArray[safeStartColor].colorName
        myPicker.selectRow(safeStartColor,inComponent: 0 ,animated: false)
        // Do any additional setup after loading the view.
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1;
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return colorsArray.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        self.view.backgroundColor = colorsArray[row].UIVal
        return colorsArray[row].colorName

    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        myLabel.text = colorsArray[row].colorName
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
