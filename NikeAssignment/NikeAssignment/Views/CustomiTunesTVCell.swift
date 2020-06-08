//
//  CustomiTunesTVCell.swift
//  NikeAssignment
//
//  Created by sai kumar madasu on 4/30/20.
//  Copyright © 2020 sai kumar madasu. All rights reserved.
//

import UIKit

class CustomiTunesTVCell: UITableViewCell {
    
    
    let albumImage = UIImageView()
    let albumTitleLbl = UILabel()
    let albumArthurLbl = UILabel()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(albumImage)
        addSubview(albumTitleLbl)
        addSubview(albumArthurLbl)
        configureAlbumImage()
        configureAlbumTitle()
        configureAurtherTitle()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(data: Data) {
        albumImage.image = data.albumImage
        albumTitleLbl.text = data.albumTitle
        albumArthurLbl.text = data.albumArthur
    }

    func configureAlbumImage() {
        albumImage.translatesAutoresizingMaskIntoConstraints = false
        albumImage.layer.cornerRadius = 5.0
        albumImage.clipsToBounds = true
        albumImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 25).isActive = true
        albumImage.heightAnchor.constraint(equalToConstant: 100).isActive = true
        albumImage.widthAnchor.constraint(equalToConstant: 100).isActive = true
        albumImage.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    
    func configureAlbumTitle() {
        albumTitleLbl.translatesAutoresizingMaskIntoConstraints = false
        albumTitleLbl.textColor = UIColor.black
        albumTitleLbl.adjustsFontSizeToFitWidth = true
        albumTitleLbl.numberOfLines = 0
        albumTitleLbl.font = UIFont.systemFont(ofSize: 13)
        albumTitleLbl.textAlignment = .left
        albumTitleLbl.leadingAnchor.constraint(equalTo: albumImage.trailingAnchor, constant: 15).isActive = true
        albumTitleLbl.topAnchor.constraint(equalTo: topAnchor, constant: 25).isActive = true
        albumTitleLbl.heightAnchor.constraint(equalToConstant: 40).isActive = true
        albumTitleLbl.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20).isActive = true
    }
    
    
    func configureAurtherTitle() {
        albumArthurLbl.translatesAutoresizingMaskIntoConstraints = false
        albumArthurLbl.adjustsFontSizeToFitWidth = true
        albumArthurLbl.numberOfLines = 0
        albumArthurLbl.textColor = UIColor.black
        albumArthurLbl.font = UIFont.systemFont(ofSize: 13)
        albumArthurLbl.textAlignment = .left
        albumArthurLbl.leadingAnchor.constraint(equalTo: albumTitleLbl.leadingAnchor).isActive = true
        albumArthurLbl.trailingAnchor.constraint(equalTo: albumTitleLbl.trailingAnchor).isActive = true
        albumArthurLbl.heightAnchor.constraint(equalToConstant: 40).isActive = true
        albumArthurLbl.topAnchor.constraint(equalTo: albumTitleLbl.bottomAnchor, constant: 8).isActive = true
    }
}
