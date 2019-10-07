//
//  CategoryCell.swift
//  Good Eatins
//
//  Created by Umair Latif on 07/10/2019.
//  Copyright © 2019 Umair Latif. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {

    @IBOutlet weak var categoryImg: UIImageView!
    @IBOutlet weak var categoryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        categoryImg.layer.cornerRadius = 10
    }

    func configureCell(category : FoodCategory) {
        
        categoryImg.image = UIImage(named: category.imageName)
        categoryLabel.text = category.title
    }

}
