//
//  ViewController.swift
//  TableViewExercicio
//
//  Created by Mizia Lima on 10/8/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var carros = [Car]()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureCars()
        tableView.reloadData()
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    func configureCars() {
        carros.append(Car(name: "Red Car", imagePhoto: "1"))
        carros.append(Car(name: "Blue Car", imagePhoto: "2"))
        carros.append(Car(name: "Yellow Car", imagePhoto: "3"))
        carros.append(Car(name: "Green Car", imagePhoto: "4"))
        carros.append(Car(name: "Pink Car", imagePhoto: "5"))
    }
}

extension ViewController: UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Select \(carros[indexPath.row].name)")
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carros.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CarTableViewCell") as? CarTableViewCell
        else { return UITableViewCell() }
        cell.configureCell(car: carros[indexPath.row])
        
        return cell
    }
}
