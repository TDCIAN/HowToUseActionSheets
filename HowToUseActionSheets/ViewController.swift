//
//  ViewController.swift
//  HowToUseActionSheets
//
//  Created by JeongminKim on 2023/03/01.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Show Action Sheets", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 16
        button.addTarget(
            self,
            action: #selector(showActionSheets),
            for: .touchUpInside
        )
        return button
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 200),
            button.heightAnchor.constraint(equalToConstant: 100),
        ])
    }


    @objc private func showActionSheets() {
        let actionSheet = UIAlertController(
            title: "Action Sheet Title",
            message: "Action Sheet Message",
            preferredStyle: .actionSheet
        )
        
        let first = UIAlertAction(
            title: "First Alert Action",
            style: .default
        ) { action in
            print("Choose First Alert Action")
        }
        
        let second = UIAlertAction(
            title: "Second Alert Action",
            style: .default
        ) { action in
            print("Choose Second Alert Action")
        }
        
        let third = UIAlertAction(
            title: "Third Alert Action",
            style: .default
        ) { action in
            print("Choose Third Alert Action")
        }
        
        let cancel = UIAlertAction(
            title: "Cancel Alert Action",
            style: .cancel
        ) { action in
            print("Choose Cancel Alert Action")
        }
        
        [first, second, third, cancel].forEach {
            actionSheet.addAction($0)
        }
        
        present(actionSheet, animated: true, completion: nil)
    }
}

