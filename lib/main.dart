import 'package:flutter/material.dart';

void main() => runApp(new MyApp(items:List<String>.generate(1000,(index)=>"Item $index")));

class MyApp extends StatelessWidget {
  final List<String> items;


  MyApp({Key key,@required this.items}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:Scaffold(
        appBar: AppBar(title: Text('ListView Vertical'),),
         body:GridView.count(crossAxisCount: 3,
         children: List.generate(100,(index){

           /* return Center(child: Text('Item $index',
           style:Theme.of(context).textTheme.headline,),);*/

           return Container(
             margin: EdgeInsets.symmetric(vertical: 8.0,horizontal: 8.0),
             decoration: BoxDecoration(color: Colors.teal),
             child: Center(
               child: Text('Item $index',
                 style: TextStyle(
                     inherit: true,color: Colors.white70,fontSize: 20.0),
               ),
             ),
           );
         }),
         )),
    );
  }
}
