import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

 class MyApp extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
    ValueNotifier <String> nome = ValueNotifier('Sergio');
    TextEditingController text = TextEditingController();
     return MaterialApp(
      debugShowCheckedModeBanner: false,
       title: 'Flutter Demo',
       theme: ThemeData(
         primarySwatch: Colors.blue,
       ),
       home: Scaffold(
         body: Center(
          child: Column(children: [
            TextField(autocorrect: true, controller: text,),
            ElevatedButton(onPressed: (){nome.value=text.text;}, child: Text('Rename')),
            ValueListenableBuilder(valueListenable: nome  , builder: (context, value, child) {
              return Text(value);
            },)
          ]),
         )
         )
     );
   }
 }