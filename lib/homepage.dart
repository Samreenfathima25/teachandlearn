import 'package:flutter/material.dart';


class  HomePage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("Find Now"),
      ),


      body: new Container(

child: new Column(

  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.stretch,
  children: <Widget>[
   new  SizedBox(height: 100.0),
    new Container(
//      color: Colors.red,
      child: new Column(
        children: <Widget>[

    new RaisedButton(
    elevation: 1.0,
    padding: EdgeInsets.symmetric(horizontal: 75.0),
    color: Colors.redAccent[700],
    child: new Text("Find a Teacher",style: new TextStyle(color: Colors.white),),
    onPressed: () {

    }
    ),SizedBox(height: 25.0,),
    new RaisedButton(
        elevation: 1.0,
        padding: EdgeInsets.symmetric(horizontal: 75.0),
        color: Colors.redAccent[700],
        child: new Text("Find a learner",style: new TextStyle(color: Colors.white),),
        onPressed: () {

        }
    ),
    ],
      ),
    )


  ],
),

      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
          elevation: 5.0,
          child: Icon(Icons.add,color: Colors.red,size: 25.0,)),
    bottomNavigationBar: BottomNavigationBar(
items: [
  new BottomNavigationBarItem(icon: Icon(Icons.message),title: new Text("Teacher")),
  new BottomNavigationBarItem(icon: Icon(Icons.chat_bubble ,color: Colors.red,),title: new Text("student",style:  new TextStyle(color: Colors.red,)))
],
    ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );


  }
}
