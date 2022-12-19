//
//  SecondViewController.swift
//  19_11_22_Task1
//
//  Created by Mac on 22/11/22.
//

import UIKit

class SecondViewController: UIViewController {

    var arrayOfObject = [Data]()

    @IBOutlet var tableViewOnSvc: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        initDataAndDelegate()
        registerNib()
    
       }
    
    func getDatafromFvc(data : Data){
        let newObject = Data(label1OnSvc: data.label1OnSvc, label2OnSvc: data.label2OnSvc, label3OnSvc: data.label3OnSvc, label4OnSvc: data.label4OnSvc)
        self.arrayOfObject.append(newObject)
     //tableViewOnSvc.reloadData()
    }
    
 //MARK - init data source and delegate method
    func initDataAndDelegate(){
        
        tableViewOnSvc.dataSource = self
        tableViewOnSvc.delegate = self
    }
 // MARK - registerNIB TableViewCell
    func registerNib(){
        
        let nib = UINib(nibName: "Task1TableViewCell", bundle: nil)
        self.tableViewOnSvc.register(nib, forCellReuseIdentifier: "Task1TableViewCell")
    }
}
//MARK -
extension SecondViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayOfObject.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let tableViewCell = self.tableViewOnSvc.dequeueReusableCell(withIdentifier: "Task1TableViewCell", for: indexPath) as! Task1TableViewCell
        tableViewCell.firstNameLabel.text = arrayOfObject[indexPath.row].label1OnSvc
        tableViewCell.lastNameLabel.text = arrayOfObject[indexPath.row].label2OnSvc
        tableViewCell.emailLabel.text = arrayOfObject[indexPath.row].label3OnSvc
        tableViewCell.mobileLabel.text = arrayOfObject[indexPath.row].label4OnSvc
     
        // let newObject = Data(label1OnSvc: <#T##String#>, label2OnSvc: <#T##String#>, label3OnSvc: <#T##String#>, label4OnSvc: <#T##String#>)
        
      //  arrayOfObject.append(newObject2)
         return tableViewCell
    }
}
// MARK -
extension SecondViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        150
    }

}
