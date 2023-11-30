import 'package:flutter/material.dart';
import 'package:imtihon/SuccessPage/successPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Center(
                child: Text(
                  "Add Card",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 250,
                width: 400,
                child: Image.asset(
                  "assets/images/card.png",
                  fit: BoxFit.fill,
                ),
              ),
              Form(
                // key: globalkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Card Holder Name"),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Card Holder Name",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      validator: (value) {
                        if (value == "") {
                          return "Parolni kiriting";
                        } else if (value != "davlat3126") {
                          return "Parol xato qaytatdan urining";
                        }
                        // paroll = true;
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Card Number"),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "0000 0000 0000",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                      ),
                      validator: (value) {
                        if (value == "") {
                          return "Parolni kiriting";
                        } else if (value != "davlat3126") {
                          return "Parol xato qaytatdan urining";
                        }
                        // paroll = true;
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // keyingi
                    Row(
                      children: [
                        Text("Card Number"),
                        SizedBox(
                          width: 100,
                        ),
                        Text("CVV"),
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 150,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "0000",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                            validator: (value) {
                              if (value == "") {
                                return "Parolni kiriting";
                              } else if (value != "davlat3126") {
                                return "Parol xato qaytatdan urining";
                              }
                              // paroll = true;
                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        SizedBox(
                          width: 150,
                          child: TextFormField(
                            decoration: InputDecoration(
                              hintText: "0000",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50)),
                            ),
                            validator: (value) {
                              if (value == "") {
                                return "Parolni kiriting";
                              } else if (value != "davlat3126") {
                                return "Parol xato qaytatdan urining";
                              }
                              // paroll = true;
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (contex) => SuccessPage()));
                  },
                  child: const Text(
                    "Add Card",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(color: Colors.indigo, width: 2),
                    // backgroundColor: Colors.indigo,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusDirectional.circular(50),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
