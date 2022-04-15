import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:travel33/home.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';



final List<String> imgList = [
  "assets/imag4.jpg",
  "assets/imag2.jpg",
  "assets/imag3.jpg",
];

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

int _page = 0;
GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 2,
        height: 60.0,
        items: <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Color(0xff9677fc),
          ),

          Icon(Icons.list, size: 30),
          //Icon(Icons.add, size: 30, color: Color(0xff9677fc),),
          FloatingActionButton(
            onPressed: () {},
            heroTag: Text("btn1"),
            child: Icon(Icons.add),
            backgroundColor: Color(0xff9677fc),
          ),
          Icon(
            Icons.save,
            size: 30,
          ),
          Icon(Icons.perm_identity, size: 30),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: Colors.white,
        animationCurve: Curves.bounceOut,
        animationDuration: Duration(milliseconds: 100),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      backgroundColor: Color(0xffe8f4f8),
      //backgroundColor: Color(0xfffafcff),
      appBar: AppBar(
        backgroundColor: Color(0xffe8f4f8),
        elevation: 0.0,

        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => HomePage())),
        ),
        // iconTheme: IconThemeData(
        //   color: Colors.white,
        // ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                Text(
                  "Recommandation",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff737491),
                  ),
                )
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 40,
                ),
                Text(
                  "",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w900,
                    color: Color(0xff737491),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 300,
              child: TextField(
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.blueAccent,
                ),
                decoration: InputDecoration(
                  hintText: "Search Destinations",
                  fillColor: Colors.white,
                  filled: false,
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(80),
                    borderSide: BorderSide(color: Colors.blueAccent, width: 50.0),
                  ),
                  suffixIcon: CircleAvatar(
                    radius: 20,
                    backgroundColor: Color(0xff9677fc),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.search),
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            // Row(
            //   children: [
            //     TextField(
            //       decoration: InputDecoration(
            //         prefixIcon: Icon(Icons.done),
            //       ),
            //     ),
            //   ],
            // ),
            SizedBox(
              height: 70,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  " Popular  Now ",
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 20,
                      fontStyle: FontStyle.normal),
                ),
                SizedBox(
                  width: 180,
                ),
                Text(
                  "View All",
                  style: TextStyle(fontSize: 14, color: Color(0xff737491)),
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                child: Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),

                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 220,
                      width: 200,

                      decoration: BoxDecoration(
                        color: Colors.white,

                        borderRadius: BorderRadius.circular(20),



                      ),
                      child: Container(
                        margin: const EdgeInsetsDirectional.only(start: 10, end: 10, top: 10,bottom: 35),


                        decoration: BoxDecoration(
                          color: Color(0xffe8f4f8),
                          image: new DecorationImage(
                            image: AssetImage('assets/imag2.jpg', ),

                            fit: BoxFit.fitWidth,



                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(13.0),
                            topRight: const Radius.circular(13.0),
                            bottomLeft: const Radius.circular(13.0),
                            bottomRight: const Radius.circular(13.0),

                          ),// BorderRadius

                        ),// BoxDecoration
                      ),

                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 220,
                      width: 200,

                      decoration: BoxDecoration(
                        color: Colors.white,

                        borderRadius: BorderRadius.circular(20),



                      ),
                      child: Container(
                        margin: const EdgeInsetsDirectional.only(start: 10, end: 10, top: 10,bottom: 35),


                        decoration: BoxDecoration(
                          color: Color(0xffe8f4f8),
                          image: new DecorationImage(
                            image: AssetImage('assets/imag3.jpg', ),

                            fit: BoxFit.fitWidth,



                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(13.0),
                            topRight: const Radius.circular(13.0),
                            bottomLeft: const Radius.circular(13.0),
                            bottomRight: const Radius.circular(13.0),

                          ),// BorderRadius

                        ),// BoxDecoration
                      ),

                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(

                      decoration: BoxDecoration(
                        color: Colors.white,

                        borderRadius: BorderRadius.circular(20),



                      ),
                      child: Container(
                        height: 220,
                        width: 200,
                        margin: const EdgeInsetsDirectional.only(start: 10, end: 10, top: 10,bottom: 35),


                        decoration: BoxDecoration(
                          color: Color(0xffe8f4f8),
                          image: new DecorationImage(
                            image: AssetImage('assets/imag4.jpg', ),

                            fit: BoxFit.fitWidth,



                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: const Radius.circular(13.0),
                            topRight: const Radius.circular(13.0),
                            bottomLeft: const Radius.circular(13.0),
                            bottomRight: const Radius.circular(13.0),

                          ),// BorderRadius

                        ),// BoxDecoration
                      ),

                    ),


                  ],
                ),
              ),
            ),
            SingleChildScrollView(

              child: Container(
                child: Column(
                  children: [

                    Container(
                      child: Container(

                          child: CarouselSlider(
                            options: CarouselOptions(
                              autoPlay: true,
                              reverse: true,
                              autoPlayAnimationDuration: Duration(seconds: 5),
                            ),
                            items: imgList.map((item) => Container(
                              margin: const EdgeInsetsDirectional.only(start: 10, end: 10, top: 10,bottom: 35),


                              decoration: BoxDecoration(
                                color: Color(0xffe8f4f8),
                                image: new DecorationImage(
                                  image: AssetImage(item, ),

                                  fit: BoxFit.fitWidth,



                                ),
                                borderRadius: BorderRadius.only(
                                  topLeft: const Radius.circular(13.0),
                                  topRight: const Radius.circular(13.0),
                                  bottomLeft: const Radius.circular(13.0),
                                  bottomRight: const Radius.circular(13.0),

                                ),// BorderRadius

                              ),// BoxDecoration
                              height: 30,

                            ),
                            )
                                .toList(),
                          ),
                      ),
                    ),

                    Row(
                      children: [
                        Container(
                          child:
                          Padding(
                            padding: const EdgeInsets.only(left: 30, top:010),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Container(
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        color: Colors.orange
                                    ),
                                    child: FlatButton(onPressed: (){},

                                        child: Text("Ou Aller ?", style: TextStyle(color: Colors.white, fontSize: 17,),)),
                                  ),
                                ),
                              ],

                            ),

                          ),


                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 10, top: 8),
                            child: Container(
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.orange
                              ),
                              child: FlatButton(onPressed: (){}, child: Text("Ou Manger ?",style: TextStyle(color: Colors.white, fontSize: 17),) ,),
                            ),
                          ),

                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8),
                          child: Container(
                            child: Container(
                              height: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: Colors.orange
                              ),
                              child: FlatButton(onPressed: (){}, child: Text("Ou Dormir ?",style: TextStyle(color: Colors.white, fontSize: 17),) ,),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5, top: 14),
                        child: Container(
                          child: Text('Lieux recommandés cette semaine', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                        ),
                      ),
                    ),
                    Container(
                      child:    Padding(
                        padding: const EdgeInsets.only(left: 3, top: 20),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Container(
                            child: Text('Loisirs', style: TextStyle(color: Colors.blueGrey, fontSize: 20, fontWeight: FontWeight.bold),) ,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 100,
                              width: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/images/assinie.jpg'), fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(20),

                              ),


                            ),
                            Container(
                              child:   Container(
                                child: Text('Assinie Beach', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                              ),

                            ),
                            Container(
                              height: 25,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              child: FlatButton(onPressed: (){}, child: Text("plus d'infos"),
                              ),
                            ),
                          ],

                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Column(
                            children: [
                              Container(
                                height: 100,
                                width: 200,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/images/paradisia.jpg'), fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(20),

                                ),


                              ),
                              Container(
                                child:   Container(
                                  child: Text('Paradisia', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                                ),

                              ),
                              Container(
                                height: 25,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                child: FlatButton(onPressed: (){}, child: Text("plus d'infos"),
                                ),
                              ),
                            ],

                          ),
                        ),
                      ],

                    ),
                    Container(
                      child:    Padding(
                        padding: const EdgeInsets.only(left: 3, top: 20),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Container(
                            child: Text('Restaurants', style: TextStyle(color: Colors.blueGrey, fontSize: 20, fontWeight: FontWeight.bold),) ,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 100,
                              width: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/images/le-debarcadere.jpg'), fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(20),

                              ),


                            ),
                            Container(
                              child:   Container(
                                child: Text('Le Debarcadere', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                              ),

                            ),
                            Container(
                              height: 25,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              child: FlatButton(onPressed: (){}, child: Text("plus d'infos"),
                              ),
                            ),
                          ],

                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Column(
                            children: [
                              Container(
                                height: 100,
                                width: 200,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/images/chez-marcene.jpg'), fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(20),

                                ),


                              ),
                              Container(
                                child:   Container(
                                  child: Text('Chez Marcene', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                                ),

                              ),
                              Container(
                                height: 25,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                child: FlatButton(onPressed: (){}, child: Text("plus d'infos"),
                                ),
                              ),
                            ],

                          ),
                        ),
                      ],

                    ),
                    Container(
                      child:    Padding(
                        padding: const EdgeInsets.only(left: 3, top: 20),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Container(
                            child: Text('Touristiques', style: TextStyle(color: Colors.blueGrey, fontSize: 20, fontWeight: FontWeight.bold),) ,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 100,
                              width: 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage('assets/images/Le_musée_des_COMBES1.jpg'), fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(20),

                              ),


                            ),
                            Container(
                              child:   Container(
                                child: Text('Musée COMBES', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                              ),

                            ),
                            Container(
                              height: 25,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(30)
                              ),
                              child: FlatButton(onPressed: (){}, child: Text("plus d'infos"),
                              ),
                            ),
                          ],

                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 30),
                          child: Column(
                            children: [
                              Container(
                                height: 100,
                                width: 200,
                                decoration: BoxDecoration(
                                  image: DecorationImage(image: AssetImage('assets/images/Musée_Assinie1.jpg'), fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(20),

                                ),


                              ),
                              Container(
                                child:   Container(
                                  child: Text('Musée Assinie', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),),
                                ),

                              ),
                              Container(
                                height: 25,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30)
                                ),
                                child: FlatButton(onPressed: (){}, child: Text("plus d'infos"),
                                ),
                              ),
                            ],

                          ),
                        ),
                      ],

                    ),

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
