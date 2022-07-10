import 'package:flutter/material.dart';


class CardPage extends StatefulWidget {
  @override
  _CardPageState createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  String x="\$ 245.50";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
          ),
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _getWhiteCard(),
            _Thailand(),
              SizedBox(
              height: 5,
            ),
              Container(
                margin: EdgeInsets.only(left: 30),
                child: Text(
                  "Flight Details",
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Roboto",
                      color: Colors.black),
                ),
              ),
              SizedBox(
              height: 5,
            ),

            //Details widget
            _flightDetails(),

            SizedBox(
              height: 5,
            ),

            Container(
              margin: EdgeInsets.only(left:30),
                child: Text(
                  "Tour Cost",
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Roboto",
                      color: Colors.black),
                ),
              ),

                 SizedBox(
              height: 5,
            ),
            
            // Tour Cost

            _tourCost(),
              SizedBox(
              height: 5,
            ),
            
            Container(
             margin: EdgeInsets.only(left: 30,top: 5,right: 30,bottom: 5),
              height:50,
              width:450,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
              ),
              child: ElevatedButton(
                onPressed: (){}, child:Text("Book Tour"),
                style:ElevatedButton.styleFrom(
                  primary:Color(0xff029460),
                  
                )
              ),
            ),
          ],
        ),
      );
      // This trailing comma makes auto-formatting nicer for build methods.
  }

  Widget _getWhiteCard() {
    return Container(
      padding: EdgeInsets.all(32),
      margin: EdgeInsets.only(left: 30,right: 30,top: 8,bottom: 8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color:Color(0xff029460),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 4,
                offset: Offset(0, 1))
          ]),
      //width: MediaQuery.of(context).size.width * .9,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("VISA",style: TextStyle(
                fontSize:20,color: Colors.white),),
              Text(
                "...",
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: "Roboto",
                    color: Colors.white),
              )
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "****",
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Roboto",
                    color: Colors.white),
              ),
              Text(
                "****",
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Roboto",
                    color:Colors.white),
              ),
              Text(
                "****",
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Roboto",
                    color: Colors.white),
              ),
              Text(
                "9860",
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Roboto",
                    color: Colors.white),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Uniersal Travel",
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Roboto",
                    color: Colors.white),
              ),
              Text(
                "04/11",
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: "Roboto",
                    color: Colors.white),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Card holder",
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Roboto",
                    color:  Colors.greenAccent[400]),
              ),
              Text(
                "Expiry",
                style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Roboto",
                    color: Colors.greenAccent[400]),
              ),
            ],
          ),            
        ],
      ),

    );
  }

  // ignore: non_constant_identifier_names
  Widget _Thailand(){
   return Container(
      margin: EdgeInsets.only(left: 30,top: 0,right:30,bottom: 0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomLeft: Radius.circular(15),
            ),
            child:Image.asset(
              "assets/images/Nature-Banner2.jpg",
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 100,
            width: 340,
            decoration: BoxDecoration(
              color: Color(0xffeaf5fb),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )
            ),
            //margin: EdgeInsets.all(10),
            padding:EdgeInsets.all(20),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Thailand",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "10 nights for two/all inclusive",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 8),
                  ),
                   SizedBox(
                    height: 6,
                  ),
                  Text(
                  x.toString(),
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 14),
                  ),
                ],),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(bottom: 10, right: 8),
                  padding:EdgeInsets.symmetric(horizontal: 3, vertical: 7),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Color(0xff029460),),
                  child: Column(
                    children: [
                      Text(
                        "4.5",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 13),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.white,
                        size: 15,
                      )
                    ],
                  ),
                ), 

              ],
            ),
          ),
           
        ],
      ),
    );
  }

  Widget _flightDetails(){
    return Container(
      height:80,
      padding: EdgeInsets.all(3),
      margin: EdgeInsets.only(left:30,top: 5,right: 30,bottom: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
         color: Color(0xffeaf5fb),
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Icon(Icons.flight),
              SizedBox(width: 5,),
              Text("  Airlines",
              style: TextStyle(
                fontSize: 20,
                //fontWeight: FontWeight.bold,
              ),),
              SizedBox(
                width: 30,
              ),
              Column(
                children: [
                  Text("Moscow",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text("1:30 PM",
                  style: TextStyle(
                    fontSize: 10,
                  ),
                  ),
                ],
              ),
              SizedBox(width: 10,),
              Icon(Icons.flight_takeoff,color: Colors.green,),
              //iconflight
              SizedBox(width: 10,),
              Column(
                children: [
                  Text("Thailand  ",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text("6:10 PM ",
                  style: TextStyle(
                    fontSize: 10,
                  ),
                  ),
                ],
              )

            ],),
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text("   Date  15.10.2019"),
            Text("seat No. L120   "),
          
          ],)
        ],
      ),
    );
  }

  
  Widget _tourCost(){
    return Container(
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.only(left: 30,right: 30,top: 5,bottom: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Color(0xebebeb),
        border: Border.all(width: 0.1),
      ),
      child: Column(
        children:[
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Tour Price"),
              Text("\$ 200.50"),
              Text("Total      "),
          ],),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("services"),
              Text("         \$ 45.00"),
              Text(
                "\$ 245.50      ",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.green,
                ),
               ),
          ],),
        ),
        ]
        
      ),


    );
  }
}
