//
//  CustomCell.swift
//  CustomCollectionViewExample
//
//  Created by JotaroSugiyama on 2022/11/08.
//

import UIKit

class CustomCell: UICollectionViewCell {
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        label.text = ""
        imageView.image = UIImage()
    }
    
    func setupCell(imageName: String, labelText: String) {
        label.text = labelText
        imageView.image = UIImage(named: imageName)
    }
    
}
