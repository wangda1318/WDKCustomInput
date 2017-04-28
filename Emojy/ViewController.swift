//
//  ViewController.swift
//  Emojy
//
//  Created by 王东开 on 2017/4/24.
//  Copyright © 2017年 王东开. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    lazy var vc: EmojyViewController = EmojyViewController { [weak self] (emojy) in
        
        print(emojy)
        
        self?.textView.insertEmoticon(emojy: emojy)
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "发送", style: .plain, target: self, action: #selector(ViewController.send))
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        textView.resignFirstResponder()
        
        textView.inputView = vc.view

        textView.becomeFirstResponder()
        
    }
    
    
    func send() {
        
        print(textView.getEmoticon())
    }
}

private extension ViewController {
    
    func setupText(emojy: Emojy) {
        
        
    }
}


