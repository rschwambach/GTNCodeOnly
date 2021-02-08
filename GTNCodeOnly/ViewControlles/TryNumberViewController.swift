//
//  TryNumberViewController.swift
//  GTNCodeOnly
//
//  Created by RICHARD SCHWAMBACH on 08/02/21.
//

import UIKit

class TryNumberViewController: UIViewController {
    
    // MARK: UI Creation
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .equalSpacing
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let lableTitle: UILabel = {
        let labelTitle = UILabel()
        labelTitle.text = "  Guess \n     A\n Number"
        labelTitle.textColor = Color.toupeGrey
        labelTitle.font = UIFont(name: "AppleSDGothicNeo-Light", size: 40)
        labelTitle.numberOfLines = 0
        labelTitle.translatesAutoresizingMaskIntoConstraints = false
        return labelTitle
    }()
    
    let inputGuess: UITextField = {
        let inputGuess = UITextField()
        inputGuess.placeholder = "Input"
        inputGuess.textAlignment = .center
        inputGuess.textColor = Color.violentViolet
        inputGuess.borderStyle = .roundedRect
        inputGuess.keyboardType = .numberPad
        inputGuess.adjustsFontSizeToFitWidth = true
        inputGuess.translatesAutoresizingMaskIntoConstraints = false
        return inputGuess
    }()
    
    let buttonTryIt: UIButton = {
        let buttonTryIt = UIButton()
        buttonTryIt.setTitle("TRY IT", for: .normal)
        buttonTryIt.setTitleColor(Color.toupeGrey, for: .normal)
        buttonTryIt.setTitleColor(Color.violentViolet, for: .highlighted)
        buttonTryIt.backgroundColor = .clear
        buttonTryIt.titleLabel?.font = UIFont(name: "AppleSDGothicNeo-Light", size: 50)
        buttonTryIt.translatesAutoresizingMaskIntoConstraints = false
        return buttonTryIt
    }()
    
    let labelNumberOfTries: UILabel = {
        let labelNumberOfTries = UILabel()
        labelNumberOfTries.text = "Number Of Tries:"
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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
        
    }
    
    
    func setLayout() {
        
        view.backgroundColor = Color.meteorite
        view.addSubview(stackView)
        stackView.addArrangedSubview(lableTitle)
        stackView.addArrangedSubview(inputGuess)
        stackView.addArrangedSubview(buttonTryIt)
        stackView.addArrangedSubview(labelNumberOfTries)
        stackView.addArrangedSubview(labelNumberOfTriesCount)
        
        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -300).isActive = true
        
    }
    
}
