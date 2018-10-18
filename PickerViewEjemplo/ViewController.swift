//
//  ViewController.swift
//  PickerViewEjemplo
//
//  Created by Arlen Peña on 10/18/18.
//  Copyright © 2018 Arlen Peña. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource{
    
    var autos : [String] = ["Audi","Seat","VW","Ford","Nissan"]
    var autos2 : [String] = ["A5","Ibiza","Jetta","Fiesta","Versa"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if(component == 0){
            return autos.count
        } else {
            return autos2.count
        }
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if(component == 0){
            return autos[row]
        } else {
            return autos2[row]
        }
        
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(row)
        if(component == 0){
            print("row: \(row)"," Marca: ",autos[row])
        } else {
            print("row: \(row)"," Modelo: ",autos2[row])
        }
        
    }
    @IBOutlet weak var pkAutos: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.pkAutos.dataSource = self
        self.pkAutos.delegate = self
    }


}

