import 'package:flutter/material.dart';
import 'package:nft_ui/screens/home_screen.dart';
import 'package:nft_ui/utility/colorResources.dart';

class Bidding extends StatelessWidget {
  ScrollController _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/bg.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 100,
                    child: Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * .5,
                          child: Image(
                            image: AssetImage('assets/images/space.png'),
                          ),
                        ),
                        Text("Authentic",
                            style:
                                TextStyle(fontSize: 20, fontFamily: 'poppins')),
                        Text("Thanoos",
                            style:
                                TextStyle(fontSize: 20, fontFamily: 'poppins')),
                        SizedBox(height: 16),
                        Row(
                          children: [
                            Text("0.2 ETH",
                                style: TextStyle(
                                    fontSize: 14, fontFamily: 'poppins')),
                            Text(" \$356.34 626 of 1,000",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black54,
                                    fontFamily: 'poppins')),
                          ],
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 350,
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()),
                            );
                          },
                          child: Container(
                              margin: EdgeInsets.only(right: 16, left: 16),
                              padding: EdgeInsets.only(top: 4),
                              width: MediaQuery.of(context).size.width * .40,
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5.0)),
                                  gradient: LinearGradient(
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight,
                                      colors: [
                                        ColorResources.LIGHT_BLUE,
                                        ColorResources.BLUE_DARK_BG
                                      ])),
                              child: Text(
                                "Buy now",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontFamily: 'poppins'),
                              )),
                        ),
                        Container(
                            height: 35,
                            padding: EdgeInsets.only(top: 4),
                            margin: EdgeInsets.only(right: 16),
                            width: MediaQuery.of(context).size.width * .40,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(width: 1.0, color: Colors.black54),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                            ),
                            child: Text(
                              "Bid",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 18,
                                  fontFamily: 'poppins'),
                            )),
                      ],
                    ),
                  ),
                  Positioned(
                      left: 32,
                      top: 400,
                      child: Text(
                        "Bids",
                        style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'poppins',
                            color: Colors.black54),
                      )),
                  Positioned(
                      left: 8,
                      top: 450,
                      child: Container(
                        color: Colors.white,
                        margin: EdgeInsets.only(bottom: 20),
                        height: 340,
                        width: MediaQuery.of(context).size.width - 20,
                        padding: EdgeInsets.only(left: 16, bottom: 8),
                        child: ListView.builder(
                          physics: ClampingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: 8,
                          itemBuilder: (BuildContext context, int index) {
                            return Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              elevation: 7.0,
                              child: Container(
                                  child: ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: Colors.black54,
                                ),
                                title: Text(
                                  ".21 WETExpireed",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 12,
                                      fontFamily: 'poppins'),
                                ),
                                subtitle: Row(
                                  children: [
                                    Text("By"),
                                    Text(
                                      " The Mad Conductor",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontFamily: 'poppins'),
                                    )
                                  ],
                                ),
                              )),
                            );
                            // your class name or return sth
                          },
                        ),
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
