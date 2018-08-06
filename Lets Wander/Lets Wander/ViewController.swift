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
       button.backgroundColor = UIColor.rgb(red: 104, green: 204, blue: 244)
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
        plusButton.anchor(top: view.topAnchor, left: nil, bottom: nil, right: nil, paddingTop: 150, paddingLeft: 0, paddingBottom: 0, paddingRight: 0, width: 100, height: 100)
         plusButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
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
        stackView.anchor(top: plusButton.bottomAnchor, left: view.leftAnchor, bottom: nil, right: view.rightAnchor, paddingTop: 30, paddingLeft: 42, paddingBottom: 0, paddingRight: 42, width: 0, height: 180)
    }
}

