//
//  CarTableViewCell.swift
//  TableViewExercicio
//
//  Created by Mizia Lima on 10/8/20.
//

import UIKit

class CarTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageCar: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func configureCell(car: Car){
        nameLabel?.text = car.name
        imageCar?.image = UIImage(named: car.imagePhoto)
    }

}
