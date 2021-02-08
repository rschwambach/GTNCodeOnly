//
//  ResultViewController.swift
//  GTNCodeOnly
//
//  Created by RICHARD SCHWAMBACH on 08/02/21.
//

import UIKit

class ResultViewController: UIViewController {
    
    // MARK: UI Creation
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let labelTitle: UILabel = {
        let labelTitle = UILabel()
        labelTitle.text = " Number \n     Is\n Correct"
        labelTitle.textColor = Color.toupeGrey
        labelTitle.font = UIFont(name: "AppleSDGothicNeo-Light", size: 40)
        labelTitle.numberOfLines = 0
        labelTitle.translatesAutoresizingMaskIntoConstraints = false
        return labelTitle
    }()
    
    let labelRightNumber: UILabel = {
        let labelRightNumber = UILabel()
        labelRightNumber.text = "Right Number:"
        labelRightNumber.textColor = Color.toupeGrey
        labelRightNumber.font = UIFont(name: "AppleSDGothicNeo-Light", size: 40)
        labelRightNumber.numberOfLines = 0
        labelRightNumber.translatesAutoresizingMaskIntoConstraints = false
        return labelRightNumber
    }()
    
    let labelRightNumberCount: UILabel = {
        let labelRightNumberCount = UILabel()
        labelRightNumberCount.text = "0"
        labelRightNumberCount.textColor = Color.toupeGrey
        labelRightNumberCount.font = UIFont(name: "AppleSDGothicNeo-Light", size: 40)
        labelRightNumberCount.numberOfLines = 0
        labelRightNumberCount.translatesAutoresizingMaskIntoConstraints = false
        return labelRightNumberCount
    }()
    
    let labelNumberOfTries: UILabel = {
        let labelNumberOfTries = UILabel()
        labelNumberOfTries.text = "Number of Tries:"
        labelNumberOfTries.textColor = Color.toupeGrey
        labelNumberOfTries.font = UIFont(name: "AppleSDGothicNeo-Light", size: 40)
        labelNumberOfTries.numberOfLines = 0
        labelNumberOfTries.translatesAutoresizingMaskIntoConstraints = false
        return labelNumberOfTries
    }()
    
    let labelNumberOfTriesCount: UILabel = {
        let labelNumberOfTriesCount = UILabel()
        labelNumberOfTriesCount.text = "0"
        labelNumberOfTriesCount.textColor = Color.toupeGrey
        labelNumberOfTriesCount.font = UIFont(name: "AppleSDGothicNeo-Light", size: 40)
        labelNumberOfTriesCount.numberOfLines = 0
        labelNumberOfTriesCount.translatesAutoresizingMaskIntoConstraints = false
        return labelNumberOfTriesCount
    }()

    let buttonMenu: UIButton = {
        let buttonMenu = UIButton()
        buttonMenu.setTitle("Menu", for: .normal)
        buttonMenu.setTitleColor(Color.toupeGrey, for: .normal)
        buttonMenu.setTitleColor(Color.violentViolet, for: .highlighted)
        buttonMenu.backgroundColor = .clear
        buttonMenu.titleLabel?.font = UIFont(name: "AppleSDGothicNeo-Light", size: 40)
        buttonMenu.translatesAutoresizingMaskIntoConstraints = false
        return buttonMenu
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
    }
    
    func setLayout() {
        
        view.backgroundColor = Color.meteorite
        view.addSubview(stackView)
        stackView.addArrangedSubview(labelTitle)
        stackView.addArrangedSubview(labelRightNumber)
        stackView.addArrangedSubview(labelRightNumberCount)
        stackView.addArrangedSubview(labelNumberOfTries)
        stackView.addArrangedSubview(labelNumberOfTriesCount)
        view.addSubview(buttonMenu)
        
        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -300).isActive = true
        
        buttonMenu.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -40).isActive = true
        buttonMenu.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 40).isActive = true
        
    }
    
    
}
