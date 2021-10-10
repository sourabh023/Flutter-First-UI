import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:new_ui_1/bottomnavigation.dart';
import 'package:new_ui_1/profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: '',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Container(
            margin: EdgeInsets.only(left: 20),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(
                  'assets/Myketower.jpg',
                ),
              ),
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "01300918450",
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ),
                  Text(
                    'Nasir Bin Bohran',
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ],
              ),
              Container(
                child:
                    Icon(Icons.notification_add_outlined, color: Colors.black),
              ),
            ],
          ),
          actions: [
            Container(
              margin: EdgeInsets.only(right: 20),
              child: Icon(Icons.logout_outlined, color: Colors.redAccent),
            ),
          ],
        ),
        body: Container(
          color: Color(0xffF5F7FB),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  margin: EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.blueAccent,
                        Colors.lightBlueAccent,
                      ],
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20 ),
                          child: Container(
                            alignment: Alignment.topCenter,
                            child: Container(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.asset('assets/Myketower.jpg')),
                            ),
                          ),  
                        ),
                        
                        Container(
                          margin: EdgeInsets.only( top: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Nasir Bin Borhan", style: TextStyle( color: Colors.white, fontSize: 18),),
                                  Padding(
                                    padding: const EdgeInsets.only( left: 8),
                                    child: Icon(Icons.person_pin_circle, color: Colors.white, size: 20),
                                  ),
                                ],
                              ),
                              SizedBox( height: 5),
                              Text("01300918450", style: TextStyle( color: Colors.white, fontSize: 13),),
                              SizedBox( height: 5),
                              Row(
                                children: [
                                  Text("Elite Customer", style: TextStyle( color: Colors.white, fontSize: 13)),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8),
                                    child: Icon(Icons.kayaking, color: Colors.white, size: 15),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  children: 
                    [Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5), 
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 60,
                        decoration: BoxDecoration( 
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                        ),
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffF5F7FB),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(Icons.shopping_bag_rounded,
                                color: Colors.blue[300]),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only( left: 18 ),
                              child: Container(
                                child: Text('My Package', style: TextStyle(fontWeight: FontWeight.bold),),
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                    ),
                    Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5, top: 5), 
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration( 
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF5F7FB),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.account_box_rounded,
                          color: Colors.blue[300]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only( left: 18 ),
                        child: TextButton(
                          onPressed: () { 
                            Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyProfile()));
                           },
                          child: Text('Account Details', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black   ),),
                        ),
                      ),
                      
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5, top: 5), 
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration( 
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF5F7FB),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.settings,
                          color: Colors.blue[300]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only( left: 18 ),
                        child: Container(
                          child: Text('Settings', style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ),
                      
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5, top: 5), 
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration( 
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF5F7FB),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.call_missed_outlined,
                          color: Colors.blue[300]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only( left: 18 ),
                        child: Container(
                          child: Text('Missed Call Alert', style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ),
                                          ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5, top: 5), 
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration( 
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF5F7FB),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.tune_rounded,
                          color: Colors.blue[300]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only( left: 18 ),
                        child: Container(
                          child: Text('Welcome Tune', style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ),
                      
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5, top: 5), 
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 60,
                  decoration: BoxDecoration( 
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xffF5F7FB),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.people_alt_sharp,
                          color: Colors.blue[300]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only( left: 18 ),
                        child: Container(
                          child: Text('FnF', style: TextStyle(fontWeight: FontWeight.bold),),
                        ),
                      ),
                      
                    ],
                  ),
                ),
              ),
                  ],
                ),
              ),
              
            ],
          ),
        ),
        bottomNavigationBar: BottomNavBarV2(),
      ),
    );
  }
}
