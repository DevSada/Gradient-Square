//
//  ViewController.swift
//  Gradient Square
//
//  Created by Alexander Petrenko on 03.04.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var squareView: UIView = {
        let element = UIView()
        let gradientLayer = CAGradientLayer()
        
        element.frame.size = CGSize(width: 100, height: 100)
        
        gradientLayer.frame.size = element.frame.size
        gradientLayer.colors = [UIColor.magenta.cgColor,UIColor.red.withAlphaComponent(1).cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.4, y: 0.4)
        gradientLayer.endPoint = CGPoint(x: 0.8, y: 0.8)
        gradientLayer.cornerRadius = 20
        
        element.layer.addSublayer(gradientLayer)
        
        element.layer.shadowColor = .init(red: 0, green: 0, blue: 0, alpha: 0.5)
        element.layer.shadowOffset = CGSize(width: 3.0, height: 5.0)
        element.layer.shadowOpacity = 2.0
        
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setViews()
        setConstraints()
        
    }
    
    private func setViews() {
        
        view.addSubview(squareView)
        
        view.backgroundColor = .white
        
    }
    
}

extension ViewController {
    
    private func setConstraints() {
        
        
        
        NSLayoutConstraint.activate([
            squareView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            squareView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 100),
            squareView.widthAnchor.constraint(equalToConstant: 100),
            squareView.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        
        
    }
}
