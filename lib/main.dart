
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavBar(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int index=0;
  List page= [
    HomePage(),
    SearchPage(),
    CollectionPage()

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:page[index],
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        backgroundColor:Colors.black,
        onTap: (value){
          setState(() {
            index=value;
          });
        },
        currentIndex: index,
        items:[
                 BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Container(
            width: 22,
            height: 22,
            child:Image.asset("assets/images/coll.png")), label: "Collection"),
        ]
      ),
    );
  }
}




class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title:Text("Selamat siang" ,style:TextStyle(color: Colors.white),),
          actions:[
            IconButton(
              onPressed:()=>Navigator.of(context).push(
                MaterialPageRoute(
                  builder:(context)=> NotificationPage())
              ),
              icon: Icon(Icons.notifications,size:30,))
          ],
          backgroundColor: Colors.black,
    ),
        body:SafeArea(
          child:Padding(
            padding: EdgeInsets.symmetric(horizontal:15),
            child:SingleChildScrollView(
          child:Column(
          children: [
          Row(children: [
            Container(
              width:83,
              height:33,
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(45),
                color: Color(0xff1ED760)
              ) ,
              child:Center(child: Text("Musik")),
              )
          ],),
          SizedBox(height:20),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
             CardFav(judul:"suatu saat",logo:Icons.access_alarm_sharp,warna: Colors.deepPurple,),
             CardFav(judul:"hug me",logo:Icons.accessibility_outlined,warna: Colors.blue,),
                   
          ],
          ),
          SizedBox(height: 10,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          CardFav(judul:"Kul kali coeg",logo:Icons.ac_unit_outlined,warna: Colors.lightBlue,),
          CardFav(judul:"Love",logo:Icons.favorite_border,warna: Colors.pink,),
              ],),
          SizedBox(height:20),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
          CardFav(judul:"Ancinet Music",logo:Icons.account_balance_outlined,warna: Colors.yellow,),
          CardFav(judul:"Angin darat",logo:Icons.air_outlined,warna: Colors.blueGrey,),
              ],),
          SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text("Hit Terpopuler hari ini",style:TextStyle(color:Colors.white,fontSize:30,fontWeight: FontWeight.w500,),) ],),
          SizedBox(height: 20,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(children: [Container(
                              width: 150,
                              height: 150,
                              child: Image.asset("assets/images/ht1.png"),
                            ),
                            Text("Steve Grove",style:TextStyle(color:Colors.grey),)
                            ])
                            ,
                            SizedBox(width: 15), 
                            Column(children: [Container(
                              width: 150,
                              height: 150,
                              child: Image.asset("assets/images/ht1.png"),
                            ),
                            Text("Steve Grove",style:TextStyle(color:Colors.grey),)
                            ])
                           ,
                            SizedBox(width: 15), 
                            Column(children: [Container(
                              width: 150,
                              height: 150,
                              child: Image.asset("assets/images/ht1.png"),
                            ),
                            Text("Steve Grove",style:TextStyle(color:Colors.grey),)
                            ])
                           ,
                            SizedBox(width: 15), 
                            Column(children: [Container(
                              width: 150,
                              height: 150,
                              child: Image.asset("assets/images/ht1.png"),
                            ),
                            Text("Steve Grove",style:TextStyle(color:Colors.grey),)
                            ]),
                          ],
                        )
 ,),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text("Baru diputar",style:TextStyle(color:Colors.white,fontSize:30,fontWeight: FontWeight.w500,),)]
          ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child:Row(
          children: [
          Column(children: [Image.asset("assets/images/bp1.png"),
              Text("Soft and chill",style:TextStyle(color:Colors.white),)    
              ],),
          SizedBox(width:15),
          Column(children: [Image.asset("assets/images/bp1.png"),
              Text("Soft and chill",style:TextStyle(color:Colors.white),)    
              ],),
          SizedBox(width:15),
          Column(children: [Image.asset("assets/images/bp1.png"),
              Text("Soft and chill",style:TextStyle(color:Colors.white),)    
              ],),
          SizedBox(width:15),
          Column(children: [Image.asset("assets/images/bp1.png"),
              Text("Soft and chill",style:TextStyle(color:Colors.white),)    
              ],),
          SizedBox(width:15),
          Column(children: [Image.asset("assets/images/bp1.png"),
              Text("Soft and chill",style:TextStyle(color:Colors.white),)    
              ],),
          SizedBox(width:15),
          Column(children: [Image.asset("assets/images/bp1.png"),
              Text("Soft and chill",style:TextStyle(color:Colors.white),)    
              ],)
        ],),)
        ],),)
          ),
          )
    );
  }
}

