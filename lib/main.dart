import 'package:flutter/material.dart';

void main()
{
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}
class HomeActivity extends StatelessWidget {
  const HomeActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            crossAxisCount: 2,

          children: [
            Item(
                bgColor:Colors.greenAccent,
                text:"Sarwar Ahmad"
            ),
            Item(
                bgColor:Colors.purple,
                text:"Mahdi Hasan"
            ),
            Item(
                bgColor:Colors.pinkAccent,
                text:"Tajwar Elahi"
            ),
            Item(
                bgColor:Colors.green,
                text:"Abir Mahmud"
            ),
            Item(
                bgColor:Colors.redAccent,
                text:"Sami Ahmaed"
            ),
            Item(
                bgColor:Colors.blueAccent,
                text:"Bodrul Alom"
            ),
            Item(
                bgColor:Colors.cyan,
                text:"Mizan Chowdhory"
            ),
            Item(
                bgColor:Colors.grey,
                text:"Rumman Ahmed"
            ),
          ],
        ),
      )
    );
  }
}
//------------------------------------------------
class Item extends StatelessWidget {
  final Color bgColor;
  final String text;

   const Item({Key? key,required this.bgColor,required this.text,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SizedBox(
        height: 200,
        width: 200,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Icon(Icons.person_pin,size: 70,
              color: Colors.white,),
              Text(
                text,
                textAlign: TextAlign.center,
                style:TextStyle(fontSize: 20.0,
                    color: Colors.white,),
              ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ElevatedButton(onPressed: (){},
                child:Text("Click here"),
            style: ElevatedButton.styleFrom(
              elevation: 20,
              shape: StadiumBorder(),
              primary: Colors.red,
                shadowColor: Color.fromARGB(255, 77, 13, 225)
            ),
            ),
          ),
            ],

          ),
        ),
      ),
      //color: Colors.cyan,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(50.0),
      ),
    );
  }
}

