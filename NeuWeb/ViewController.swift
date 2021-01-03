//
//  ViewController.swift
//  NeuWeb
//
//  Created by Jayden Dagsa on 1/3/21.
//  Copyright (c) 2021 Jayden Dagsa. All rights reserved.
//

import Cocoa
import WebKit

class ViewController: NSViewController, WKNavigationDelegate{
    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.navigationDelegate = self
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    
    @IBAction func didEnterKeyTapped(_ sender: NSTextField){
        let urlString = sender.stringValue
        guard let url = URL(string: urlString) else {return}
        let urlRequest = URLRequest(url: url)
        webView.load(urlRequest)
    }
    
    @IBAction func didNavigationButtonTapped(_ sender: NSSegmentedControl){
        if sender.selectedSegment == 0 {
            webView.goBack()
        } else {
            webView.goForward()
        }
        
        
        
    }
    
    
    
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        let currentURL = webView.url?.absoluteString ?? ""
        guard let windowController = view.window?.windowController as? WindowController else {return}
        let textField = windowController.searchField
        textField?.stringValue = currentURL
    }
    
    
    
}

