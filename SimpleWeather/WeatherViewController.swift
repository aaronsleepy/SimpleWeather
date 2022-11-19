//
//  ViewController.swift
//  SimpleWeather
//
//  Created by Aaron on 2022/11/19.
//

import UIKit

class WeatherViewController: UIViewController {

    @IBOutlet weak var weatherImageView: UIImageView!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeButtonTapped(_ sender: Any) {
        changeWeather()
    }
    
    let cities = ["Seoul", "Tokyo", "LA", "Seatle"]
    let weathers = ["cloud.fill", "sun.max.fill", "wind", "cloud.sun.rain.fill"]
    
    // MARK: - 도시, 온도, 날씨 이미지 변경하기
    
    func changeWeather() {
        cityLabel.text = cities.randomElement()!
        
        let imageName = weathers.randomElement()!
        weatherImageView.image = UIImage(systemName: imageName)?.withRenderingMode(.alwaysOriginal)
        
        let randomTemperature = Int.random(in: 10..<30)
        temperatureLabel.text = "\(randomTemperature)°"
    }
}

