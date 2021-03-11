//
//  ViewController.swift
//  GTNCodeOnly
//
//  Created by RICHARD SCHWAMBACH on 06/02/21.
//

import UIKit

class MainViewController: UIViewController {
    
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
        labelTitle.text = " Guess \n   The\n Number"
        labelTitle.textColor = Color.toupeGrey
        labelTitle.font = UIFont(name: "AppleSDGothicNeo-Light", size: 40)
        labelTitle.numberOfLines = 0
        labelTitle.translatesAutoresizingMaskIntoConstraints = false
        return labelTitle
    }()
    
    let labelFrom: UILabel = {
        let labelFrom = UILabel()
        labelFrom.text = "FROM"
        labelFrom.textColor = Color.toupeGrey
        labelFrom.font = UIFont(name: "AppleSDGothicNeo-Light", size: 30)
        labelFrom.translatesAutoresizingMaskIntoConstraints = false
        return labelFrom
    }()
    
    let inputOne: UITextField = {
        let inputOne = UITextField()
        inputOne.placeholder = "Input"
        inputOne.textAlignment = .center
        inputOne.textColor = Color.violentViolet
        inputOne.borderStyle = .roundedRect
        inputOne.keyboardType = .numberPad
        inputOne.adjustsFontSizeToFitWidth = true
        inputOne.translatesAutoresizingMaskIntoConstraints = false
        return inputOne
    }()
    
    let labelTo: UILabel = {
        let labelTo = UILabel()
        labelTo.text = "TO"
        labelTo.textColor = Color.toupeGrey
        labelTo.font = UIFont(name: "AppleSDGothicNeo-Light", size: 30)
        labelTo.translatesAutoresizingMaskIntoConstraints = false
        return labelTo
    }()
    
    let inputTwo: UITextField = {
        let inputTwo = UITextField()
        inputTwo.placeholder = "Input"
        inputTwo.textAlignment = .center
        inputTwo.textColor = Color.violentViolet
        inputTwo.borderStyle = .roundedRect
        inputTwo.keyboardType = .numberPad
        inputTwo.adjustsFontSizeToFitWidth = true
        inputTwo.translatesAutoresizingMaskIntoConstraints = false
        return inputTwo
    }()
    
    let buttonPlay: UIButton = {
        let buttonPlay = UIButton()
        buttonPlay.setTitle("PLAY", for: .normal)
        buttonPlay.setTitleColor(Color.toupeGrey, for: .normal)
        buttonPlay.setTitleColor(Color.violentViolet, for: .highlighted)
        buttonPlay.backgroundColor = .clear
        buttonPlay.titleLabel?.font = UIFont(name: "AppleSDGothicNeo-Light", size: 40)
        buttonPlay.translatesAutoresizingMaskIntoConstraints = false
        buttonPlay.addTarget(self, action: #selector(buttonPlayClicked), for: .touchUpInside)
        return buttonPlay
    }()
    
    // MARK: Aux Vars
    
    var randomResult: Int = 0
    
    // MARK: ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
    }
    
    // MARK: Functions Creation
    
    func setLayout() {
        view.backgroundColor = Color.meteorite
        view.addSubview(stackView)
        stackView.addArrangedSubview(labelTitle)
        stackView.addArrangedSubview(labelFrom)
        stackView.addArrangedSubview(inputOne)
        stackView.addArrangedSubview(labelTo)
        stackView.addArrangedSubview(inputTwo)
        stackView.addArrangedSubview(buttonPlay)
        
        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -300).isActive = true
    }
    
    // Function to change ViewController
    
    func openTryNumberViewController() {
        let rootVC = TryNumberViewController()
        rootVC.randNumberGot = randomResult
        let navVC = UINavigationController(rootViewController: rootVC)
        navVC.modalPresentationStyle = .fullScreen
        navVC.setNavigationBarHidden(true, animated: false)
        present(navVC, animated: true, completion: nil)
   }
    
    // Function to randomize inputed numbers
    
    func randomizeNumbers() {
        let inputedNumberOne = Int(inputOne.text!)
        let inputedNumberTwo = Int(inputTwo.text!)
        
        randomResult = Int.random(in: inputedNumberOne!...inputedNumberTwo!)
        print(randomResult)
    }
    
    // Pass the randomized number value to "TryNumberViewController"
    
    func passValue() {
        let vc = TryNumberViewController()
        vc.randNumberGot = randomResult
        print("numbergot \(vc.randNumberGot)")
    }
    
    // Function press the button "PLAY"
    
    @objc func buttonPlayClicked() {
        if inputOne.text?.isEmpty == false && inputTwo.text?.isEmpty == false {
            if Int(inputOne.text!)! > Int(inputTwo.text!)! {
                print("second filed is lower than first field")
                let alert = UIAlertController(title: "Input Error", message: "First Number is Higher Than Second Number", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
            else if Int(inputOne.text!)! == Int(inputTwo.text!)! {
                print("both numbers are the same")
                let alert = UIAlertController(title: "Input Error", message: "Numbers Can Not Be Equal", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
            else if Int(inputOne.text!)! == 0 || Int(inputTwo.text!)! == 0 {
                print("no zero number allowed")
                let alert = UIAlertController(title: "Input Error", message: "Numbers Can Not be Zero", preferredStyle: .alert)
                alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
                self.present(alert, animated: true, completion: nil)
            }
            else {
                randomizeNumbers()
                passValue()
                openTryNumberViewController()
                inputOne.text = ""
                inputTwo.text = ""
            }
        }
    }
}

