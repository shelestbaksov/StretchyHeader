//
//  HeaderView.swift
//  StretchyHeader
//
//  Created by Leysan Latypova on 11.11.2022.
//

import UIKit

class HeaderView: UICollectionReusableView {
    
    let imageView: UIImageView = {
        let image = UIImage(named: "image")
        let iv = UIImageView(image: image)
        iv.contentMode = .scaleAspectFill
        return iv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .red
        
        addSubview(imageView)
        imageView.fillSuperview()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
