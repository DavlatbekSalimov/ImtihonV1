import 'package:flutter/material.dart';

class SubmitPage extends StatefulWidget {
  const SubmitPage({super.key});

  @override
  State<SubmitPage> createState() => _SubmitPageState();
}

class _SubmitPageState extends State<SubmitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Submit Reviev",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
                child: ListTile(
                  leading: Image.asset(
                    "assets/images/kiyim.png",
                    height: 100,
                  ),
                  title: Text(
                    "Woimen's Yellow SleeVeiess Dress",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(" Xarid Qilish narxi: \n \$40.00"),
                  trailing: SizedBox(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text("Save"),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 120),
                child: Text("Give overall rating"),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 40,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 40,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 40,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 40,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 40,
                  ),
                ],
              ),
              Text("Add details Rewiew"),
              Container(
                height: 200,
                color: Colors.black12,
                child: SizedBox(
                  width: double.infinity,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Type Herro",
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
              ),
              SizedBox(
                height: 80,
              ),
              Text(
                "Add Photo",
                style: TextStyle(),
              ),
              Center(
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: TextButton.icon(
                    style:
                        TextButton.styleFrom(backgroundColor: Colors.black26),
                    onPressed: () {},
                    icon: Icon(Icons.camera_alt),
                    label: Text("Upload Photo"),
                  ),
                ),
              ),
              SizedBox(
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 180,
                    height: 60,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text(
                        "Cancel",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Colors.red, width: 2),
                        // backgroundColor: Colors.indigo,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(50),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    width: 180,
                    height: 60,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text(
                        "Sumbit",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.circular(50),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
