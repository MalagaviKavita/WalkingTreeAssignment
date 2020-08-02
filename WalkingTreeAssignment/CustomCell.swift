//
//  CustomCell.swift
//  WalkingTreeAssignment
//
//  Created by Kavita Malagavi on Aug-2-2020.
//  Copyright © 2020 Kavita Malagavi. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    
    let rowImage = UIImageView()
    let descriprionLabel = UILabel()
    var titleLabel = UILabel()
    
    var model: RowValues? {
        didSet {
            configureCell()
        }
    }

    func configureCell() {
        titleLabel.text = model?.title
        descriprionLabel.text = model?.description

//        if let url = model?.imageUrl {
//            rowImage.sd_setImage(with: URL(string: url), placeholderImage: UIImage(named: "test1"))
//        } else {
//            rowImage.image = UIImage(named: "test1")
//        }
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(rowImage)
        addSubview(descriprionLabel)
        addSubview(titleLabel)
        
        configureImageView()
        configureTitleLabel()
        configureDescriptionLabel()
        
        setupImageConstraints()
        setupTitleLabelConstraints()
        setupDescriprionLabelConstraints()
    }

    required init(coder aDecoder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
    }
    
    func configureImageView() {
        rowImage.layer.cornerRadius = 10
        rowImage.clipsToBounds = true
    }
    
    func configureTitleLabel() {
        titleLabel.numberOfLines = 1
    }
    
    func configureDescriptionLabel() {
        descriprionLabel.numberOfLines = 0
    }
    
    func setupImageConstraints() {
        rowImage.translatesAutoresizingMaskIntoConstraints = false
        rowImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        rowImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20).isActive = true
        rowImage.heightAnchor.constraint(equalToConstant: 60).isActive = true
        rowImage.widthAnchor.constraint(equalToConstant: 60).isActive = true
    }
    
    func setupTitleLabelConstraints() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
//        titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: rowImage.trailingAnchor, constant: 20).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 60).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
    }
    
    func setupDescriprionLabelConstraints() {
        descriprionLabel.translatesAutoresizingMaskIntoConstraints = false
//        descriprionLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        descriprionLabel.topAnchor.constraint(equalTo: titleLabel.topAnchor, constant: 30).isActive = true
        descriprionLabel.leadingAnchor.constraint(equalTo: rowImage.trailingAnchor, constant: 20).isActive = true
        descriprionLabel.heightAnchor.constraint(equalToConstant: 60).isActive = true
        descriprionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12).isActive = true
    }
}
