import 'package:bmi_app/Splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(


      ),
     home:Splash_screen()
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});



  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
{
  var controller1=TextEditingController();
  var controller2=TextEditingController();
  var controller3=TextEditingController();
  var result="";

  @override
  Widget build(BuildContext context) {


    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          image:DecorationImage(
              image: AssetImage("assets/images/bmi3.jpg"),fit:BoxFit.cover),),
        child: Center(
          child:SingleChildScrollView(
            child: Container(

              width: 300,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("BMI APP",style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold,fontFamily: "Cursive"),),
                  SizedBox(height: 21,),
                  TextField(
                    controller:controller1,
                    decoration: InputDecoration(
                      label: Text("Enter your Height ( in inches)"),
                      prefixIcon: Icon(Icons.height),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.purple.shade800,
                        )
                      ),
                      focusedBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.purple.shade800,
                        )
                      )
                    ),
                    keyboardType: TextInputType.number,

                  ),
                  SizedBox(height: 21,),
                  TextField(
                    controller: controller2,
                    decoration: InputDecoration(
                        label: Text("Enter your Height (in Feet)"),
                        prefixIcon: Icon(Icons.height),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.purple.shade800,
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide:BorderSide(
                            color: Colors.purple.shade800,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        )

                    ),
                    keyboardType:TextInputType.number,

                  ),
                  SizedBox(height: 21,),
                  TextField(
                    controller: controller3,
                    decoration: InputDecoration(
                      label: Text("Enter your weight(in kgs)"),
                      prefixIcon: Icon(Icons.line_weight),
                      enabledBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.purple.shade800,
                        ),

                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          color: Colors.purple.shade800,
                        )
                      )

                    ),
                    keyboardType: TextInputType.number,

                  ),
                  SizedBox(height: 21,),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyan,
                    ),
                      onPressed:(){
                    var h1=controller1.text.toString();
                    var h2=controller2.text.toString();
                    var w1=controller3.text.toString();
                    if(h1!=""&&h2!=""&&w1!="")
                      {
                         var ih1=int.parse(h1);
                         var ih2=int.parse(h2);
                         var iw1=int.parse(w1);
                         var inch=(ih2*12)+ih1;
                         var cm= (inch*2.54);
                         var tm=cm/100;
                         var bmi=iw1/(tm*tm);
                        setState(() {
                          result="Your BMI is $bmi";
                        });

                      }
                    else{
                      setState(() {
                        result="Please enter all the fields!!";
                      });

                    }

                  }, child: Text("Calculate",style: TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold),)),
                  SizedBox(height: 21,),
                  Text(result,style: TextStyle(fontWeight:FontWeight.w600,color:Colors.black,fontSize: 17),)

                ],
              ),
            ),
          ),
        ),
      ),

    );
  }
}
