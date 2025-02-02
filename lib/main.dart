import 'package:flutter/material.dart';
//import 'package:flutter/cupertino.dart';
void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home : HomeActivity());
  }

}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  Mysnackbar(message,context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content:Text(message))
    );
  }


  MyAlertDialog(context){
    return showDialog(context: context, builder: (BuildContext context){
      return Expanded(
          child: AlertDialog(
            title : Text(" Alert !"),
            content: Text("Do you want to delete"),
            actions: [
              TextButton(onPressed: () {Mysnackbar("Delete Success", context);
              Navigator.of(context).pop();}, child: Text("Yes")),
              TextButton(onPressed: () {Navigator.of(context).pop();}, child: Text("No")),


            ],));
    });

  }
  @override
  Widget build(BuildContext context) {

    ButtonStyle buttonStyle= ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 60),
        padding:EdgeInsets.all(25),
        backgroundColor: Colors.cyanAccent,
        foregroundColor: Colors.white,
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40)))
    );

    var MyItems=[
      {"img":"https://scontent.fjsr13-1.fna.fbcdn.net/v/t39.30808-6/466125960_2020752345026508_9214786340302204417_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeGMeszwOGGsfvWMgQ3A8J69bkNkgIHz0-9uQ2SAgfPT74qaHqukmway9KFhLEapkhaQz6FKwMiuusK-LDp4vgI-&_nc_ohc=-OQ9veC84V4Q7kNvgHLF8-H&_nc_zt=23&_nc_ht=scontent.fjsr13-1.fna&_nc_gid=AxnrsKZMU2qcKCl8K4C6Q20&oh=00_AYCjDVsDgD1YDj65xZ60sRTRh579C8eVX6oqLx3sDUglTA&oe=67A4D5FA","title":"Hosain Ahammed"},
      {"img":"https://scontent.fjsr13-1.fna.fbcdn.net/v/t39.30808-6/466125960_2020752345026508_9214786340302204417_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeGMeszwOGGsfvWMgQ3A8J69bkNkgIHz0-9uQ2SAgfPT74qaHqukmway9KFhLEapkhaQz6FKwMiuusK-LDp4vgI-&_nc_ohc=-OQ9veC84V4Q7kNvgHLF8-H&_nc_zt=23&_nc_ht=scontent.fjsr13-1.fna&_nc_gid=AxnrsKZMU2qcKCl8K4C6Q20&oh=00_AYCjDVsDgD1YDj65xZ60sRTRh579C8eVX6oqLx3sDUglTA&oe=67A4D5FA","title":"Sakib Ahammed"},
      {"img":"https://scontent.fjsr13-1.fna.fbcdn.net/v/t39.30808-6/466125960_2020752345026508_9214786340302204417_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeGMeszwOGGsfvWMgQ3A8J69bkNkgIHz0-9uQ2SAgfPT74qaHqukmway9KFhLEapkhaQz6FKwMiuusK-LDp4vgI-&_nc_ohc=-OQ9veC84V4Q7kNvgHLF8-H&_nc_zt=23&_nc_ht=scontent.fjsr13-1.fna&_nc_gid=AxnrsKZMU2qcKCl8K4C6Q20&oh=00_AYCjDVsDgD1YDj65xZ60sRTRh579C8eVX6oqLx3sDUglTA&oe=67A4D5FA","title":"Sojib Ahammed"},
      {"img":"https://scontent.fjsr13-1.fna.fbcdn.net/v/t39.30808-6/466125960_2020752345026508_9214786340302204417_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeGMeszwOGGsfvWMgQ3A8J69bkNkgIHz0-9uQ2SAgfPT74qaHqukmway9KFhLEapkhaQz6FKwMiuusK-LDp4vgI-&_nc_ohc=-OQ9veC84V4Q7kNvgHLF8-H&_nc_zt=23&_nc_ht=scontent.fjsr13-1.fna&_nc_gid=AxnrsKZMU2qcKCl8K4C6Q20&oh=00_AYCjDVsDgD1YDj65xZ60sRTRh579C8eVX6oqLx3sDUglTA&oe=67A4D5FA","title":"Hasib Ahammed"},
      {"img":"https://scontent.fjsr13-1.fna.fbcdn.net/v/t39.30808-6/466125960_2020752345026508_9214786340302204417_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeGMeszwOGGsfvWMgQ3A8J69bkNkgIHz0-9uQ2SAgfPT74qaHqukmway9KFhLEapkhaQz6FKwMiuusK-LDp4vgI-&_nc_ohc=-OQ9veC84V4Q7kNvgHLF8-H&_nc_zt=23&_nc_ht=scontent.fjsr13-1.fna&_nc_gid=AxnrsKZMU2qcKCl8K4C6Q20&oh=00_AYCjDVsDgD1YDj65xZ60sRTRh579C8eVX6oqLx3sDUglTA&oe=67A4D5FA","title":"Rakib Ahammed"},
      {"img":"https://scontent.fjsr13-1.fna.fbcdn.net/v/t39.30808-6/466125960_2020752345026508_9214786340302204417_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeGMeszwOGGsfvWMgQ3A8J69bkNkgIHz0-9uQ2SAgfPT74qaHqukmway9KFhLEapkhaQz6FKwMiuusK-LDp4vgI-&_nc_ohc=-OQ9veC84V4Q7kNvgHLF8-H&_nc_zt=23&_nc_ht=scontent.fjsr13-1.fna&_nc_gid=AxnrsKZMU2qcKCl8K4C6Q20&oh=00_AYCjDVsDgD1YDj65xZ60sRTRh579C8eVX6oqLx3sDUglTA&oe=67A4D5FA","title":"Rakin Ahammed"},
      {"img":"https://scontent.fjsr13-1.fna.fbcdn.net/v/t39.30808-6/466125960_2020752345026508_9214786340302204417_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeGMeszwOGGsfvWMgQ3A8J69bkNkgIHz0-9uQ2SAgfPT74qaHqukmway9KFhLEapkhaQz6FKwMiuusK-LDp4vgI-&_nc_ohc=-OQ9veC84V4Q7kNvgHLF8-H&_nc_zt=23&_nc_ht=scontent.fjsr13-1.fna&_nc_gid=AxnrsKZMU2qcKCl8K4C6Q20&oh=00_AYCjDVsDgD1YDj65xZ60sRTRh579C8eVX6oqLx3sDUglTA&oe=67A4D5FA","title":"Mostak Ahammed"},
      {"img":"https://scontent.fjsr13-1.fna.fbcdn.net/v/t39.30808-6/466125960_2020752345026508_9214786340302204417_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=6ee11a&_nc_eui2=AeGMeszwOGGsfvWMgQ3A8J69bkNkgIHz0-9uQ2SAgfPT74qaHqukmway9KFhLEapkhaQz6FKwMiuusK-LDp4vgI-&_nc_ohc=-OQ9veC84V4Q7kNvgHLF8-H&_nc_zt=23&_nc_ht=scontent.fjsr13-1.fna&_nc_gid=AxnrsKZMU2qcKCl8K4C6Q20&oh=00_AYCjDVsDgD1YDj65xZ60sRTRh579C8eVX6oqLx3sDUglTA&oe=67A4D5FA","title":"Habib Ahammed"},


    ];
    return Scaffold(
      appBar: AppBar(
        title:Text("My APP Bar......."),
        titleSpacing: 0,
        //centerTitle: true,
        toolbarHeight: 100,
        toolbarOpacity: 1,
        elevation: 6,
        backgroundColor: Colors.cyanAccent,
        actions: [
          IconButton(onPressed: () { Mysnackbar("I am Comments",context);},icon: Icon(Icons.comment)),
          IconButton(onPressed: () { Mysnackbar("I am search",context);},icon: Icon(Icons.search)),
          IconButton(onPressed: () { Mysnackbar("I am settings",context);}, icon: Icon(Icons.settings)),
          IconButton(onPressed: () { Mysnackbar("I am email",context);}, icon: Icon(Icons.email)),
          IconButton(onPressed: () {Mysnackbar("I am contact_emergency",context);}, icon: Icon(Icons.contact_emergency))
        ],

        //body: Text("Hello"),
        //endDrawer:(),
        //drawer: () ,
        // bottomNavigationBar:  (),
        //floatingActionButton: (),
      ),
      /* -----------------------------------------------------------Login page Code Part-------------------------------- */
      /*body:Column(
         mainAxisAlignment: MainAxisAlignment.start,
        children: [
           Padding(padding: EdgeInsets.all(10),child:TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'First Name'),)),
          Padding(padding: EdgeInsets.all(10),child:TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'Last Name'),)),
          Padding(padding: EdgeInsets.all(10),child:TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'Email Adress'),)),
          Padding(padding: EdgeInsets.all(10),child:ElevatedButton(onPressed: () {},style: buttonStyle, child: Text('Submit'),),)
        ],
      )*/

        /* ------------------------------------------Dynamic List view Builder with Gesture Dector  Code Part-------------------------------- */
/*body:ListView.builder(
  itemCount: MyItems.length,
  itemBuilder: (context,index){
    return GestureDetector(
      onTap: (){Mysnackbar(MyItems[index]['title'], context);},
      child: Container(
        margin: EdgeInsets.all(10),
        width: double.infinity,
        height: 220,
        child: Image.network(MyItems[index]['img']!, fit: BoxFit.fill,),

      ),
    );
  },
)*/

        /* ------------------------------------------Grid view Builder with Gesture Dector  Code Part-------------------------------- */
        body:GridView.builder(
            gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 0,
              childAspectRatio: 1.2

            ),
          itemCount: MyItems.length,
          itemBuilder: (context,index){
            return GestureDetector(
              onTap: (){Mysnackbar(MyItems[index]['title'], context);},
              child: Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                height: 220,
                child: Image.network(MyItems[index]['img']!, fit: BoxFit.fill,),

              ),
            );
          },
        )

      );


  }


}