import 'package:basic_package/HomeScreen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height/1.6,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Color(0xFF674AEF),
                borderRadius: BorderRadius.only(bottomRight: Radius.circular(70))
              ),
              child: Center(
                child: Image.asset('assets/images/books.png', scale: 0.8,)
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.666,
                decoration: BoxDecoration(
                  color: Color(0xFF674AEF)
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/2.666,
                padding: EdgeInsets.only(top: 40, bottom: 30),
                decoration: BoxDecoration(
                    color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(70))
                ),
                child: Column(
                  children: [
                    Text('Learning is Everything', style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      wordSpacing: 2
                    ),
                    ),
                    SizedBox(height: 15,),
                    Material(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 60),
                        child: Text(
                          "Learning with pleasure with Dev Nizam, Whenever you're",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black.withOpacity(0.6),
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(height: 60,),
                    Material(
                      color:Color(0xFF674AEF),
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric( vertical: 15, horizontal: 80),
                          child: Container(
                            child: Text(
                              "Get Started", style: TextStyle(
                                color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold
                            ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
