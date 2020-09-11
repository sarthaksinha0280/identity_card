import 'package:flutter/material.dart';

void main()=>runApp(
    MaterialApp(
      home:NinjaCard(),

    ));


class NinjaCard extends StatefulWidget {
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  int level=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],

      appBar: AppBar(
        title: Text('Identy card'),
        centerTitle: true,
        backgroundColor: Colors.black38,
      ),

      body: Padding(
        padding:EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/sarthak.jpg'),
                radius: 60.0,
              ),
            ),
            /*SizedBox(
                 height:50
             ),*/
            Divider(
              height: 60.0,
              color: Colors.black,
            ),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.red[200],
                letterSpacing:2.0,
              ),
            ),
            SizedBox(
                height:15
            ),
            Text(
              'Sarthak sinha',
              style: TextStyle(
                color: Colors.yellow,
                letterSpacing:2.0,
                fontSize:28.0,
              ),
            ),
            SizedBox(
                height:28
            ),

            Text(
              'Count',
              style: TextStyle(
                color: Colors.red[200],
                letterSpacing:2.0,
              ),
            ),
            SizedBox(
                height:15
            ),
            Text(
              '$level',
              style: TextStyle(
                color: Colors.yellow,
                letterSpacing:2.0,
                fontSize:28.0,
              ),
            ),
            SizedBox(
                height:30
            ),
            Text(
              'Email',
              style: TextStyle(
                color: Colors.red[200],
                letterSpacing:2.0,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.red,
                  size: 36.0,
                ),
                SizedBox(
                  width:25.0 ,
                ),
                Text(
                  'sarthaksinha02580@gmail.com',
                  style:TextStyle(
                    fontSize:20.0,
                    color: Colors.yellow,

                  ),
                ),
              ],
            )

          ],
        ),

      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed:(){
          setState(() {
            level += 1;
          });
        },
        backgroundColor:Colors.black,
      ),




    );
  }
}


