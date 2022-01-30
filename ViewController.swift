//
//  ViewController.swift
//  Wings for Success
//
//  Created by Shivika Varshney on 1/12/22.
//

import UIKit
import WebKit

let webView = WKWebView()
class ViewController: UIViewController {
    
    @IBOutlet weak var overviewVideo: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        loadYoutube(videoID: "fPhpckyH0V4")
    }
    
    func loadYoutube(videoID:String) {
        guard let videoURL = URL(string: "https://www.youtube.com/embed/\(videoID)")
                else {return }
        overviewVideo.load(URLRequest(url: videoURL))
        }
   /**
    getVideo(videoCode: "fPhpckyH0V4")
    func getVideo(videoCode: String) {
        let url = URL(string: "https://www.youtube.com/embed/\(videoCode)")
        overviewVideo.load(URLRequest(url: url!))
    }
    ***/
}

