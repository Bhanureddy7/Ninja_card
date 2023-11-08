import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: NinjaCard(),
));

class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int emplsalary=10000;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Employee ID card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
         setState(() {
           emplsalary+=1000;
         });

        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/bhanu.jpg'),
                radius: 50.0,
              ),
            ),
            SizedBox(height: 40.0),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Bhanu Chandar Reddy',
              style: TextStyle(
                color: Colors.green,
                letterSpacing: 2.0,
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 40.0),
            Text(
              'Job Position',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Mobile Developer',
              style: TextStyle(
                color: Colors.yellow,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width: 20.0),
                Text(
                  'bhanureddyy12@gmail.com',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                )
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                Icon(
                  Icons.phone,
                  color: Colors.grey,
                ),
                SizedBox(width: 20.0),
                Text(
                  '9121605519',
                  style: TextStyle(fontSize: 20.0, color: Colors.white),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Text('Employee Salary',
            style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.white),),
            SizedBox(height: 20.0),
            Text(
              '$emplsalary',
              style: TextStyle(fontSize: 20.0, color: Colors.green, fontWeight: FontWeight.bold),
            ),

          ],
        ),
      ),
    );
  }
}
