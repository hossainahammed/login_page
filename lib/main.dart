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
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        shape:RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40)))
    );
    return Scaffold(
      appBar: AppBar(
        title:Text("My APP Bar......."),
        titleSpacing: 0,
        //centerTitle: true,
        toolbarHeight: 100,
        toolbarOpacity: 1,
        elevation: 6,
        backgroundColor: Colors.green,
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
      body:Column(
         mainAxisAlignment: MainAxisAlignment.start,
        children: [
           Padding(padding: EdgeInsets.all(10),child:TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'First Name'),)),
          Padding(padding: EdgeInsets.all(10),child:TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'Last Name'),)),
          Padding(padding: EdgeInsets.all(10),child:TextField(decoration: InputDecoration(border: OutlineInputBorder(),labelText: 'Email Adress'),)),
          Padding(padding: EdgeInsets.all(10),child:ElevatedButton(onPressed: () {}, child: Text('Submit'),style: buttonStyle,),)
        ],
      )



      );


  }


}