import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
static final String id = 'home_page';
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        child: Column(
          children: [
            // #header
            Container(
              height: 270,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/ic_header.jpg"),
                  fit: BoxFit.fill
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(.8),
                      Colors.black.withOpacity(.4),
                    ]
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Best Hotels Ever", style: TextStyle(color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 30,),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white,
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search,color: Colors.grey,),
                          hintText: "Searching for hotels...",
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 18)
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                  ],
                ),
              ),
            ),
            //#body
            Container(
              padding: EdgeInsets.all(25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Business Hotels", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                 SizedBox(height: 15,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 200 ,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                      makeItem(img: "assets/images/ic_hotel1.jpg", text: "Hotel 1"),
                      makeItem(img: "assets/images/ic_hotel2.jpg", text: "Hotel 2"),
                      makeItem(img: "assets/images/ic_hotel3.jpg", text: "Hotel 3"),
                      makeItem(img: "assets/images/ic_hotel4.jpg", text: "Hotel 4"),
                      makeItem(img: "assets/images/ic_hotel5.jpg", text: "Hotel 5"),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,),
                  Text("Airport Hotels", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                  SizedBox(height: 15,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 200 ,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(img: "assets/images/ic_hotel3.jpg", text: "Hotel 1"),
                        makeItem(img: "assets/images/ic_hotel2.jpg", text: "Hotel 2"),
                        makeItem(img: "assets/images/ic_hotel1.jpg", text: "Hotel 3"),
                        makeItem(img: "assets/images/ic_hotel4.jpg", text: "Hotel 4"),
                        makeItem(img: "assets/images/ic_hotel5.jpg", text: "Hotel 5"),
                      ],
                    ),
                  ),
                  SizedBox(height: 25,),
                  Text("Resort Hotels", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),),
                  SizedBox(height: 15,),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 200 ,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        makeItem(img: "assets/images/ic_hotel5.jpg", text: "Hotel 1"),
                        makeItem(img: "assets/images/ic_hotel4.jpg", text: "Hotel 2"),
                        makeItem(img: "assets/images/ic_hotel3.jpg", text: "Hotel 3"),
                        makeItem(img: "assets/images/ic_hotel2.jpg", text: "Hotel 4"),
                        makeItem(img: "assets/images/ic_hotel1.jpg", text: "Hotel 5"),
                      ],
                    ),
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
   Widget makeItem({img, text}){
    return AspectRatio(
      aspectRatio: 1.1/1,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(img),
            fit: BoxFit.cover
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(.7),
                Colors.black.withOpacity(.2),
              ]
            )
          ),
          child: Container(
            padding: EdgeInsets.only(bottom: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 15,),
                Text(text, style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(width: 65,),
                Icon(Icons.favorite, color: Colors.red,)
              ],
            ),
          ),
        ),
      ),
    );
   }
}
