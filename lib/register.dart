import 'package:flutter/material.dart';
import 'package:quee/Accounting-Dept.dart';
import 'package:quee/Registrar-Dept.dart';


class Quee extends StatelessWidget {
  const Quee({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("PhilCST Queuing Transactions"),
          backgroundColor: Colors.purple,
        ),
        body: Container(
          decoration: BoxDecoration(
              gradient: new LinearGradient(
                  colors: [Colors.lightBlueAccent, Colors.lightBlue])),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Stack(children: [
              Container(
                height: 15,
              ),
              Container(
                margin: EdgeInsets.only(top:50),
                height: 850,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/unnamed.png'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),

                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 300,
                      ),
                      Center(
                        child: Container(
                          height: 1,
                          width: 0.8,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 80,
                      ),

                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const AccountingDept()),
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
                                Colors.blueAccent,
                                Colors.blue
                              ])),
                          child: Text('Get Que Number',
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
            ]),
          ),
        ),
      ),

    );
  }

}
