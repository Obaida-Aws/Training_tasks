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
      home:Obaida()
    );}}

    class Obaida extends StatefulWidget {
      const Obaida({super.key});
    
      @override
      State<Obaida> createState() => _ObaidaState();
    }
    
    class _ObaidaState extends State<Obaida> {
      String My_Text = '';
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          appBar: AppBar(title: Text("Obaida"),),
          drawer: Drawer(),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

                       ClipOval(
            child: Image.asset('images/Obaida.jpg', 
              width: 200, 
              height: 200, 
              fit: BoxFit.cover, 
            )),

            Center(
              child:
              

               Text(
              My_Text,
              style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),
            ),),
            Spacer(),
              Center(
                child:   ElevatedButton(
                  
              onPressed: () {
                setState(() {
                  My_Text = 'Obaida aws\nComputer Engineering Student at Al-najah University in my fifth year';
                });
              },
              child: Text('Click',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),
              
              ),
              style: ElevatedButton.styleFrom(
              primary: Colors.green, 
            ),
            ),

            
                
              )
            ],
          )


        );
      }
    }
      