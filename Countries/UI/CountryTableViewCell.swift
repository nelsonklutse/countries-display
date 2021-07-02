//
//  CountryTableViewCell.swift
//  Countries
//
//  Created by Syft on 05/03/2020.
//  Copyright © 2020 Syft. All rights reserved.
//

import UIKit

class CountryTableViewCell: UITableViewCell {

    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var capital: UILabel!
    @IBOutlet weak var capitalLabel: UILabel!
    @IBOutlet weak var capitalStackView: UIStackView!
    @IBOutlet weak var population: UILabel!
    @IBOutlet weak var populationLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    func displayCountriesData(name: String?, capital: String?, population: Int32) {
        self.country.text = name
        self.capital.text = capital
        self.population.text = String(population)
        
        self.accessibilityIdentifier = "\(name!)-Cell"
        self.country.accessibilityIdentifier = "Country"
        self.capital.accessibilityIdentifier = "\(name!)-Capital"
        self.capitalLabel.accessibilityIdentifier = "\(name!)-Capital-Label"
        self.population.accessibilityIdentifier = "\(name!)-Population"
        self.populationLabel.accessibilityIdentifier = "\(name!)-Population-Label"
    }
    
}