//extract widget
class CardFav extends StatelessWidget {
  final String judul;
  final IconData logo;
  final MaterialColor warna;
  const CardFav({
    super.key,
    required this.judul,
    required this.logo,
    required this.warna
  });

  @override
  Widget build(BuildContext context) {
    return Container(
     width: 180,
     height:66,
     decoration:BoxDecoration(
       borderRadius:BorderRadius.circular(5),
       color: Color(0xff3E3F3F)
     ) ,
     child:Row(children: [
      Icon(logo,
           size:60,
           color: warna,
           ),
      Text(judul,style:TextStyle(color:Colors.white),)
    
     ]
     ),
     );
  }
}

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:SafeArea(
        child:Padding(
          padding:EdgeInsets.symmetric(horizontal:15),
          child:SingleChildScrollView(
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height:25,),
                Row(
                children: [Text("Cari",style:TextStyle(color:Colors.white,fontSize:25),)],),
                SizedBox(height: 20,),
                Container(
                  width: 393,
                  height: 46,
                  decoration:BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color:Colors.white
                  ),
                  child:Row(
                    children: [
                      SizedBox(width:10,),
                      Icon(Icons.search,size:30,color: Colors.grey,),
                      SizedBox(width:15,),
                      Text("Apa yang ingin kamu dengarkan?",style:TextStyle(color:Colors.grey,fontWeight: FontWeight.w500,fontSize:18),)
                      ]),
                  ),
                  SizedBox(height:15,),
                  Text("Browse semua",style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      SearchCard(title:"Musik",warna:Colors.pink,),
                      SizedBox(width:5,),
                      SearchCard(title:"Podcast",warna:Colors.green,),
                    ],),
                  SizedBox(height:15,),
                  Row(
                    children: [
                      SearchCard(title:"Rock",warna:Colors.purple,),
                      SizedBox(width:5,),
                      SearchCard(title:"Pop   ",warna:Colors.teal,),
                    ],),
                  SizedBox(height:15,),
                    Row(
                    children: [
                      SearchCard(title:"Indie",warna:Colors.red,),
                      SizedBox(width:5,),
                      SearchCard(title:"K-pop",warna:Colors.deepOrange,),
                    ],),
                  SizedBox(height:15,),
                    Row(
                    children: [
                      SearchCard(title:"Rnb",warna:Colors.indigo,),
                      SizedBox(width:5,),
                      SearchCard(title:"Radio",warna:Colors.deepPurple,),
                    ],),



                ],) ),
          )
      ),
    );
  }
}

//Extract Widget
class SearchCard extends StatelessWidget {
  final String title;
  final MaterialColor warna;

  const SearchCard({
    super.key,
    required this.title,
    required this.warna
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width:185,
          height:109,
          decoration:BoxDecoration(
            borderRadius:BorderRadius.circular(5),
            color: warna,
          ),
          child:Column(
            children: [SizedBox(height:10,),
            Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 15,),
              Text(title,style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold),),
              SizedBox(width:45,),
              Container(
                width:67,
                height:67,
                child:Column(
                  children: [
                    SizedBox(height:10,),
                    Container(
                      width:57,
                      height:57,
                      child:Image.asset("assets/images/album.png"),
                    )
                    ]),
              )
            ],
          ),]
          ,)
        )
      ],);
  }
}

