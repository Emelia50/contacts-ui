// ignore_for_file: file_names


import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
   HomeView({ Key? key }) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
 int _selectedIndex = 0;

 void _isSelected(int index){
   setState(() {
      _selectedIndex = index;
   });
  
 }
 List ViewsList = [

 ];

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
appBar: AppBar(
  title: Text("Contacts", style: Theme.of(context).appBarTheme.titleTextStyle),
  bottom: const PreferredSize(child: TextField(
    decoration: InputDecoration(
     
      hintText: "Search contacts",
      icon: Icon(Icons.search)
    ),
  ) ,

  preferredSize: Size.fromHeight(30),   
  ),

  ),
  bottomNavigationBar: BottomNavigationBar(items: const  [
    BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorites"),
    BottomNavigationBarItem(icon: Icon(Icons.timer), label: "Favorites"),
    BottomNavigationBarItem(icon: Icon(Icons.contacts), label: "Contacts"),
    BottomNavigationBarItem(icon: Icon(Icons.voicemail), label: "Voicemail"),
  ],
 
  selectedIconTheme: Theme.of(context).bottomNavigationBarTheme.selectedIconTheme,

  backgroundColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor,
  currentIndex: _selectedIndex,
  onTap: _isSelected,
  ),

body: ListView.builder(itemBuilder: (context, index){
  return ListTile(
    title: Text("Jonas Wewovi", style: Theme.of(context).textTheme.bodyText1),
    subtitle: Text("+233207885790", style: Theme.of(context).textTheme.bodyText2),
    trailing: IconButton(onPressed: (){
      showModalBottomSheet(context: context, builder: (context)=>Column(
        children: [
          TextButton(onPressed: (){
            
          }, child: Text("Edit"))
        ],
      ),);
    }, icon: Icon(Icons.more_horiz)),
  );
  itemCount: 10;
}),

    );
  }
}