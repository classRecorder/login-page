import 'package:flutter/material.dart';
import 'package:flutter/services.dart';




void main() {
  runApp(MaterialApp(
    home: sessionsPage(),
  ));
}

class sessionsPage extends StatefulWidget {
  @override
  State<sessionsPage> createState() => _sessionsPageState();
}

class _sessionsPageState extends State<sessionsPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //        App Bar

    appBar: AppBar(
        title: Text('Sessions'),
        backgroundColor: Colors.grey[800],
      ),
      body: Stack(
          children: [

            //        Course Container

            Positioned(
              top: 0,
              right: 0,
              left: 0,
              bottom: 600,
              child: Container(

                height: 150,
                width: double.infinity,
                alignment: Alignment.center,
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.only(top: 15,right: 20,left: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(32)),
                  color: Colors.grey[400],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.comment_outlined
                        ),
                        Icon(Icons.search
                        ),
                      ],
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text("Name",
                            style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),

              ),
            ),

            //        Sessions Container

            Positioned(
              top: 240,
              right: 0,
              left: 0,
              bottom: 70,

              child: SingleChildScrollView(
                child: Column(
                  children: [
                    for ( int i=1; i<=10 ;i++ )
                      Container(
                        height: 90,
                        width: double.infinity,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(top: 14,right: 20,left: 20,bottom: 22),
                        padding: const EdgeInsets.only(top: 15,right: 20,left: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(32)),
                          color: Colors.grey[400],
                        ),
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 15,right: 10,left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(("Session$i"),
                                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                              Icon(Icons.arrow_forward_ios),
                            ],

                          ),
                        ),

                      ),
                  ],
                ),
              ),),


            //        Bottom navigation bar Container


            Positioned(
              bottom: 0,
              left: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                child: Stack(
                  children: [
                    CustomPaint(
                      size: Size(MediaQuery.of(context).size.width,80),
                      painter: BNBCustomPainter(),
                    ),
                    Center(
                      heightFactor: 0.8,
                      child: FloatingActionButton(onPressed: (){},
                        backgroundColor: Colors.grey[900],
                        child: Icon(Icons.home),),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(onPressed: (){}, icon: Icon(Icons.bookmark),color: Colors.white,),
                          IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_voice),color: Colors.white,),
                          Container(width: MediaQuery.of(context).size.width*0.20,),
                          IconButton(onPressed: (){}, icon: Icon(Icons.notifications),color: Colors.white,),
                          IconButton(onPressed: (){}, icon: Icon(Icons.notes),color: Colors.white,),
                        ],
                      ),
                    )
                  ],
                ),

              ),),
          ]


      ),

    );


  }
}

//        Bottom navigation bar class


class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color=Colors.grey[900]!..style=PaintingStyle.fill;
    Path path=Path()..moveTo(0, 20);
    path.quadraticBezierTo(size.width*0.20, 0,size.width*0.35, 0);
    path.quadraticBezierTo(size.width*0.40, 0,size.width*0.40, 20);
    path.arcToPoint(Offset(size.width*0.60, 20),radius: Radius.circular(10.0),clockwise: false);
    path.quadraticBezierTo(size.width*0.60, 0,size.width*0.65, 0);
    path.quadraticBezierTo(size.width*0.80, 0,size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