class CollectionPage extends StatelessWidget {
  const CollectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor:Colors.black,
     body:SafeArea(
      child:Padding(
        padding:EdgeInsets.symmetric(horizontal:10),
        child:SingleChildScrollView(
          child:Column(
            children: [SizedBox(height:20),
              Row(
                children: [Icon(Icons.account_circle,color:Colors.blue,size:40,),
                SizedBox(width:15,),
                 Text("Koleksi Kamu",style:TextStyle(color:Colors.white,fontSize:25,fontWeight:FontWeight.bold),),
                 SizedBox(width:90,),
                 Icon(Icons.search,size:40,color:Colors.white,),
                 SizedBox(width:5,),
                 Icon(Icons.add,size:40,color:Colors.white,)
                ],),
              SizedBox(height:20,),
              Row(
                children: [
                  Container(
              width: 83,
              height: 33,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                color: Colors.black,
                border: Border.all(
                  color: Colors.grey, 
                  width: 2, 
                ),
              ),
              child: Center(
                child: Text(
                  "Playlist",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(width:10,),
            Container(
              width: 83,
              height: 33,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                color: Colors.black,
                border: Border.all(
                  color: Colors.grey, 
                  width: 2, 
                ),
              ),
              child: Center(
                child: Text(
                  "Album",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
                ],
              ),
            SizedBox(height:20,),
            Row(
              children: [
                Icon(Icons.arrow_downward,color:Colors.white,size:15,),
                Icon(Icons.arrow_upward,color:Colors.white,size:15,),
                SizedBox(width:10,),
                Text("Paling baru",style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold),),
                SizedBox(width:250,),
                
                Container(
                  width:15,
                  height:15,
                  child:Image.asset("assets/images/appsquare.png"),
                )
              ],),
            SizedBox(height:10,),
            CardCollection(judul:"YORUSHIKA",detail:"Playlist",),
            SizedBox(height: 10,),
            CardCollection(judul:"BLACK PANTHER",detail:"Album",),
            SizedBox(height:10,),
            CardCollection(judul:"TAPIOCA",detail:"Playlist",),
            SizedBox(height:10,),
            CardCollection(judul:"Nine Track",detail:"Album",),
            SizedBox(height:10,),
            CardCollection(judul:"Yello Cars",detail:"Playlist",),
            SizedBox(height: 10,),
            CardCollection(judul:"GG GAMING",detail:"Playlist",)
            ]),
        ),
        ),
     ),
    );
  }
}

//Extract widget
class CardCollection extends StatelessWidget {
  final String judul;
  final String detail;
  const CardCollection({
    super.key,
    required this.judul,
    required this.detail
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
      children: [
        Container(
          width:67,
          height:67,
          child:Image.asset("assets/images/album3.png")
        ),
        SizedBox(width:10,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(judul,style:TextStyle(color:Colors.white),),
            Text(detail,style:TextStyle(color:Colors.grey),)
          ],)
      ],)
      ],);
  }
}

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black, // Set AppBar background color to black
        leading: BackButton(
          color: Colors.white, // Set BackButton color to white
        ),
      ),
      body:SafeArea(
        child:Padding(padding:EdgeInsets.symmetric(horizontal:15),
        child:Column(children: [
          SizedBox(height: 60,),
         Row(children: [
           Text("Yang Baru",style:TextStyle(color:Colors.white,fontSize:30),)
         ],),
         Row(children: [
          Text("Rilis terbaru dari artis,podcast, dan acara yang kamu ikuti.",style:TextStyle(color:Colors.grey),)
         ],),
         SizedBox(height:20),
         Row(
          children: [
          Container(
              width: 83,
              height: 33,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                color: Colors.black,
                border: Border.all(
                  color: Colors.grey, // Set the border color to white
                  width: 2, // Adjust the border width as desired
                ),
              ),
              child: Center(
                child: Text(
                  "Musik",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            SizedBox(width:10,),
              Container(
              width: 140,
              height: 33,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                color: Colors.black,
                border: Border.all(
                  color: Colors.grey, // Set the border color to white
                  width: 2, // Adjust the border width as desired
                ),
              ),
              child: Center(
                child: Text(
                  "Podcast & Acara",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )

         ],),
         SizedBox(height:200,),
         Text("Belum ada info baru untukmu",style:TextStyle(color:Colors.white,fontSize:20),),
         SizedBox(height: 20,),
         Text(
          "Jika ada kabar,kami akan mempostingnya di sini,ikuti artis dan podcast favoritmu agar tidak ketinggalan info tentang mereka",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        )

        ])
        ,)
      )
    );
  }
}

