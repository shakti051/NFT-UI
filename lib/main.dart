import 'package:flutter/material.dart';
import 'package:nft_ui/screens/bidding.dart';
import 'package:nft_ui/screens/home_screen.dart';
import 'package:nft_ui/utility/colorResources.dart';
import 'package:percent_indicator/percent_indicator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          //  primarySwatch: Colors.purple,
          ),
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Container(
              margin: EdgeInsets.only(left: 16),
              child: Image(
                image: AssetImage('assets/images/logo.png'),
                width: 70,
              ),
            ),
            backgroundColor: ColorResources.BLUE_DARK_BG,
            bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.white,
              tabs: [
                Text("HOME"),
                Text("REWARDS"),
                Text("EXCHANGE"),
                Text("NFT"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              HomeScreen(),
              Rewards(),
              Icon(Icons.directions_car),
              Icon(Icons.directions_transit),
            ],
          ),
        ),
      ),
    );
  }
}

class Rewards extends StatelessWidget {
  List<String> listOf = [
    "ice creem",
    "cup cake",
    "ice creem",
  ];

  List<String> listImages = [
    "assets/images/ice_creem.png",
    "assets/images/cup_cake.png",
    "assets/images/party_cake.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
              ColorResources.LIGHT_BLUE,
              ColorResources.BLUE_DARK_BG
            ])),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Bidding()),
                    );
                  },
                  child: Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/card_bg.png"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ]),
                      margin: EdgeInsets.all(16),
                      child: Column(
                        children: [
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 8),
                                child: Text(
                                  "Anurag Singh",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontFamily: 'poppins'),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 8),
                                child: Text(
                                  "SEEK COIN",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontFamily: 'poppins'),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 8),
                                child: Text(
                                  "540",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontFamily: 'poppins'),
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 8),
                                child: Icon(
                                  Icons.person,
                                  color: Colors.white,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 8),
                                child: Text(
                                  "726532219",
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontFamily: 'poppins'),
                                ),
                              )
                            ],
                          ),
                          ListTile(
                            leading: Container(
                              width: 70,
                              height: 40,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              child: Row(
                                children: [
                                  Image(
                                    image:
                                        AssetImage("assets/images/v_icon.png"),
                                    width: 24,
                                    height: 24,
                                  ),
                                  Text(
                                    "Basic",
                                    style: TextStyle(
                                        color: ColorResources.BLUE_DARK_BG),
                                  ),
                                ],
                              ),
                            ),
                            title: LinearPercentIndicator(
                              width: MediaQuery.of(context).size.width * .53,
                              animation: true,
                              lineHeight: 10.0,
                              animationDuration: 2000,
                              percent: 0.2,
                              // center: Text("20.0%"),
                              linearStrokeCap: LinearStrokeCap.roundAll,
                              progressColor: Colors.yellowAccent,
                            ),
                            subtitle: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "500/10000 saak",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Flite",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            trailing: Image(
                              image: AssetImage("assets/images/question.png"),
                              width: 24,
                              height: 24,
                            ),
                          ),
                        ],
                      )),
                ),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(16, 16, 4, 16),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            height: 100,
                            child: Stack(
                              children: [
                                Positioned(
                                    left: 8,
                                    bottom: 8,
                                    child: Text(
                                      "Browse All Rewards",
                                      style: TextStyle(
                                          color: ColorResources.BLUE_DARK_BG,
                                          fontSize: 14,
                                          fontFamily: 'poppins'),
                                    )),
                                Positioned(
                                    right: -1,
                                    top: 0,
                                    child: Image(
                                      image: AssetImage(
                                          "assets/images/gift_one.png"),
                                      width: 150,
                                    ))
                              ],
                            ))),
                    Expanded(
                        child: Container(
                            margin: EdgeInsets.fromLTRB(16, 16, 4, 16),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            height: 100,
                            child: Stack(
                              children: [
                                Positioned(
                                    left: 8,
                                    bottom: 8,
                                    child: Text(
                                      "How to get saak coin",
                                      style: TextStyle(
                                          color: ColorResources.BLUE_DARK_BG,
                                          fontSize: 14,
                                          fontFamily: 'poppins'),
                                    )),
                                Positioned(
                                    right: -1,
                                    top: 0,
                                    child: Image(
                                      image: AssetImage(
                                          "assets/images/gift_two.png"),
                                      width: 150,
                                    ))
                              ],
                            ))),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  child: Text(
                    "Popular Rewards",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: 'poppins'),
                  ),
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Text(
                      "products",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'poppins'),
                    )),
                Container(
                  height: 210,
                  margin: EdgeInsets.symmetric(horizontal: 16),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(
                        parent: AlwaysScrollableScrollPhysics()),
                    itemBuilder: (_, int index) => listDataItems(
                        this.listOf[index], this.listImages[index]),
                    itemCount: this.listOf.length,
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 8),
                  height: 35,
                  decoration: BoxDecoration(
                      border:
                          Border.all(width: 1.0, color: ColorResources.VOILET),
                      borderRadius: BorderRadius.all(Radius.circular(10.0) //
                          )),
                  child: Text(
                    "Lihat semua produk",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(color: ColorResources.VOILET, fontSize: 16),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class listDataItems extends StatelessWidget {
  String itemName, itemImage;
  listDataItems(this.itemName, this.itemImage);
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 16),
            child: Image(
              image: AssetImage(itemImage),
              width: 150,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 8, top: 8, bottom: 8),
            child: Text(
              itemName,
              style: TextStyle(fontSize: 14, color: ColorResources.VOILET),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 8),
            child: Text(
              "1 silky desert",
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 8),
                child: Text(
                  "600",
                  style: TextStyle(fontSize: 14, color: Colors.black),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 8),
                child: Text(
                  "saak coin",
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
              ),
            ],
          ),
        ]);
  }
}
