import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(left:10.0,top: 40.0),
        alignment: Alignment.center,
        color: Colors.deepPurple,
        child: Column(
          children: <Widget>[
        Row(
        children: <Widget>[
        Expanded(child: Text(
        "spice jet",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 35.0,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w300,
            fontStyle: FontStyle.italic,
            color: Colors.white,
          ),
        )),
    Expanded(child: Text(
    "all the way from lalitpur to kavre",
    textDirection: TextDirection.ltr,
    style: TextStyle(
    decoration: TextDecoration.none,
    fontSize: 20.0,
    fontFamily: 'Raleway',
    fontWeight: FontWeight.w300,
    fontStyle: FontStyle.italic,
    color: Colors.white,
    ),
    )),
    ],
    ),
            Row(
              children: <Widget>[
                Expanded(child: Text(
                  "kathmandu yatayat",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 35.0,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),
                )),
                Expanded(child: Text(
                  "all the way from kathmandu to kritipur",
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 20.0,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w300,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),
                )),
              ],
            ),
           FlightImageAsset(),
            FlightBookButton(),
    ]
    ,
    )
    );

  }
}
class FlightImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/y.jpg');
    Image image = Image(image: assetImage,width: 250.0,height: 250.0,);
    return Container(child: image,);
  }
}

class FlightBookButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
        color:Colors.orange,
        child: Text("Book you vechiles",
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.white,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w700
        ),),
        elevation: 6.0,
        onPressed: () => bookFlight(context)
        ,

      ),
    );
  }
 void bookFlight(BuildContext context){
    var alertDialog = AlertDialog(
      title: Text("Flight have been booked sucessfully"),
      content: Text("Have a pleasent Flight"),
    );
    showDialog(
        context: context,
    builder: (BuildContext context)=> alertDialog);
 }
}