import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double WIDTH = MediaQuery.of(context).size.width;
    return Scaffold(
      body:Stack(children: [
        Container( 
        height: 230,
           child: CustomPaint(
    size: Size(WIDTH, (WIDTH*0.3924030049757716).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
    painter: RPSCustomPainter2(color: Color.fromARGB(255, 255, 216, 158)),
)
        ),
        Container( 
        height: 220,
           child: CustomPaint(
    size: Size(WIDTH, (WIDTH*0.3924030049757716).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
    painter: RPSCustomPainter2(color: Color.fromARGB(255, 249, 192, 107)),
)
        ),
        Container( 
        height: 200,
           child: CustomPaint(
    size: Size(WIDTH, (WIDTH*0.3924030049757716).toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
    painter: RPSCustomPainter2(color: Colors.orange),
)
        ),
      ],)
    
    );
  }
}

class WaveClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    
      var path =  Path();
      path.lineTo(0, size.height); //start path with this if you are making at bottom
      
      var firstStart = Offset(size.width / 5, size.height); 
      //fist point of quadratic bezier curve
      var firstEnd = Offset(size.width / 2.25, size.height - 50.0);
      //second point of quadratic bezier curve
      path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

      var secondStart = Offset(size.width - (size.width / 3.24), size.height - 105); 
      //third point of quadratic bezier curve
      var secondEnd = Offset(size.width, size.height - 10);
      //fourth point of quadratic bezier curve
      path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

      path.lineTo(size.width, 0); //end with this path if you are making wave at bottom
      path.close();
      return path; 
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
     return false; //if new instance have different instance than old instance 
     //then you must return true;
  }
}
class WaveClipper2 extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    
      var path =  Path();
      path.lineTo(0, size.height-320);
      path.quadraticBezierTo(size.width/3.58, size.height/3.8, size.width/2, size.height-130);
      path.quadraticBezierTo(size.width -(size.width/3), size.height, size.width, size.height);


      path.lineTo(size.height, 0);
      path.close();
      return path; 
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
     return false; //if new instance have different instance than old instance 
     //then you must return true;
  }
}

class RPSCustomPainter extends CustomPainter{
  
  @override
  void paint(Canvas canvas, Size size) {
    
    

  // Layer 1
  
  Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
     
         
    Path path_0 = Path();
    path_0.moveTo(size.width*0.0008333,size.height*0.1700000);
    path_0.lineTo(size.width,size.height*0.5816667);
    path_0.lineTo(size.width*0.4996333,size.height*0.2530000);
    path_0.lineTo(size.width*0.3853833,size.height*0.5262333);
    path_0.lineTo(size.width*0.0008333,size.height*0.1700000);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);
  

  // Layer 1
  
  Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width*0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;
     
         
    
    canvas.drawPath(path_0, paint_stroke_0);
  
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}

class RPSCustomPainter2 extends CustomPainter {
   final Color color;
const  RPSCustomPainter2({Key? key, required this.color});
    @override
    void paint(Canvas canvas, Size size) {
            
Path path_0 = Path();
    path_0.moveTo(size.width*-0.0009756415,size.height*0.3933366);
    path_0.cubicTo(size.width*-0.0009756415,size.height*0.3933366,size.width*0.1081986,size.height*0.2612299,size.width*0.1912583,size.height*0.3933366);
    path_0.cubicTo(size.width*0.1912583,size.height*0.3933366,size.width*0.5300335,size.height*1.259572,size.width,size.height*0.9218465);
    path_0.lineTo(size.width*0.9990244,size.height*-0.002486325);
    path_0.lineTo(size.width*-0.0009756415,size.height*-0.002486325);
    path_0.lineTo(size.width*-0.0009756415,size.height*0.3933366);
    path_0.close();

Paint paint_0_fill = Paint()..style=PaintingStyle.fill;
paint_0_fill.color = color;
canvas.drawPath(path_0,paint_0_fill);

}

@override
bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
}
}


