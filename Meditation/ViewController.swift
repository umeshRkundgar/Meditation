//
//  ViewController.swift
//  supermindProject
//
//  Created by Umesh kundgar on 11/2/23.
//

import UIKit
import UserNotifications
import AVFoundation

class ViewController: UIViewController {
    var GoalArray = [["Step":"Day 2: Steps To Recharge","medi":"Medition"],
                     ["Step":"Train","medi":"WorkOut"]]
    var routineArray = [["Step":"Gratitude","medi":"Journal"],
                        ["Step":"For Inner Peace","medi":"Music"]]
    var selectedTime = 1
    var timeToShow = "1 mins"
    var audioPlayer: AVAudioPlayer?
    let timeOptions = [1, 2, 5, 10, 15]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "beautiful")
        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
        imageViewUI()
        xpLevelViewUI()
        view1UI()
        menuCollectionViewUI()
        GoalLabelUI()
        GoalCollectionViewUI()
        ActivityRoutineLabelUI()
    }
    
    var imageView = UIImageView()
    func imageViewUI(){
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .cyan
        imageView.image = UIImage(named: "picture")
        imageView.layer.cornerRadius = 5
        view.addSubview(imageView)
        NSLayoutConstraint(item: imageView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 60).isActive = true
        NSLayoutConstraint(item: imageView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 8).isActive = true
        NSLayoutConstraint(item: imageView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 80).isActive = true
        NSLayoutConstraint(item: imageView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: 80).isActive = true
    }
    
    var xpLevelView = UIView()
    func xpLevelViewUI(){
        xpLevelView.translatesAutoresizingMaskIntoConstraints = false
        xpLevelView.backgroundColor = .gray
        xpLevelView.layer.cornerRadius = 8
        xpLevelView.layer.borderWidth = 2
        xpLevelView.layer.borderColor = UIColor.cyan.cgColor
        view.addSubview(xpLevelView)
        NSLayoutConstraint(item: xpLevelView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 60).isActive = true
        NSLayoutConstraint(item: xpLevelView, attribute: .leading, relatedBy: .equal, toItem: imageView, attribute: .trailing, multiplier: 1, constant: 8).isActive = true
        NSLayoutConstraint(item: xpLevelView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 80).isActive = true
        NSLayoutConstraint(item: xpLevelView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: 280).isActive = true
        
        
        XpLabel.translatesAutoresizingMaskIntoConstraints = false
        XpLabel.text = "1090 XP "
        XpLabel.backgroundColor = .cyan
        XpLabel.layer.cornerRadius = 10
        XpLabel.layer.borderWidth = 2
        XpLabel.layer.borderColor = UIColor.cyan.cgColor
        XpLabel.textAlignment = .right
        xpLevelView.addSubview(XpLabel)
        NSLayoutConstraint(item: XpLabel, attribute: .top, relatedBy: .equal, toItem: xpLevelView, attribute: .top, multiplier: 1, constant: 1).isActive = true
        NSLayoutConstraint(item: XpLabel, attribute: .leading, relatedBy: .equal, toItem: xpLevelView, attribute: .leading, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: XpLabel, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 30).isActive = true
        NSLayoutConstraint(item: XpLabel, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: 260).isActive = true
        
        
        LevelLabel.translatesAutoresizingMaskIntoConstraints = false
        LevelLabel.text = " Leve 9\t\t\t 30 XP To Level 10"
        LevelLabel.backgroundColor = .white
        LevelLabel.layer.cornerRadius = 5
        LevelLabel.layer.borderWidth = 2
        LevelLabel.layer.borderColor = UIColor.cyan.cgColor
        LevelLabel.textAlignment = .left
        view.addSubview(LevelLabel)
        NSLayoutConstraint(item: LevelLabel, attribute: .top, relatedBy: .equal, toItem: XpLabel, attribute: .bottom, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: LevelLabel, attribute: .leading, relatedBy: .equal, toItem: xpLevelView, attribute: .leading, multiplier: 1, constant: 0).isActive = true
        NSLayoutConstraint(item: LevelLabel, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 50).isActive = true
        NSLayoutConstraint(item: LevelLabel, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: 280).isActive = true
        
        
    }
    var XpLabel  = UILabel()
    var LevelLabel  = UILabel()
    var view1  =  UIView()
    var expireLabel = UILabel()
    var expireLabel1 = UILabel()
    var exploreButton = UIButton()
    
    
    func view1UI(){
        view1.translatesAutoresizingMaskIntoConstraints = false
        view1.backgroundColor = .systemPink
        view1.layer.cornerRadius = 8
        view.addSubview(view1)
        NSLayoutConstraint(item: view1, attribute: .top, relatedBy: .equal, toItem: imageView, attribute: .bottom, multiplier: 1, constant: 15).isActive = true
        NSLayoutConstraint(item: view1, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 8).isActive = true
        NSLayoutConstraint(item: view1, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 80).isActive = true
        NSLayoutConstraint(item: view1, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: 380).isActive = true
        
        
        expireLabel.translatesAutoresizingMaskIntoConstraints = false
        expireLabel.backgroundColor = .clear
        expireLabel.text = "Your Level premium is about to expire,renew now!"
        expireLabel.textColor = .white
        expireLabel.font = UIFont.systemFont(ofSize: 12)
        expireLabel.numberOfLines = 0
        view1.addSubview(expireLabel)
        NSLayoutConstraint(item: expireLabel, attribute: .top, relatedBy: .equal, toItem: view1, attribute: .top, multiplier: 1, constant: 8).isActive = true
        NSLayoutConstraint(item: expireLabel, attribute: .leading, relatedBy: .equal, toItem: view1, attribute: .leading, multiplier: 1, constant: 10).isActive = true
        NSLayoutConstraint(item: expireLabel, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 60).isActive = true
        NSLayoutConstraint(item: expireLabel, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: 180).isActive = true
        
        expireLabel1.translatesAutoresizingMaskIntoConstraints = false
        expireLabel1.backgroundColor = .clear
        expireLabel1.layer.cornerRadius = 5
        expireLabel1.layer.borderWidth = 2
        expireLabel1.layer.borderColor = UIColor.white.cgColor
        expireLabel1.text = "  Explore"
        expireLabel1.textColor = .white
        expireLabel1.textAlignment = .left
        view1.addSubview(expireLabel1)
        NSLayoutConstraint(item: expireLabel1, attribute: .top, relatedBy: .equal, toItem: view1, attribute: .top, multiplier: 1, constant: 20).isActive = true
        NSLayoutConstraint(item: expireLabel1, attribute: .leading, relatedBy: .equal, toItem: expireLabel, attribute: .trailing, multiplier: 1, constant: 20).isActive = true
        NSLayoutConstraint(item: expireLabel1, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 45).isActive = true
        NSLayoutConstraint(item: expireLabel1, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: 130).isActive = true
        
        
        
        exploreButton.translatesAutoresizingMaskIntoConstraints = false
        exploreButton.backgroundColor = .clear
        exploreButton.tintColor = UIColor.gray
        exploreButton.setImage(UIImage(named: "download"), for: .normal)
        view1.addSubview(exploreButton)
        NSLayoutConstraint(item: exploreButton, attribute: .top, relatedBy: .equal, toItem: view1, attribute: .top, multiplier: 1, constant: 35).isActive = true
        NSLayoutConstraint(item: exploreButton, attribute: .leading, relatedBy: .equal, toItem: expireLabel1, attribute: .leading, multiplier: 1, constant: 100).isActive = true
        NSLayoutConstraint(item: exploreButton, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 20).isActive = true
        NSLayoutConstraint(item: exploreButton, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .width, multiplier: 1, constant: 20).isActive = true
        
    }
    var GoalLabel = UILabel()
    func GoalLabelUI(){
        GoalLabel.translatesAutoresizingMaskIntoConstraints = false
        GoalLabel.backgroundColor = .clear
        GoalLabel.text = "Must Do For Your Goals"
        GoalLabel.font = UIFont.boldSystemFont(ofSize: 25)

        view.addSubview(GoalLabel)
        NSLayoutConstraint(item: GoalLabel, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 280).isActive = true
        NSLayoutConstraint(item: GoalLabel, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 15).isActive = true
        NSLayoutConstraint(item: GoalLabel, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: -100).isActive = true
        NSLayoutConstraint(item: GoalLabel, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 50).isActive = true
    }
    var GoalCollectionView =  UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout.init())
        var layout1 : UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        func GoalCollectionViewUI(){
            layout1.minimumInteritemSpacing = 20
            layout1.scrollDirection = .horizontal
            layout1.itemSize = CGSize(width: 375/1.20 , height: 812/5.30)//CGSize(width: Width1/6.82666, height:Height1/4.2666)
            GoalCollectionView.translatesAutoresizingMaskIntoConstraints = false
            GoalCollectionView.dataSource = self
            GoalCollectionView.delegate = self
            GoalCollectionView.setCollectionViewLayout(layout1, animated: true)
            GoalCollectionView.clipsToBounds = true
            GoalCollectionView.backgroundColor = UIColor.clear
            GoalCollectionView.showsHorizontalScrollIndicator = false
            GoalCollectionView.register(UINib(nibName: "ActivityRoutineCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
            view.addSubview(GoalCollectionView)
            NSLayoutConstraint(item: GoalCollectionView, attribute: .top, relatedBy: .equal, toItem: GoalLabel, attribute: .bottom, multiplier: 1, constant: 15).isActive = true
            NSLayoutConstraint(item: GoalCollectionView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant:10).isActive = true
            NSLayoutConstraint(item: GoalCollectionView, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant:-5).isActive = true
            NSLayoutConstraint(item: GoalCollectionView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 160).isActive = true
            
        }
    var ActivityRoutineLabel = UILabel()
    func ActivityRoutineLabelUI(){
        ActivityRoutineLabel.translatesAutoresizingMaskIntoConstraints = false
        ActivityRoutineLabel.backgroundColor = .clear
        ActivityRoutineLabel.text = "Activity Routine"
        ActivityRoutineLabel.font = UIFont.boldSystemFont(ofSize: 25)
        view.addSubview(ActivityRoutineLabel)
        NSLayoutConstraint(item: ActivityRoutineLabel, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 520).isActive = true
        NSLayoutConstraint(item: ActivityRoutineLabel, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant: 15).isActive = true
        NSLayoutConstraint(item: ActivityRoutineLabel, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant: 100).isActive = true
        NSLayoutConstraint(item: ActivityRoutineLabel, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .height, multiplier: 1, constant: 50).isActive = true

    }
    
    var menuCollectionView =  UICollectionView(frame: CGRect.zero, collectionViewLayout: UICollectionViewFlowLayout.init())
        var layout : UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        func menuCollectionViewUI(){
            layout.minimumInteritemSpacing = 20
            layout.minimumLineSpacing = 10
            layout.itemSize = CGSize(width: 375/1.00 , height: 812/6.00)
            menuCollectionView.translatesAutoresizingMaskIntoConstraints = false
            menuCollectionView.dataSource = self
            menuCollectionView.delegate = self
            menuCollectionView.setCollectionViewLayout(layout, animated: true)
            menuCollectionView.clipsToBounds = true
            menuCollectionView.backgroundColor = UIColor.clear
            menuCollectionView.showsHorizontalScrollIndicator = false
            menuCollectionView.register(UINib(nibName: "ActivityRoutineCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
            view.addSubview(menuCollectionView)
            NSLayoutConstraint(item: menuCollectionView, attribute: .top, relatedBy: .equal, toItem: view, attribute: .top, multiplier: 1, constant: 580).isActive = true
            NSLayoutConstraint(item: menuCollectionView, attribute: .leading, relatedBy: .equal, toItem: view, attribute: .leading, multiplier: 1, constant:0).isActive = true
            NSLayoutConstraint(item: menuCollectionView, attribute: .trailing, relatedBy: .equal, toItem: view, attribute: .trailing, multiplier: 1, constant:-5).isActive = true
            NSLayoutConstraint(item: menuCollectionView, attribute: .bottom, relatedBy: .equal, toItem: view, attribute: .bottom, multiplier: 1, constant: -50).isActive = true
        }}
extension ViewController:  UICollectionViewDataSource, UICollectionViewDelegate, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == GoalCollectionView{
            return GoalArray.count
        }else{
            return routineArray.count
        }
       
    }
    
    
    @objc func timerAction(_ sender: UIButton) {
        let pickerView = UIPickerView()
        pickerView.delegate = self
        pickerView.dataSource = self
        
        let pickerViewContainer = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 812/4.70))
        pickerViewContainer.backgroundColor = UIColor.white
        pickerViewContainer.addSubview(pickerView)
        
        let alertController = UIAlertController(title: "Select Time", message: "\n\n\n\n\n\n", preferredStyle: .actionSheet)
        alertController.view.addSubview(pickerViewContainer)
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            // Handle the selected time
            self.selectedTime = self.timeOptions[pickerView.selectedRow(inComponent: 0)]
            self.startTimerForSelectedTime(timeInMinutes: self.selectedTime)
            // Use the selectedTime value
            print("Selected time: \(self.selectedTime)")
        }
        alertController.addAction(okAction)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
        
        if let popoverController = alertController.popoverPresentationController {
            popoverController.sourceView = view
            popoverController.sourceRect = sender.frame
        }
        
        present(alertController, animated: true, completion: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == GoalCollectionView {
            let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ActivityRoutineCollectionViewCell
            cell1.imageView.layer.cornerRadius = 35
            if indexPath.row == 0 {
               
                cell1.backgroundColor = UIColor.twilight60
            }else{
                cell1.backgroundColor = UIColor.twilight60Twilight
            }
            cell1.gratitudeLabel.text = GoalArray[indexPath.row]["Step"]
            cell1.journalLabel.text = GoalArray[indexPath.row]["medi"]
            cell1.timerButton.titleLabel?.text = "\(self.timeToShow)"
            cell1.timerButton.addTarget(self, action: #selector(timerAction), for: .touchUpInside)
            cell1.layer.cornerRadius = 10
            return cell1
        }else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ActivityRoutineCollectionViewCell
            cell.layer.cornerRadius = 10
            cell.imageView.layer.cornerRadius = 25
            if indexPath.row == 0 {
                cell.backgroundColor = UIColor.coral
            }else{
                cell.backgroundColor = UIColor.lightBlueGrey
                cell.imageView.image = UIImage(named: "ball")
            }
            cell.gratitudeLabel.text = routineArray[indexPath.row]["Step"]
            cell.journalLabel.text = routineArray[indexPath.row]["medi"]
            return cell
        }
        
    }
    

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return timeOptions.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(timeOptions[row]) mins"
    }
    
    func startTimerForSelectedTime(timeInMinutes: Int) {
        let timeInSeconds = timeInMinutes * 60 // Convert minutes to seconds
        
        self.timeToShow = "\(timeInMinutes) mins"
        GoalCollectionView.reloadData()
        
        let timer = Timer.scheduledTimer(withTimeInterval: TimeInterval(timeInSeconds), repeats: false) { _ in
            // Code to execute when the timer finishes
            print("Timer finished for \(timeInMinutes) minutes")
            // You can perform any action here after the timer finishes
            // Schedule local notification
            self.scheduleLocalNotification()
            self.showMeditationCompletionAlert()

        }
        // Run the timer on the current run loop
        RunLoop.current.add(timer, forMode: .common)
    }
    
    func scheduleLocalNotification() {
        let content = UNMutableNotificationContent()
        content.title = "Meditation Completed"
        content.body = "Take a moment to reflect on your meditation session."

        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 2, repeats: false)
        let request = UNNotificationRequest(identifier: "MeditationNotification", content: content, trigger: trigger)

        UNUserNotificationCenter.current().add(request) { error in
            if let error = error {
                print("Error scheduling notification: \(error)")
            } else {
                print("Notification scheduled successfully.")
            }
        }
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { granted, error in
            if granted {
                // Permission granted
                print("Permission Granted")
            } else {
                // Permission denied
                print("Permission Denied")
            }
        }

    }
    
    func showMeditationCompletionAlert() {
            let alertController = UIAlertController(title: "Meditation Completed", message: "Take a moment to reflect on your meditation session.", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: { _ in
                // Code to execute after the user taps 'OK'
            }))
            
            // Play an alert sound
            if let soundURL = Bundle.main.url(forResource: "alertSound", withExtension: "mp3") {
                do {
                    audioPlayer = try AVAudioPlayer(contentsOf: soundURL)
                    audioPlayer?.play()
                } catch {
                    print("Could not play the sound: \(error.localizedDescription)")
                }
            }
        // Play the default notification sound using AudioToolbox
        AudioServicesPlaySystemSound(SystemSoundID(1007))
            present(alertController, animated: true, completion: nil)
        }


}
extension UIColor{
    static  var twilight60: UIColor {
           return UIColor(red: 91.0 / 255.0, green: 88.0 / 255.0, blue: 166.0 / 255.0, alpha: 0.6)
         }
    static var twilight60Twilight: UIColor {
        return UIColor(red: 91.0 / 255.0, green: 88.0 / 255.0, blue: 166.0 / 255.0, alpha: 1.0)
    }
    static var twilight60Twilight60: UIColor {
        return UIColor(red: 91.0 / 255.0, green: 88.0 / 255.0, blue: 166.0 / 255.0, alpha: 0.6)
    }
    static var coral: UIColor {
        return UIColor(red: 226.0 / 255.0, green: 99.0 / 255.0, blue: 99.0 / 255.0, alpha: 1.0)
    }
   static var lightBlueGrey: UIColor {
        return UIColor(red: 176.0 / 255.0, green: 196.0 / 255.0, blue: 222.0 / 255.0, alpha: 1.0)
    }
}
