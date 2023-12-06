import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String inputOperator="";
  double inputNum=0;
  double newInputNum=0;
  double result=0;

  @override
  Widget build(BuildContext context) {
    String question="${inputNum==0.0?"":inputNum} $inputOperator ${newInputNum==0.0?"":newInputNum}";
    double height=MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xff0b2742),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: height*0.20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding:const EdgeInsets.only(right: 8),
                  child: Text(
                  question,
                    textAlign: TextAlign.end,
                    style:const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                    ),),
                ),
                Padding(
                  padding:const EdgeInsets.only(right: 8),
                  child: Text(result==0.0?"":"$result",
                    textAlign: TextAlign.end,
                    style:const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold
                    ),),
                ),
              ],
            ),
            const SizedBox(height: 10,),
            Container(
              height: 3,
              width: double.infinity,
              color: Colors.blue,
            ),
            const SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buttons(
                  "AC",
                  Colors.white,
                    (){
                    setState(() {
                      inputOperator="";
                      inputNum=0;
                      newInputNum=0;
                      result=0;
                    });
                    }
                ),
                buttons(
                    "%",
                    Colors.white,
                    (){
                      inputOperator="%";
                      setState(() {});
                    }
                ),
                buttons(
                    "+/-",
                    Colors.white,
                    (){}
                ),
                buttons(
                    "+",
                    const Color(0xff18d0ff),
                    (){
                      setState(() {
                        inputOperator="+";
                      });
                    }
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buttons(
                    "7",
                    Colors.white,
                    (){
                      setState(() {
                        if(inputNum==0){inputNum= 7;}
                        if(inputOperator.isNotEmpty){newInputNum=7;}
                      });
                    }
                ),
                buttons(
                    "8",
                    Colors.white,
                    (){
                      setState(() {
                        if(inputNum==0){inputNum= 8;}
                        if(inputOperator.isNotEmpty){newInputNum=8;}
                      });
                    }
                ),
                buttons(
                    "9",
                    Colors.white,
                    (){
                      setState(() {
                        if(inputNum==0){inputNum= 9;}
                        if(inputOperator.isNotEmpty){newInputNum=9;}
                      });
                    }
                ),
                buttons(
                    "-",
                    const Color(0xff18d0ff),
                    (){
                      setState(() {
                        inputOperator="-";
                      });
                    }
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buttons(
                    "4",
                    Colors.white,
                    (){
                      if(inputNum==0){inputNum= 4;}
                      if(inputOperator.isNotEmpty){newInputNum=4;}
                      setState(() {
                      });
                    }
                ),
                buttons(
                    "5",
                    Colors.white,(){
                      setState(() {
                        if(inputNum==0){inputNum= 5;}
                        if(inputOperator.isNotEmpty){newInputNum=5;}
                      });
                }
                ),
                buttons(
                    "6",
                    Colors.white,
                    (){
                      if(inputNum==0){inputNum= 6;}
                      if(inputOperator.isNotEmpty){newInputNum=6;}
                      setState(() {
                      });
                    }
                ),
                buttons(
                    "/",
                    const Color(0xff18d0ff),
                    (){
                      setState(() {
                        inputOperator="/";
                      });
                    }
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buttons(
                    "1",
                    Colors.white,
                    (){
                      if(inputNum==0){inputNum= 1;}
                      if(inputOperator.isNotEmpty){newInputNum=1;}
                      setState(() {
                      });
                    }
                ),
                buttons(
                    "2",
                    Colors.white,
                    (){
                      setState(() {
                        if(inputNum==0){inputNum= 2;}
                        if(inputOperator.isNotEmpty){newInputNum=2;}
                      });
                    }
                ),
                buttons(
                    "3",
                    Colors.white,
                    (){
                      setState(() {
                        if(inputNum==0){inputNum= 3;}
                        if(inputOperator.isNotEmpty){newInputNum=3;}
                      });
                    }
                ),
                buttons(
                    "*",
                    const Color(0xff18d0ff),
                    (){
                      setState(() {
                        inputOperator="*";
                      });
                    }
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buttons(
                    "<-",
                    Colors.white,
                    (){
                      setState(() {
                        List l =question.split(" ");
                        question=l.join();
                        if(l[2]!=0.0){
                          newInputNum=0.0;
                        }else if(l[1]!="" && newInputNum==0.0){
                          l[1]="";
                        }else if(l[0]!=0.0){
                          inputNum=0.0;
                        }
                      });
                    }
                ),
                buttons(
                    "0",
                    Colors.white,
                    (){
                      setState(() {
                        if(inputNum==0){inputNum= 0;}
                        if(inputOperator.isNotEmpty){newInputNum=0;}
                      });
                    }
                ),
                buttons(
                    ".",
                    Colors.white,
                    (){}
                ),
                buttons(
                    "=",
                    const Color(0xff18d0ff),
                    (){
                      setState(() {
                        if(inputOperator=="%"){
                          result= inputNum % newInputNum;
                        } else if(inputOperator=="+"){
                          result= inputNum + newInputNum;
                        } else if(inputOperator=="-"){
                          result= inputNum - newInputNum;
                        } else if(inputOperator=="/"){
                          result= inputNum / newInputNum;
                        } else if(inputOperator=="*"){
                          result= inputNum * newInputNum;
                        }
                      });
                    }
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buttons(String content,Color color,void Function() function){
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color:color
      ),
      child: IconButton(
          onPressed: function,
          icon: Text(content,
            style:const TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 25
            ),
          ),
        color: Colors.black,
        iconSize: 20,
        alignment: Alignment.center,
      ),
    );
  }
}



