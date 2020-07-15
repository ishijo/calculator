import "package:flutter/material.dart";


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  final TextEditingController t1=new TextEditingController(text: "0");  //HAVE TO DO SOMETHING ABOUT THE STRING DATATYPE THING HERE
  final TextEditingController t2=new TextEditingController(text: "0");

  var n1=0.0,n2=0.0,action=0.0,diff,prod,quot;
  void addSum(){
    setState(() {
      n1=double.parse(t1.text);
      n2=double.parse(t2.text);
      action=n1+n2;
    });
  }

  void subDiff(){
    setState(() {
      n1=double.parse(t1.text);
      n2=double.parse(t2.text);
      action=n1-n2;
    });
  }

  void multProd(){
    setState(() {
      n1=double.parse(t1.text);
      n2=double.parse(t2.text);
      action=n1*n2;
    });
  }

  void divQuot(){
    setState(() {
      n1=double.parse(t1.text);
      n2=double.parse(t2.text);
      action=n1/n2;
    });
  }
  
  void clear(){
    setState(() {
      n1=double.parse(t1.text='0');
      n2=double.parse(t2.text='0');
      n1=0.0;
      n2=0.0;
      action=0.0;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator", style: new TextStyle(
        ),
        textAlign: TextAlign.center,)
      ),
      body: new Container(
        color: Colors.purple[200],
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new TextField(
                keyboardAppearance: Brightness.dark,
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                  hintText: "Enter number 1",
                ),
            controller: t1,
              ),
              new TextField(
                keyboardAppearance: Brightness.dark,
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                  hintText: "Enter number 2",
                ),
                controller: t2,
              ),
              new Padding(padding: const EdgeInsets.only(top: 20.0),
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    minWidth:60,
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new RaisedButton(
                        child: new Text('+', style: new TextStyle(
                          fontSize: 25.0
                        ),),
                        onPressed: addSum,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(
                            color: Colors.black,
                            width: 1
                          )
                        ),
                        color: Colors.amber,
                      ),
                    ),
                  ),
                  ButtonTheme(
                    minWidth:60,
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new RaisedButton(
                        child: new Text('-', style: new TextStyle(
                            fontSize: 35.0
                        ),),
                        onPressed: subDiff,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(
                                color: Colors.black,
                                width: 1
                            )
                        ),
                        color: Colors.amber,
                      ),
                    ),
                  ),
                  ButtonTheme(
                    minWidth:60,
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new RaisedButton(
                        child: new Text('x', style: new TextStyle(
                            fontSize: 25.0
                        ),),
                        onPressed: multProd,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(
                                color: Colors.black,
                                width: 1
                            )
                        ),
                        color: Colors.amber,
                        
                      ),
                    ),
                  ),
                  ButtonTheme(
                    minWidth:60,
                    height: 60,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: new RaisedButton(
                        child: new Text('/', style: new TextStyle(
                            fontSize: 25.0,
                          fontWeight: FontWeight.bold
                        ),),
//                  child: new Text("/", style: new TextStyle(
//                      fontWeight: FontWeight.bold
//                  ),),
                        onPressed: divQuot,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            side: BorderSide(
                                color: Colors.black,
                                width: 1
                            )
                        ),
                        color: Colors.amber,
                      ),
                    ),
                  ),
                ],
              ),
            new Text(
              "Output : $action",
              style: new TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.lime
              ),
            ),
          SizedBox(
            height: 10,
          ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              ButtonTheme(
                minWidth:240,
                height: 60,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new RaisedButton(
                    child: new Text('Clear', style: new TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold
                    ),),

                    onPressed: clear,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(
                            color: Colors.black,
                            width: 1
                        )
                    ),
                    color: Colors.amber[200],
                  ),
                ))
            ],
      )
        ]),
      ),
    ),
    );
  }
}
