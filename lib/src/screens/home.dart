import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: size.width,
                height: 250.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.purple[200],
                      Colors.purple,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(17.0, 40.0, 0, 30),
                      child: Row(
                        children: [
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "Topup.in\n\n",
                                    style: TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        "Pay bills and mobile recharge\neasily 24 hours services.",
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      // fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Image.asset("images/illustration.png")
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        width: size.width,
                        height: 25.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            topRight: Radius.circular(25),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 18.0),
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    icon: Icon(Icons.search),
                    hintText: "Search billers or providers",
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 25.0),
              Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text(
                  "Ongoing Promo",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                width: size.width,
                height: 150.0,
                margin: EdgeInsets.all(18.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.purple[300],
                  gradient: LinearGradient(
                    colors: [
                      Colors.purple[200],
                      Colors.purple,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("images/illu.png"),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Topup.in Challange",
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 12),
                            Text(
                              "Get discount from Topup.in with finishing some mission.",
                              style: TextStyle(
                                fontSize: 13.0,
                                // fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomRight,
                              child: RaisedButton(
                                onPressed: () {},
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                ),
                                child: Text("Sure, let's go!"),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8),
              Padding(
                padding: EdgeInsets.only(left: 18.0),
                child: Text(
                  "Featured Services",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CategoryTab(
                            title: "All Services", icon: Icons.category),
                        CategoryTab(
                            title: "Mobile Credit", icon: Icons.phone_android),
                        CategoryTab(
                            title: "Electricity", icon: Icons.query_builder),
                        CategoryTab(title: "Water", icon: Icons.query_builder),
                      ],
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CategoryTab(title: "Internet", icon: Icons.wifi),
                        CategoryTab(title: "Cable TV", icon: Icons.tv),
                        CategoryTab(
                            title: "Installment", icon: Icons.date_range),
                        CategoryTab(title: "Insurance", icon: Icons.link_off),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

class CategoryTab extends StatelessWidget {
  final String title;
  final IconData icon;
  CategoryTab({this.title, this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80.0,
      // color: Colors.red,
      margin: EdgeInsets.symmetric(horizontal: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              color: Colors.purple[50],
            ),
            child: Icon(
              icon,
              color: Colors.purple,
            ),
          ),
          SizedBox(height: 12),
          Text(
            title,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
