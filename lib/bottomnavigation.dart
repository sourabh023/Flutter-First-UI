import 'package:flutter/material.dart';
import 'package:new_ui_1/main.dart';
import 'package:new_ui_1/profile.dart';

class BottomNavBarV2 extends StatefulWidget {
  @override
  _BottomNavBarV2State createState() => _BottomNavBarV2State();
}

class _BottomNavBarV2State extends State<BottomNavBarV2> {
  int currentIndex = 0;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      overflow: Overflow.visible,
      children: [
        CustomPaint(
          size: Size(size.width, 80),
          painter: BNBCustomPainter(),
        ),
        Center(
          heightFactor: 0.10,
          child: FloatingActionButton(
              backgroundColor: Colors.blueAccent,
              child: Icon(Icons.shopping_basket),
              elevation: 0.1,
              onPressed: () {}),
        ),
        Container(
          width: size.width,
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.home,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyHomePage(
                                    title: '',
                                  )));
                    },
                    splashColor: Colors.white,
                  ),
                  Text("Home"),
                ],
              ),
              Column(
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.restaurant_menu,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        setBottomBarIndex(1);
                      }),
                  Text("Offers"),
                ],
              ),
              Container(
                width: size.width * 0.20,
              ),
              Column(
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.bookmark,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        setBottomBarIndex(2);
                      }),
                  Text("Explore"),
                ],
              ),
              Column(
                children: [
                  IconButton(
                      icon: Icon(
                        Icons.account_circle_outlined,
                        color: Colors.grey,
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyProfile()));
                      }),
                  Text("Account"),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 0); // Start
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20),
        radius: Radius.circular(50.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
