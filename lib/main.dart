import 'package:flutter/material.dart';
import 'package:lesha/Helper.dart';

void main() 
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget 
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp
    (
      debugShowCheckedModeBanner: false,
      title: 'ВБ АВТОБРОНЬ',
      theme: ThemeData
      (

        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(0, 0, 0, 0)),
        useMaterial3: true,
      ),
      home: Home(),
    );
  }
}

TextStyle st = TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 18, fontWeight: FontWeight.w500);

class Home extends StatelessWidget
{
  @override
  Widget build(BuildContext context) 
  {
    
    return  Scaffold
    (
      appBar: AppBar
      (
        title: Text("Название нашей хуйни"), 
        actions: 
        [
          TextButton
          ( 
            
            style: ButtonStyle
            (
              overlayColor: MaterialStateProperty.all(Colors.transparent)
            ),

            onPressed: (){print("clicked");}, 
            child: Text("О нас", style: st),
          ),
          SizedBox(width: Helper.getWidth(context: context, factor: 0.01),),
          TextButton(
            onPressed: (){print("tram pam pam");}, child: Text("Статистика коэфициентов", style: st),
            style: ButtonStyle
            (
              overlayColor: MaterialStateProperty.all(Colors.transparent)
            ),
          ),
          SizedBox(width: Helper.getWidth(context: context, factor: 0.015),),
        ],
      ),
      body: Center(child: Text("ALLA")),
      backgroundColor:  Color.fromARGB(255, 29, 55, 172),
    );
  }
}