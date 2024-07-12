import 'package:app_flutter/shop.dart';
import 'package:app_flutter/shop_providor.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class HomeShop extends StatefulWidget {
  const HomeShop({super.key});

  @override
  State<HomeShop> createState() => _HomeShopState();
}

class _HomeShopState extends State<HomeShop> {
  final colorblue = Color(0xff7993AE);

  final colorgrey = Color(0xffCFCFCF);
  //for heart
  final colorBlue = Color(0xff7993AE);
  final colorwhite = Colors.white;
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                //title
                child: Text(
                  'Find the home furniture  ',
                  style: TextStyle(fontSize: 30.0, color: Colors.black),
                ),
              ),
              Container(
                //
                child: InkWell(
                  child: Icon(Icons.menu),
                  // onPressed: () {},
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: InkWell(
                  onTap: () {
                    context.read<ShopProvidor>().toggleAll();
                  },
                  child: Selector<ShopProvidor, bool>(
                      selector: (p0, p1) => p1.allSelected,
                      builder: (context, allSelected, _) {
                        return Container(
                          alignment: Alignment.center,
                          child: Text("All"),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: allSelected ? colorgrey : colorblue,
                          ),
                          width: 72,
                          height: 115,
                        );
                      }),

                  ///
                ),
              ),
              Container(
                child: InkWell(
                  onTap: () {
                    context.read<ShopProvidor>().toggleAll();
                  },
                  child: Selector<ShopProvidor, bool>(
                      selector: (p0, p1) => p1.allSelected,
                      builder: (context, allSelected, _) {
                        return Container(
                          alignment: Alignment.center,
                          child: Icon(Icons.chair),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: allSelected ? colorblue : colorgrey,
                          ),
                          width: 70,
                          height: 90,
                        );
                      }),
                ),
              ),
              Container(
                child: InkWell(
                  onTap: () {
                    context.read<ShopProvidor>().toggleAll();
                  },
                  child: Selector<ShopProvidor, bool>(
                      selector: (p0, p1) => p1.allSelected,
                      builder: (context, allSelected, _) {
                        return Container(
                          alignment: Alignment.center,
                          child: Icon(Icons.tv),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: allSelected ? colorblue : colorgrey,
                          ),
                          width: 70,
                          height: 90,
                        );
                      }),
                ),
              ),
              Container(
                child: InkWell(
                  onTap: () {
                    context.read<ShopProvidor>().toggleAll();
                  },
                  child: Selector<ShopProvidor, bool>(
                      selector: (p0, p1) => p1.allSelected,
                      builder: (context, allSelected, _) {
                        return Container(
                          alignment: Alignment.center,
                          child: Icon(Icons.light_outlined),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(13),
                            color: allSelected ? colorblue : colorgrey,
                          ),
                          width: 70,
                          height: 90,
                        );
                      }),
                ),
              ),
            ],
          ),
          Row(
            //sofa and tv
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                //sofa
                width: 160,
                height: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                //sofa
                child: Column(
                  //big col
                  children: [
                    Container(
                      //row ,img,icon
                      child: Row(
                        children: [
                          Container(
                            //img sofa
                            width: 117,
                            height: 117,

                            child: Image(
                              image: AssetImage('assets/sofa.png'),
                            ),
                          ),
                          Container(
                            //icon love
                            width: 43,
                            height: 35,
                            /*
                            InkWell(
                onTap: () {
                  context.read<ShopProvidor>().toggleAll();
                },
                child: Selector<ShopProvidor, bool>(
                    selector: (p0, p1) => p1.allSelected,
                    builder: (context, allSelected, _) {
                      return Container(
                        child: Icon(Icons.favorite),
                         color: allSelected ? colorwhite : colorblue,

                        width: 72,
                        height: 115,
                      );
                    }),

                ///
              ), 
              //////
              child: ElevatedButton(
                              child: Icon(Icons.favorite),
                              style: ElevatedButton.styleFrom(
                                  iconColor:
                                      isPressed ? Colors.blue : Colors.white),
                              onPressed: () {
                                setState(() {
                                  isPressed = !isPressed;
                                });
                              },
                            ),
              */
                            child: InkWell(
                              onTap: () {
                                context.read<ShopProvidor>().toggleAll();
                              },
                              child: Selector<ShopProvidor, bool>(
                                  selector: (p0, p1) => p1.allSelected,
                                  builder: (context, allSelected, _) {
                                    return Container(
                                      child: Icon(Icons.favorite),
                                      color:
                                          allSelected ? colorwhite : colorblue,
                                    );
                                  }),

                              ///
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      //col,text,circles
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            //text

                            child: Text(
                              'Room Sofa',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            //circles
                            child: Row(
                              children: [
                                //Padding(padding: EdgeInsets.only(left: 26)),
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
                        ],
                      ),
                    ),
                    Container(
                      //row,price,icon+plus
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            //price
                            child: Text('¥2500',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            //icon+plus
                            width: 40,
                            height: 40,
                            child: FloatingActionButton(
                              child: Icon(Icons.add),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const myshop()));
                              },
                              backgroundColor: Color(0xff7993AE),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //////////// //TV

              Container(
                //Tv
                width: 160,
                height: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                //TV
                child: Column(
                  //big col
                  children: [
                    Container(
                      //row ,img,icon
                      child: Row(
                        children: [
                          Container(
                            //img TV
                            width: 117,
                            height: 117,
                            child: Image(
                              image: AssetImage('assets/tv.png'),
                            ),
                          ),
                          Container(
                            //icon love
                            width: 43,
                            height: 35,
                            child: ElevatedButton(
                              child: Icon(Icons.favorite),
                              style: ElevatedButton.styleFrom(
                                  iconColor:
                                      isPressed ? Colors.blue : Colors.white),
                              onPressed: () {
                                setState(() {
                                  isPressed = !isPressed;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      //col,text,circles
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            //text

                            child: Text(
                              'Toshiba Tv',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            //circles
                            child: Row(
                              children: [
                                //Padding(padding: EdgeInsets.only(left: 26)),
                                Container(
                                  child: Icon(Icons.circle,
                                      color: Color(0xff414142)),
                                ),
                                Container(
                                  child: Icon(Icons.circle,
                                      color: Color(0xff717172)),
                                ),
                                Container(
                                  child: Icon(Icons.circle,
                                      color: Color(0xff282828)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      //row,price,icon+plus
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            //price
                            child: Text('¥35250',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            //icon+plus
                            width: 40,
                            height: 40,
                            child: FloatingActionButton(
                              child: Icon(Icons.add),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const myshop()));
                              },
                              backgroundColor: Color(0xff7993AE),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Spacer(
            flex: 2,
          ),
          Row(
            //lamp and table
            mainAxisAlignment: MainAxisAlignment.spaceAround,

            children: [
              Container(
                //lamp
                width: 160,
                height: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                //lamp
                child: Column(
                  //big col
                  children: [
                    Container(
                      //row ,img,icon
                      child: Row(
                        children: [
                          Container(
                            //img lamp
                            width: 117,
                            height: 117,
                            child: Image(
                              image: AssetImage('assets/lamp.png'),
                            ),
                          ),

                          Container(
                            width: 43,
                            height: 35,
                            child: ElevatedButton(
                              child: Icon(Icons.favorite),
                              style: ElevatedButton.styleFrom(
                                  iconColor:
                                      isPressed ? Colors.blue : Colors.white),
                              onPressed: () {
                                setState(() {
                                  isPressed = !isPressed;
                                });
                              },
                            ),
                          ),

                          //icon love
                        ],
                      ),
                    ),
                    Container(
                      //col,text,circles
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            //text

                            child: Text(
                              'Table Lamp',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            //circles
                            child: Row(
                              children: [
                                //Padding(padding: EdgeInsets.only(left: 26)),
                                Container(
                                  child: Icon(Icons.circle,
                                      color: Color(0xff323232)),
                                ),
                                Container(
                                  child: Icon(Icons.circle,
                                      color: Color(0xffC9A885)),
                                ),
                                Container(
                                  child: Icon(Icons.circle,
                                      color: Color(0xffA05A3F)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      //row,price,icon+plus

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            //price
                            child: Text('¥550',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            //icon+plus
                            width: 40,
                            height: 40,
                            child: FloatingActionButton(
                              child: Icon(Icons.add),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const myshop()));
                              },
                              backgroundColor: Color(0xff7993AE),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //////////// //table

              Container(
                width: 160,
                height: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Column(
                  //table
                  //big col
                  children: [
                    Container(
                      //row ,img,icon
                      child: Row(
                        children: [
                          Container(
                            //img table

                            width: 117,
                            height: 117,
                            child: Image(
                              image: AssetImage('assets/Tablee.png'),
                            ),
                          ),
                          Container(
                            //icon love
                            width: 43,
                            height: 35,
                            child: ElevatedButton(
                              child: Icon(Icons.favorite),
                              style: ElevatedButton.styleFrom(
                                  iconColor:
                                      isPressed ? Colors.blue : Colors.white),
                              onPressed: () {
                                setState(() {
                                  isPressed = !isPressed;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      //col,text,circles

                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            //text

                            child: Text(
                              'Wood  Table',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            //circles

                            child: Row(
                              children: [
                                //Padding(padding: EdgeInsets.only(left: 26)),
                                Container(
                                  child: Icon(Icons.circle,
                                      color: Color(0xff947146)),
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
                        ],
                      ),
                    ),
                    Container(
                      //row,price,icon+plus
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            //price
                            child: Text('¥905',
                                style: TextStyle(
                                    fontSize: 16.0,
                                    color: Color(0xff000000),
                                    fontWeight: FontWeight.bold)),
                          ),
                          Container(
                            //icon+plus
                            width: 40,
                            height: 40,
                            child: FloatingActionButton(
                              child: Icon(Icons.add),
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => const myshop()));
                              },
                              backgroundColor: Color(0xff7993AE),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
