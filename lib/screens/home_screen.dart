import 'package:flutter/material.dart';
import 'package:nft_ui/utility/colorResources.dart';
import 'package:nft_ui/utility/dimensions.dart';

class HomeScreen extends StatelessWidget {
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

  List<String> listPayiza = [
    "Payiza",
    "Payiza",
    "Payiza",
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
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.search_outlined, color: Colors.white),
                  Container(
                    margin: EdgeInsets.only(
                        left: Dimensions.MARGIN_SIZE_SMALL,
                        right: Dimensions.MARGIN_SIZE_DEFAULT),
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              InkWell(
                  onTap: () {},
                  child: Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/card_bg.png"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: Offset(0, 3),
                            ),
                          ]),
                      margin: EdgeInsets.all(Dimensions.MARGIN_SIZE_DEFAULT),
                      child: Column(children: [
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  left: Dimensions.MARGIN_SIZE_DEFAULT),
                              child: Text(
                                "Anurag Singh",
                                style: TextStyle(
                                    fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                                    color: Colors.white,
                                    fontFamily: 'poppins'),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  left: Dimensions.MARGIN_SIZE_DEFAULT),
                              child: Text(
                                "Wallet",
                                style: TextStyle(
                                    fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                                    color: Colors.white,
                                    fontFamily: 'poppins'),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  right: Dimensions.MARGIN_SIZE_SMALL),
                              child: Image(
                                image: AssetImage('assets/images/wallet.png'),
                                width: 70,
                              ),
                            )
                          ],
                        ),
                        Row(children: [
                          Container(
                            margin: EdgeInsets.only(
                                left: Dimensions.MARGIN_SIZE_SMALL),
                            child: Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(
                                  right: Dimensions.MARGIN_SIZE_SMALL),
                              child: Text("726532219",
                                  style: TextStyle(
                                      fontSize: Dimensions.FONT_SIZE_DEFAULT,
                                      color: Colors.white,
                                      fontFamily: 'poppins')))
                        ])
                      ]))),
              Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: Dimensions.MARGIN_SIZE_DEFAULT,
                      vertical: Dimensions.MARGIN_SIZE_SMALL),
                  child: Text(
                    "Top Earn / Redeem Coupan",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                        fontFamily: 'poppins'),
                  )),
              Container(
                height: 210,
                margin: EdgeInsets.symmetric(
                    horizontal: Dimensions.MARGIN_SIZE_DEFAULT),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  itemBuilder: (_, int index) =>
                      listDataItems(this.listOf[index], this.listImages[index]),
                  itemCount: this.listOf.length,
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: Dimensions.MARGIN_SIZE_DEFAULT,
                      vertical: Dimensions.MARGIN_SIZE_SMALL),
                  child: Text(
                    "Top Digital Assets",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                        fontFamily: 'poppins'),
                  )),
              Container(
                height: 210,
                margin: EdgeInsets.symmetric(
                    horizontal: Dimensions.MARGIN_SIZE_DEFAULT),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  itemBuilder: (_, int index) =>
                      listDataItems(this.listOf[index], this.listImages[index]),
                  itemCount: this.listOf.length,
                ),
              ),
              Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: Dimensions.MARGIN_SIZE_DEFAULT,
                      vertical: Dimensions.MARGIN_SIZE_SMALL),
                  child: Text(
                    "Exchange Prices Rates",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE,
                        fontFamily: 'poppins'),
                  )),
              Container(
                height: 210,
                margin: EdgeInsets.symmetric(
                    horizontal: Dimensions.MARGIN_SIZE_DEFAULT),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  itemBuilder: (_, int index) =>
                      listExchangeRate(this.listPayiza[index]),
                  itemCount: this.listOf.length,
                ),
              ),
            ],
          ),
        )),
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
            margin: EdgeInsets.only(right: Dimensions.MARGIN_SIZE_DEFAULT),
            child: Image(
              image: AssetImage(itemImage),
              width: 150,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                left: Dimensions.MARGIN_SIZE_SMALL,
                top: Dimensions.MARGIN_SIZE_SMALL,
                bottom: Dimensions.MARGIN_SIZE_SMALL),
            child: Text(
              itemName,
              style: TextStyle(
                  fontSize: Dimensions.FONT_SIZE_DEFAULT, color: Colors.white),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: Dimensions.MARGIN_SIZE_SMALL),
            child: Text(
              "1 silky desert",
              style: TextStyle(
                  fontSize: Dimensions.FONT_SIZE_DEFAULT, color: Colors.black),
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: Dimensions.MARGIN_SIZE_SMALL),
                child: Text(
                  "600",
                  style: TextStyle(
                      fontSize: Dimensions.FONT_SIZE_DEFAULT,
                      color: Colors.black),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: Dimensions.MARGIN_SIZE_SMALL),
                child: Text(
                  "saak coin",
                  style: TextStyle(
                      fontSize: Dimensions.FONT_SIZE_DEFAULT,
                      color: Colors.black54),
                ),
              ),
            ],
          ),
        ]);
  }
}

class listExchangeRate extends StatelessWidget {
  String itemRate, itemImage;
  listExchangeRate(this.itemRate);
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
        Widget>[
      Container(
          margin: EdgeInsets.only(right: Dimensions.MARGIN_SIZE_DEFAULT),
          width: 140,
          height: 140,
          decoration: BoxDecoration(
              color: ColorResources.BLUE_DARK_BG,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Container(
                margin: EdgeInsets.only(left: Dimensions.MARGIN_SIZE_DEFAULT),
                child: Text(
                  itemRate,
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE),
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.only(left: Dimensions.MARGIN_SIZE_DEFAULT),
                child: Text(
                  "1 SAAK",
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: Dimensions.FONT_SIZE_DEFAULT),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: Dimensions.MARGIN_SIZE_DEFAULT),
                child: Text(
                  "\$0.02 USD",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: Dimensions.FONT_SIZE_EXTRA_LARGE),
                ),
              ),
            ],
          )),
    ]);
  }
}
