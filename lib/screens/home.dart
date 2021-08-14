import 'package:flutter/material.dart';
import 'package:magalu/models/description.dart';
import 'package:magalu/models/provide/products.dart';

class Home extends StatefulWidget {
  @override
  createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("assets/images/logo.jpg"),
        title: Text("Ofertas do dia"),
        backgroundColor: Color(0xFF4486FF),
      ),
      
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FittedBox(
            child: Image.asset("assets/images/linha.jpg"),
            fit: BoxFit.fill,
          ),
          Expanded(
            child: ListView.separated(
        
        itemBuilder: builder,
        itemCount: listOfContacts.length,
        separatorBuilder: (_, index) {
          return Divider();
            },
           ),
          ),
        ],
      ),

    );
  }

  Widget builder(BuildContext _, int index) {
    Description _description = listOfContacts.elementAt(index);
    return ListTile(
      trailing: IconButton(
         icon: (_description.isFavorite)?Icon(
                Icons.favorite,
                color: Color(0xFFD41CA6),
              ) : Icon(
                Icons.favorite_outline,
                color: Color(0xFFD41CA6),
              ),
        
        onPressed: () {
          setState(() {
            _description.isFavorite = !_description.isFavorite;
          });
        
        },
      ),
      
      title: Row(
        children: [
          Column(
           children:[ Image.asset(
             _description.photo,
               width: 100,
               height: 100,
               
               ),
              ],
            ),
                    SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(  
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                _description.name,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  
                ),
              ),
              Text(
                _description.text,
                style: TextStyle(
                  fontSize: 12,
                   fontWeight: FontWeight.bold,
                 
                ),
              ),
              Divider(
                color: Colors.white
              ),

              Text(
                _description.valor,
                style: TextStyle(
                  fontSize: 15,
                  color: Color(0xFF3165C8),
                  fontWeight: FontWeight.bold,
                 
                ),
              ),

              Text(
                _description.parcelas,
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFF3165C8),
                 
                ),
              ),
             




              ],
            ),
          ),
        ],
      ),
      
    );
  }
}







      //                     child: Row(
         
      // children:<Widget>[
      //   Expanded(
      //     child: Column(
      //        
      //       children: [
      //                 Image.asset(_description.photo,
      //               width: 100,
      //               height: 100,
      //             ), 

      //              SizedBox(
      //             width: 12,
      //           ),


      //         Text(
      //           _description.name,
      //          style: TextStyle(
      //            fontSize: 18,
      //             fontWeight: FontWeight.bold,
                  
      //          ),
      //          ),
      //        Text(
      //          _description.text,
      //            style: TextStyle(
      //             fontSize: 18,
                  
      //            ),
      //         ),

      //       ],
      //     ), 
          
      //     ),

     
        
        
      // ],
      //       ),
       