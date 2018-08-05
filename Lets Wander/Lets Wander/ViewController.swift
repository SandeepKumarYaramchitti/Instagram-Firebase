//
//  ViewController.swift
//  Lets Wander
//
//  Created by Sandeep Kumar  Yaramchitti on 8/5/18.
//  Copyright © 2018 Sandeep Kumar  Yaramchitti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Add a photo Button
    let plusButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(#imageLiteral(resourceName: "PlusphotoButton"), for: .normal)
        button.backgroundColor = UIColor(white: 0, alpha: 0.1)
        button.layer.cornerRadius = 3
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    //Add a Email Address Field
    let emailAddressField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Email"
        textField.font = UIFont.systemFont(ofSize: 14)
        textField.layer.cornerRadius = 0.5
        textField.backgroundColor = UIColor.lightGray
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    //Add a User Name Field
    let userNameField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "User Name"
        textField.font = UIFont.systemFont(ofSize: 14)
        textField.layer.cornerRadius = 0.5
        textField.backgroundColor = UIColor.lightGray
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    //Add a Password Field
    let passwordField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.font = UIFont.systemFont(ofSize: 14)
        textField.layer.cornerRadius = 0.5
        textField.backgroundColor = UIColor.lightGray
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    //Add a Sign up Button
    let signUpButton: UIButton = {
       let button = UIButton(type: .system)
       button.backgroundColor = UIColor(red: 144/255, green: 204/255, blue: 244/255, alpha: 1)
       button.translatesAutoresizingMaskIntoConstraints = false
       button.clipsToBounds = true
       button.layer.cornerRadius = 5
       button.setTitleColor(UIColor.white, for: .normal)
       button.setTitle("Log In", for: .normal)
       return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(plusButton)
        plusButton.heightAnchor.constraint(equalToConstant: 100).isActive = true
        plusButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        plusButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        plusButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        //Set up the input Fields
        setUpInputFields()
    }
    
    //Set the Input fields Method to add the new fields
    fileprivate func setUpInputFields(){
    
        let stackView = UIStackView(arrangedSubviews: [emailAddressField, userNameField, passwordField, signUpButton])
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: plusButton.bottomAnchor, constant: 30),
            stackView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 42),
            stackView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -42),
            stackView.heightAnchor.constraint(equalToConstant: 180)
            ])
        
    }
}

