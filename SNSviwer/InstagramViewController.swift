//
//  InstagramViewController.swift
//  SNSviwer
//
//  Created by 小紙一馬 on 2016/02/11.
//  Copyright © 2016年 kazumakogami. All rights reserved.
//

import Foundation
import UIKit

class InstagramViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var backButton: UIBarButtonItem!
    @IBOutlet weak var reload: UIBarButtonItem!
    @IBOutlet weak var stopButton: UIBarButtonItem!
    
    //instagramのurl起動時にこのページを開く
    let homeUrl = "https://www.instagram.com/"
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        openUrl(homeUrl)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func openUrl(urlString: String){
        let url = NSURL(string: urlString)
        let urlRequest = NSURLRequest(URL: url!)
        webView.loadRequest(urlRequest)
    }
    
    @IBAction func backButtonTapped(sender: UIBarButtonItem) {
        webView.goBack()
    }
    @IBAction func reloadButtonTapped(sender: UIBarButtonItem) {
        webView.reload()
    }
    @IBAction func stopButtonTapped(sender: UIBarButtonItem) {
        webView.stopLoading()
    }
    
    
    
}
