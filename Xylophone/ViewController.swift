import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
       
        playSound(sounndName: sender.currentTitle!)
        
    }
    
    func playSound(sounndName: String) {
        let url = Bundle.main.url(forResource: sounndName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}

