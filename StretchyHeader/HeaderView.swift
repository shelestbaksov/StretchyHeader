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
        
        setupVisualEffectBlur()
    }
    
    var animator: UIViewPropertyAnimator!
    let visualEffectView = UIVisualEffectView(effect: UIBlurEffect(style: .regular))
    
    fileprivate func setupVisualEffectBlur() {
        
        animator = UIViewPropertyAnimator(duration: 1.0, curve: .linear, animations: { [weak self] in
            self?.visualEffectView.effect = nil
        })
        addSubview(visualEffectView)
        visualEffectView.fillSuperview()
        animator.isReversed = true
        animator.fractionComplete = 0
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
