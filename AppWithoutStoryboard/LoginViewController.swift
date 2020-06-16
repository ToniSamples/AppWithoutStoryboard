//
//  ViewController.swift
//  AppWithoutStoryboard
//
//  Created by Anton Paliakou on 6/16/20.
//  Copyright © 2020 Anton Paliakou. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    private(set) var stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 30
        return stackView
    }()
    
    private(set) var usernameTextField: UITextField = {
        let usernameTextField = UITextField()
        usernameTextField.placeholder = "Username"
        usernameTextField.textContentType = .password
        usernameTextField.borderStyle = .roundedRect
        return usernameTextField
    }()
    
    private(set) var passwordTextField: UITextField = {
        let passwordTextField = UITextField()
        passwordTextField.placeholder = "Password"
        passwordTextField.textContentType = .password
        passwordTextField.isSecureTextEntry = true
        passwordTextField.borderStyle = .roundedRect
        return passwordTextField
    }()
    
    private(set) var loginButton: UIButton = {
        let loginButton = UIButton()
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.black, for: .normal)
        return loginButton
    }()
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: Private
    
    private func setupUI() {
        self.view.backgroundColor = .white
        stackView.addArrangedSubview(usernameTextField)
        stackView.addArrangedSubview(passwordTextField)
        stackView.addArrangedSubview(loginButton)
        view.addSubview(stackView)
        stackView.frame = CGRect(x: 20, y: 100, width: self.view.frame.width - 40, height: 140)
    }
}
