import 'package:flutter/material.dart';
import 'package:teachandlearn/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      routes: {
        '/second': (context) => HomePage(),
      },
      title: 'Teach and learn',
      theme: ThemeData(

        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    debugShowCheckedModeBanner: false,
    );

  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

final textcontroller=new TextEditingController();

  int groupValue;

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    textcontroller.addListener(printsomevalues);
  }


@override
void dispose() {
  // TODO: implement dispose
  textcontroller.removeListener(printsomevalues);
  textcontroller.dispose();
  super.dispose();
}

void printsomevalues() {
  print("Controller values${textcontroller.text}");
}

  @override
  Widget build(BuildContext context) {

    return Scaffold(
//      appBar: new AppBar(
//        backgroundColor: Colors.transparent,
//      ),
      resizeToAvoidBottomPadding: false,
      body: Center(
        child: new Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0),
          child: new Column(

            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new Image.asset("assets/logo.png",height: 75.0,),
              SizedBox(height: 50.0,),
              new TextField(
                decoration: InputDecoration(
                  labelText: "Email",
                  hintText: "Enter your email address",
                   icon: Icon(Icons.email),
                ),
//                controller: textcontroller,
//                onChanged: (value)=>
              ),
              SizedBox(height: 10.0,),
              new TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "password",

                  hintText: "Enter your password",
                  icon: Icon(Icons.remove_red_eye),
                ),
//                controller: textcontroller,
//                onChanged: (value)=>
              ),
              SizedBox(height: 10.0,),
            new  TextField(
                decoration: InputDecoration(
                  labelText: "Mobile number",
                  hintText: "Enter your mobile number",
                  icon: Icon(Icons.phone),
                ),
//                controller: textcontroller,
//                onChanged: (value)=>
              ), SizedBox(height: 50.0),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text("Teaacher"),
                  new Radio(
                      value: 1,
                      groupValue: groupValue,
                      activeColor: Colors.redAccent,
                      onChanged: (int e) => selectvalue(e)),
                  new Text("Learner"),
                  new Radio(
                      value: 2,
                      groupValue: groupValue,
                      activeColor: Colors.redAccent,
                      onChanged: (int e) => selectvalue(e))
                ],
              ),
              SizedBox(height: 50.0,),
              new RaisedButton(
                elevation: 1.0,
                padding: EdgeInsets.symmetric(vertical: 14.0),
                color: Colors.redAccent[700],
                child: new Text("SignUp",style: new TextStyle(color: Colors.white),),
            onPressed: () {
            Navigator.pushNamed(context, '/second');
      },
              ),

            ],

          ),

        ),

      ),
    );
  }

void  selectvalue(int e) {
  setState(() {
    if(e ==1){
      groupValue =1;
    }
    else if(e==2){
      groupValue = 2;
    }
  });
}

}
