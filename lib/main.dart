
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: tictecvaluelnoti(),
  ));
}

class tictecvaluelnoti extends StatelessWidget {


  rgame()
  {
    {
      s1.value="";s2.value="";s3.value="";s4.value="";s5.value="";s6.value="";s7.value="";
      s8.value="";s9.value="";win.value="";turn.value="0";
      t.value=0;a.value=0;b.value=0;
    }

  }


  ValueNotifier<String> s1=ValueNotifier(""),s2=ValueNotifier(""),s3=ValueNotifier(""),s4=ValueNotifier("")
  ,s5=ValueNotifier(""),s6=ValueNotifier(""),s7=ValueNotifier(""),s8=ValueNotifier(""),s9=ValueNotifier(""),
      win=ValueNotifier(""),turn=ValueNotifier("0");
  ValueNotifier<int> t=ValueNotifier(0),a=ValueNotifier(0),b=ValueNotifier(0);

  @override
  Widget build(BuildContext context) {

    winc()
    {
      {
        if ((s1.value == "o" && s2.value == "o" && s3.value == "o") ||
            (s1.value == "o" && s4.value == "o" && s7.value == "o") ||
            (s1.value == "o" && s5.value == "o" && s9.value == "o") ||
            (s2.value == "o" && s5.value == "o" && s8.value == "o") ||
            (s3.value == "o" && s6.value == "o" && s9.value == "o") ||
            (s3.value == "o" && s5.value == "o" && s7.value == "o") ||
            (s4.value == "o" && s5.value == "o" && s6.value == "o") ||
            (s7.value == "o" && s8.value == "o" && s9.value == "o")) {
          win.value = "0 is win";
          showDialog(
              barrierDismissible: false,
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("\" " "win"" \" is Winner!!!"),
                  actions: [
                    FlatButton(
                      child: Text("Play Again"),
                      onPressed: () {
                        rgame();
                        Navigator.of(context).pop();
                      },
                    )
                  ],
                );
              });

        }
        if ((s1.value == "x" && s2.value == "x" && s3.value == "x") ||
            (s1.value == "x" && s4.value == "x" && s7.value == "x") ||
            (s1.value == "x" && s5.value == "x" && s9.value == "x") ||
            (s2.value == "x" && s5.value == "x" && s8.value == "x") ||
            (s3.value == "x" && s6.value == "x" && s9.value == "x") ||
            (s3.value == "x" && s5.value == "x" && s7.value == "x") ||
            (s4.value == "x" && s5.value == "x" && s6.value == "x") ||
            (s7.value == "x" && s8.value == "x" && s9.value == "x")) {
          win.value = "x is win";
          showDialog(
              barrierDismissible: false,
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("\" " "win"" \" is Winner!!!"),
                  actions: [
                    FlatButton(
                      child: Text("Play Again"),
                      onPressed: () {
                        rgame();
                        Navigator.of(context).pop();
                      },
                    )
                  ],
                );
              });
        }
      }
    }
    double width=MediaQuery.of(context).size.width;
    double height=MediaQuery.of(context).size.height;
    double stheight=MediaQuery.of(context).padding.top;
    double btheight=MediaQuery.of(context).padding.bottom;
    double appheight=kToolbarHeight;

    double bodyheight=height-stheight-btheight-appheight;
    return Scaffold(
      appBar: AppBar(title: Text("tictec"),),
      body:
      Column(
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  height: height/5,
                  width: (width-20)/3,
                  color: Colors.yellow,
                  margin: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: ValueListenableBuilder(valueListenable: a, builder: (context, value, child) => Text("${value}",style: TextStyle(fontSize: (width/9)),),),
                ),
                Container(
                  height: height/5,
                  width: (width-20)/3,
                  color: Colors.yellow,
                  margin: EdgeInsets.only(bottom: 5,top: 5),
                  alignment: Alignment.center,
                  child: ValueListenableBuilder(valueListenable: b, builder: (context, value, child) => Text("${value}",style: TextStyle(fontSize: (width/9)),),),
                ),
                Container(
                  height: height/5,
                  width: (width-20)/3,
                  color: Colors.yellow,
                  margin: EdgeInsets.all(5),
                  alignment: Alignment.center,
                  child: ValueListenableBuilder(valueListenable: win, builder: (context, value, child) => Text("  ${value}",style: TextStyle(fontSize: (width/9)),),),
                ),

              ],
            ),
          ),
          Container(
            width: width,
            height: width,
            color: Colors.deepOrangeAccent,
            child: Column(
              children: [

                Row(
                  children: [
                    InkWell(
                        child: Container(
                          width: (width-20)/3,
                          height: (width-20)/3,
                          color: Colors.brown,
                          margin: EdgeInsets.all(5),
                          alignment: Alignment.center,
                          child: ValueListenableBuilder<String>(valueListenable: s1, builder: (context, value, child) => Text(s1.value,style: TextStyle(fontSize: 50),),),
                        ),
                        onTap: (){
                          if(s1.value=="")
                          {
                            if(t.value%2==0){
                              s1.value="o";
                              turn.value="x";
                              a.value++;
                            }
                            else
                            {
                              s1.value="x";
                              b.value++;
                              turn.value="o";
                            }
                            t.value++;
                            winc();
                          }

                        }
                    ),
                    InkWell(
                        child: Container(
                          width: (width-20)/3,
                          height: (width-20)/3,
                          color: Colors.brown,
                          margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                          alignment: Alignment.center,
                          child: ValueListenableBuilder<String>(valueListenable: s2, builder: (context, value, child) => Text(s2.value,style: TextStyle(fontSize: 50)),),
                        ),
                        onTap: (){
                          if(s2.value=="")
                          {
                            if(t.value%2==0){
                              s2.value="o";
                              a.value++;
                              turn.value="x";
                            }
                            else
                            {
                              s2.value="x";
                              b.value++;
                              turn.value="o";
                            }
                            t.value++;
                            winc();

                          }

                        }
                    ),
                    InkWell(
                        child: Container(
                          width: (width-20)/3,
                          height: (width-20)/3,
                          color: Colors.brown,
                          margin: EdgeInsets.all(5),
                          alignment: Alignment.center,
                          child: ValueListenableBuilder<String>(valueListenable: s3, builder: (context, value, child) => Text(s3.value,style: TextStyle(fontSize: 50)),),
                        ),
                        onTap: (){
                          if(s3.value=="")
                          {
                            if(t.value%2==0){
                              s3.value="o";
                              a.value++;
                              turn.value="x";
                            }
                            else
                            {
                              s3.value="x";
                              b.value++;
                              turn.value="o";
                            }
                            t.value++;
                            winc();
                          }
                        }
                    ),
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                        child: Container(
                          width: (width-20)/3,
                          height: (width-20)/3,
                          color: Colors.brown,
                          margin: EdgeInsets.only(left: 5,right: 5),
                          alignment: Alignment.center,
                          child: ValueListenableBuilder<String>(valueListenable: s4, builder: (context, value, child) => Text(s4.value,style: TextStyle(fontSize: 50)),),
                        ),
                        onTap: (){
                          if(s4.value=="")
                          {
                            if(t.value%2==0){
                              s4.value="o";
                              a.value++;
                              turn.value="x";
                            }
                            else
                            {
                              s4.value="x";
                              b.value++;
                              turn.value="o";
                            }
                            t.value++;
                            winc();
                          }


                        }
                    ),
                    InkWell(
                        child: Container(
                          width: (width-20)/3,
                          height: (width-20)/3,
                          color: Colors.brown,
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          alignment: Alignment.center,
                          child: ValueListenableBuilder<String>(valueListenable: s5, builder: (context, value, child) => Text(s5.value,style: TextStyle(fontSize: 50)),),
                        ),
                        onTap: (){
                          if(s5.value=="")
                          {
                            if(t.value%2==0){
                              s5.value="o";
                              a.value++;
                              turn.value="x";
                            }
                            else
                            {
                              s5.value="x";
                              b.value++;
                              turn.value="o";
                            }
                            t.value++;
                            winc();

                          }
                        }
                    ),
                    InkWell(
                        child: Container(
                          width: (width-20)/3,
                          height: (width-20)/3,
                          color: Colors.brown,
                          margin: EdgeInsets.only(right: 5,left: 5),
                          alignment: Alignment.center,
                          child: ValueListenableBuilder<String>(valueListenable: s6, builder: (context, value, child) => Text(s6.value,style: TextStyle(fontSize: 50)),),
                        ),
                        onTap: (){
                          if(s6.value=="")
                          {
                            if(t.value%2==0){
                              s6.value="o";
                              a.value++;
                              turn.value="x";
                            }
                            else
                            {
                              s6.value="x";
                              b.value++;
                              turn.value="o";
                            }
                            t.value++;
                            winc();
                          }
                        }
                    ),
                  ],
                ),
                Row(
                  children: [
                    InkWell(
                        child: Container(
                          width: (width-20)/3,
                          height: (width-20)/3,
                          color: Colors.brown,
                          margin: EdgeInsets.all(5),
                          alignment: Alignment.center,
                          child: ValueListenableBuilder<String>(valueListenable: s7, builder: (context, value, child) => Text(s7.value,style: TextStyle(fontSize: 50)),),
                        ),
                        onTap: (){
                          if(s7.value=="")
                          {
                            if(t.value%2==0){
                              s7.value="o";
                              a.value++;
                              turn.value="x";
                            }
                            else
                            {
                              s7.value="x";
                              b.value++;
                              turn.value="o";
                            }
                            t.value++;
                            winc();

                          }
                        }
                    ),
                    InkWell(
                        child: Container(
                          width: (width-20)/3,
                          height: (width-20)/3,
                          color: Colors.brown,
                          margin: EdgeInsets.fromLTRB(0, 5, 0, 5),
                          alignment: Alignment.center,
                          child: ValueListenableBuilder<String>(valueListenable: s8, builder: (context, value, child) => Text(s8.value,style: TextStyle(fontSize: 50)),),
                        ),
                        onTap: (){
                          if(s8.value=="")
                          {
                            if(t.value%2==0){
                              s8.value="o";
                              a.value++;
                              turn.value="x";
                            }
                            else
                            {
                              s8.value="x";
                              b.value++;
                              turn.value="o";
                            }
                            t.value++;
                            winc();
                          }
                        }
                    ),
                    InkWell(
                        child: Container(
                          width: (width-20)/3,
                          height: (width-20)/3,
                          color: Colors.brown,
                          margin: EdgeInsets.all(5),
                          alignment: Alignment.center,
                          child: ValueListenableBuilder<String>(valueListenable: s9, builder: (context, value, child) => Text(s9.value,style: TextStyle(fontSize: 50)),),
                        ),
                        onTap: (){
                          if(s9.value=="")
                          {
                            if(t.value%2==0){
                              s9.value="o";
                              a.value++;
                              turn.value="x";
                            }
                            else
                            {
                              s9.value="x";
                              b.value++;
                              turn.value="o";
                            }
                            t.value++;
                            winc();

                          }
                        }
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container( child: Row(
            children: [
              Container(
                height: height/8,
                width: (width-15)/2,
                color: Colors.orangeAccent,
                margin: EdgeInsets.all(5),
                alignment: Alignment.center,
                child: ValueListenableBuilder(valueListenable: turn, builder: (context, value, child) => Text("Turn${value}",style: TextStyle(fontSize: (width/9)),),),
              ),
              InkWell(
                child: Container(
                  height: height/8,
                  width: (width-15)/2,
                  color: Colors.orangeAccent,
                  margin: EdgeInsets.only(top: 5,bottom: 5,right: 5),
                  child: Icon(Icons.repeat),
                ),
                onTap: (){
                  rgame();
                },
              )
            ],
          ),)
        ],
      ),
    );
  }
}

