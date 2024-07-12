import 'package:app_flutter/home_shop.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';


class myshop extends StatefulWidget {
  const myshop({super.key});

  @override
  State<myshop> createState() => _myshopState();
}

class _myshopState extends State<myshop> {
  int _counter = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  // static const screenRoute='/shop-detail';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            //for firsy row
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              //verticalDirection: VerticalDirection.up,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  iconSize: 40,
                  color: Colors.black,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const HomeShop(),
                      ),
                    );
                  },
                ),
                /*
                
                ///
                Container(
                  // padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  child: InkWell(
                    child: Icon(Icons.arrow_back_outlined),
                    // onPressed: () {},
                  ),

                  alignment: Alignment.topLeft,
                ),*/
                Container(
                  child: Image(image: AssetImage('assets/sofa.png')),
                  padding: EdgeInsets.only(top: 51),
                  //margin,width,height
                  width: 287,
                  height: 303,
                ),
                /* child: FloatingActionButton(
                    child: Icon(Icons.favorite_outline_rounded, size: 24),
                    onPressed: () {},
                  ),*/
                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    child: Icon(Icons.favorite_outline_rounded, size: 24),
                    //onPressed: () {},
                  ),
                )
              ],
            ),
          ),
          //Spacer(flex: 2),
          Container(
            //for sec row

            child: Expanded(
              child: Row(
                children: [
                  Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        //Padding(padding: EdgeInsets.symmetric(vertical: ,)),

                        Container(
                          //TEXT
                          padding: EdgeInsets.only(left: 24),
                          child: FittedBox(
                            fit: BoxFit.contain,
                            child: Text(
                              'Room Sofa',
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        //CIRCLS
                        Container(
                          child: Expanded(
                            child: Row(
                              children: [
                                Padding(padding: EdgeInsets.only(left: 26)),
                                Container(
                                  child: Icon(Icons.circle,
                                      color: Color(0xff7993AE)),
                                ),
                                Container(
                                  child: Icon(Icons.circle,
                                      color: Color(0xffC9A885)),
                                ),
                                Container(
                                  child: Icon(Icons.circle,
                                      color: Color(0xff282828)),
                                ),
                              ],
                            ),
                          ),
                        ), ///////
                      ],
                    ),
                  ),
                  Spacer(flex: 10),
                  Container(
                    child: FloatingActionButton(
                      onPressed: _decrementCounter,
                      tooltip: 'Increment',
                      child: const Icon(Icons.add),
                    ),
                  ),
                  Container(
                    child: Text(
                      '$_counter',
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    //width: 15,
                    //height: ,
                    child: FloatingActionButton(
                      onPressed: _incrementCounter,
                      tooltip: 'Decrement',
                      child: const Icon(Icons.minimize),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Text(
                'Drawing Room Wooden Sofa Set is solid wooden sofa set which you can contrast the cushion of any color. The good sight caused ue to the furniture help us relax for a longer time. ',
                style: TextStyle(
                    fontSize: 14.0,
                    color: Color(0xff000000),
                    fontWeight: FontWeight.bold)),
            padding: EdgeInsets.only(left: 25),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 26),
                  child: Text('¥2500',
                      style: TextStyle(
                          fontSize: 24.0,
                          color: Color(0xff000000),
                          fontWeight: FontWeight.bold)),
                ),
                Spacer(),
                Container(
                  /* 
                
              child: FloatingActionButton(  
                child: Text('Add to cart', style: TextStyle(fontSize: 16.0,color: Colors.white),),  
                onPressed: () {},  
                backgroundColor: Color(0xff7993AE),
              ),  */
                  margin: EdgeInsets.all(25),
                  child: SizedBox(
                    width: 160.0,
                    height: 55.0,
                    child: FloatingActionButton(
                      child: Text(
                        'Add to cart',
                        style: TextStyle(fontSize: 16.0, color: Colors.white),
                      ),
                      onPressed: () {},
                      backgroundColor: Color(0xff7993AE),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ///////////
        ],
      ),
    );
  }
}
//https://www.udemy.com/course/learn-flutter-dart-to-build-ios-android-apps/?couponCode=LETSLEARNNOWPP