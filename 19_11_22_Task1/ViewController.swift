//
//  ViewController.swift
//  19_11_22_Task1
//
//  Created by Mac on 22/11/22.
//

import UIKit

class ViewController: UIViewController {

// MARK - IBOutlet connections of textfield,label and button
    @IBOutlet var switchBtn: UISwitch!
    @IBOutlet var viewData: UIView!
    
    @IBOutlet var label1OnFvc: UILabel!
    @IBOutlet var label2OnFvc: UILabel!
    @IBOutlet var label3OnFvc: UILabel!
    @IBOutlet var label4OnFvc: UILabel!
    
    @IBOutlet var textFieldOnFvc: UITextField!
    @IBOutlet var textField1OnFvc: UITextField!
    @IBOutlet var textField2OnFvc: UITextField!
    @IBOutlet var textField3OnFvc: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
   
    }

    @IBAction func clickToSubmit(_ sender: Any) {
        
        let svc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        let dataFromTextField1 = textFieldOnFvc.text
        let dataFromTextField2 = textField1OnFvc.text
        let dataFromTextField3 = textField2OnFvc.text
        let dataFromTextField4 = textField3OnFvc.text
        
        
        svc.getDatafromFvc(data: Data(label1OnSvc: dataFromTextField1!, label2OnSvc: dataFromTextField2!, label3OnSvc: dataFromTextField3!, label4OnSvc: dataFromTextField4!))
        
        self.navigationController?.pushViewController(svc, animated: true)
        
    }
    
// MARK - IBAction on switch on off button
    @IBAction func switchToOnOff(_ sender: Any) {
        
        if(switchBtn.isOn == true){
            self.viewData.isHidden = false
        }
        else{
            self.viewData.isHidden = true
        }
    }
}

