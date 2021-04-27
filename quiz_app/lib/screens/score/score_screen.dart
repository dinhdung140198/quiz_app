import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/constants.dart';
import 'package:quiz_app/controllers/question_controller.dart';
import 'package:quiz_app/screens/welcome/welcome_screen.dart';
import 'package:websafe_svg/websafe_svg.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true ,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          FlatButton(
            onPressed: ()=>Get.to(WelcomeScreen()), 
            child: Icon(Icons.home)
          )
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          WebsafeSvg.asset("assets/icons/bg.svg",fit: BoxFit.fill),
          Column(
            children: [
              Spacer(flex: 3,),
              Text(
                "Score",
                style: Theme.of(context).textTheme.headline3.copyWith(color: kSecondaryColor),

              ),
              Spacer(),
              Text(
                "${_qnController.correctAns}/${_qnController.questions.length}",
                style: Theme.of(context).textTheme.headline4.copyWith(color: kSecondaryColor),
              ),
              Spacer(flex:3),
            ],
          )
        ],
      ),
    );
  }
}