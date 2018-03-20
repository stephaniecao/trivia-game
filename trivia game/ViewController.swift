
import UIKit

class ViewController: UIViewController {
    
    let grey = UIColor(hue: 91/360, saturation: 0/100, brightness: 90/100, alpha: 1.0)
    @IBOutlet var question: UILabel!
    @IBOutlet var answer1: UIButton!
    @IBOutlet var answer2: UIButton!
    @IBOutlet var answer3: UIButton!
    @IBOutlet var answer4: UIButton!
    @IBOutlet var label: UILabel!
    @IBOutlet var button: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.backgroundColor =  grey
        questionGenerator()
        button.setTitle("Continue",for:UIControlState.Normal);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    var currentAnswer = 0
    
    func questionGenerator () {
        let questionNumber = arc4random ( ) % 6 ;
        switch (questionNumber) {
        case 0:
            question.text = "How many states are there in the US?"
            answer1.setTitle("50",for:UIControlState.Normal);
            answer2.setTitle("5",for:UIControlState.Normal);
            answer3.setTitle("10",for:UIControlState.Normal);
            answer4.setTitle("100",for:UIControlState.Normal);
            currentAnswer = 1
            break;
        case 1:
            question.text = "How many counties are there in California"
            answer1.setTitle("58",for:UIControlState.Normal);
            answer2.setTitle("of course",for:UIControlState.Normal);
            answer3.setTitle("13",for:UIControlState.Normal);
            answer4.setTitle("90",for:UIControlState.Normal);
            currentAnswer = 1
            break;
        case 2:
            question.text = "How many pounds of food does a person eat a year?"
            answer1.setTitle("500",for:UIControlState.Normal);
            answer2.setTitle("8000",for:UIControlState.Normal);
            answer3.setTitle("1",for:UIControlState.Normal);
            answer4.setTitle("1500",for:UIControlState.Normal);
            currentAnswer = 4
            break;
        case 3:
            question.text = "sneeze?"
            answer1.setTitle("not allowed",for:UIControlState.Normal);
            answer2.setTitle("succ???",for:UIControlState.Normal);
            answer3.setTitle("yes",for:UIControlState.Normal);
            answer4.setTitle("hecr",for:UIControlState.Normal);
            currentAnswer = 4
            break;
        case 4:
            question.text = "what is scotland's national animal?"
            answer1.setTitle("frog",for:UIControlState.Normal);
            answer2.setTitle("a kilt",for:UIControlState.Normal);
            answer3.setTitle("unicorn",for:UIControlState.Normal);
            answer4.setTitle("lion",for:UIControlState.Normal);
            currentAnswer = 3
        case 5:
            question.text = "what was thomas edison's nickname"
            answer1.setTitle("cool dude",for:UIControlState.Normal);
            answer2.setTitle("the wizard of menlo park",for:UIControlState.Normal);
            answer3.setTitle("light bulb guy",for:UIControlState.Normal);
            answer4.setTitle("genius",for:UIControlState.Normal);
            currentAnswer = 2
            

        default:
            break;
        }
    }

    func hide () {
        label.isHidden = true;
        button.isHidden = true;
    }
    
    func unhide () {
        label.isHidden = false;
        button.isHidden = false;
    }
    
    @IBAction func button1Clicked(sender: AnyObject){
        unhide()
        if currentAnswer == 1{
            label.text = "you got it right! you can go die!"
        }
        else {
            label.text = "you have truly disappointed me please leave this facility and never talk to me or my five thousand sons (whether they are biologically related to me or adopted) again"
        }
    }
    @IBAction func button2Clicked(sender: AnyObject){
        unhide()
        if currentAnswer == 2{
            label.text = "you got it right!"
        }
        else {
            label.text = "Sorry that is incorrect"
        }
    }
    @IBAction func button3Clicked(sender: AnyObject){
        unhide()
        if currentAnswer == 3{
            label.text = "you got it right!"
        }
        else {
            label.text = "Sorry that's wrong"
        }
    }
    @IBAction func button4Clicked(sender: AnyObject){
        unhide()
        if currentAnswer == 4{
            label.text = "you got it right!"
        }
        else {
            label.text = "Sorry that's incorrect"
        }
    }
    @IBAction func continueClicked(sender: AnyObject){
        questionGenerator()
        hide()
        }
}
