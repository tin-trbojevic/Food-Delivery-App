import 'package:flutter/material.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCurrentLocation extends StatelessWidget {
  MyCurrentLocation({super.key});

  final textController = TextEditingController();

void openLocationSearchBox(BuildContext context){
  showDialog(
    context: context, 
    builder: (context) => AlertDialog(
      title: const Text("Your Location"),
      content: TextField(
        controller: textController,
        decoration: InputDecoration(hintText: "Enter address..."),
      ),
      actions: [
        MaterialButton(
          onPressed: () {
            Navigator.pop(context);
            textController.clear();
          },
          child: const Text("Cancle"),
          ),

        MaterialButton(
          
          onPressed: () {
            String newAddress = textController.text;
            context.read<Restaurant>().updateDeliveryAddress(newAddress);
            Navigator.pop(context);
            textController.clear();
          },
          child: const Text("Save"),
          ),
      ],
    ),
    );
}

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Deliver now", style: TextStyle(color: Theme.of(context).colorScheme.primary),),
      
      
          GestureDetector(
            onTap: () => openLocationSearchBox(context),
            child: Row(
              children: [
                Consumer<Restaurant>(
                  builder: (context, restaurant, child) => Text(
                    restaurant.deliveryAddress,
                    style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary,
                    fontWeight: FontWeight.bold
                    )
                  )),
            
              Icon(Icons.keyboard_arrow_down_rounded, color: Theme.of(context).colorScheme.inversePrimary),
            ],
            ),
          ),
        ],
      ),
    );
  }
}