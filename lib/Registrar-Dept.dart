import 'package:flutter/material.dart';
import 'package:quee/dashboard.dart';

class RegistrarDept extends StatelessWidget {
  const RegistrarDept({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Registrar Transactions"),
          backgroundColor: Colors.purple,
        ),

        body: Container(
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color:Colors.white70),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[

                CircleAvatar(
                  radius: 80.0,
                  backgroundColor: Colors.black,
                  child: CircleAvatar(
                    backgroundImage: AssetImage('images/logo.PNG'),
                    radius: 75,
                  ),
                ),
                Center(
                  child: Container(
                    height: 1,
                    width: 0.8,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Center(
                  child: Container(
                    height: 1,
                    width: 0.8,
                    color: Colors.grey,
                  ),
                ),


                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DashBoard()),
                    );
                  },
                  child: Container(
                    height: 53,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 4,
                              color: Colors.black12.withOpacity(.2),
                              offset: const Offset(2, 2))
                        ],
                        borderRadius: BorderRadius.circular(100)
                            .copyWith(bottomRight: const Radius.circular(0)),
                        gradient: LinearGradient(colors: [
                          Colors.deepPurpleAccent,
                          Colors.purple
                        ])),
                    child: Text('Grades',
                        style: TextStyle(
                            color: Colors.black.withOpacity(.8),
                            fontSize: 25,
                            fontFamily: 'Times New Roman',
                            fontWeight: FontWeight.bold)),
                  ),
                ),

                SizedBox(
                  height: 15,
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DashBoard()),
                    );
                  },
                  child: Container(
                    height: 53,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 4,
                              color: Colors.black12.withOpacity(.2),
                              offset: const Offset(2, 2))
                        ],
                        borderRadius: BorderRadius.circular(100)
                            .copyWith(bottomRight: const Radius.circular(0)),
                        gradient: LinearGradient(colors: [
                          Colors.deepPurpleAccent,
                          Colors.purple
                        ])),
                    child: Text('Permit',
                        style: TextStyle(
                            color: Colors.black.withOpacity(.8),
                            fontSize: 25,
                            fontFamily: 'Times New Roman',
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

}