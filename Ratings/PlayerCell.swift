//
//  PlayerCell.swift
//  Ratings
//
//  Created by Chris Sun on 11/7/18.
//  Copyright © 2018 Chris Sun. All rights reserved.
//

import UIKit

class PlayerCell: UITableViewCell {
    // MARK: - IBOutlets
    @IBOutlet weak var gameLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ratingImageView: UIImageView!
    
    // MARK: - Properties
    var player: Player? {
        didSet {
            guard let player = player else { return }
            
            gameLabel.text = player.game
            nameLabel.text = player.name
            ratingImageView.image = image(forRating: player.rating)
        }
    }
    
    func image(forRating rating: Int) -> UIImage? {
        let imageName = "\(rating)Stars"
        return UIImage(named: imageName)
    }
}
