//
//  BrowserViewController.swift
//  SNSviwer
//
//  Created by 小紙一馬 on 2016/02/11.
//  Copyright © 2016年 kazumakogami. All rights reserved.
//

import Foundation
import UIKit

class BrowserViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var backButton: UIBarButtonItem!
    @IBOutlet weak var reload: UIBarButtonItem!
    @IBOutlet weak var stopButton: UIBarButtonItem!
    
    //yahooのurl起動時にこのページを開く
    let homeUrl = "http://www.yahoo.co.jp/"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //openUrlを呼び出す
        openUrl(homeUrl)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //文字列で指定されたURLをwebviewで開く
    func openUrl(urlString: String){
        let url = NSURL(string: urlString)
        let urlRequest = NSURLRequest(URL: url!)
        webView.loadRequest(urlRequest)
        
    }
    
    @IBAction func backButtonTapped(sender: UIBarButtonItem) {
    }
    @IBAction func reloadButtonTapped(sender: UIBarButtonItem) {
    }
    @IBAction func stopButtonTapped(sender: UIBarButtonItem) {
    }
    
    
}