import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/models/cart_item.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier{
  final List<Food> _menu = [

    // BURGERI
    Food(
      name: "Classic Cheeseburger", 
      description: "A delicious cheeseburger with a sesame seed bun, juicy beef patty, melted cheddar cheese, fresh lettuce, tomato slices, and pickles", 
      imagePath: "lib/images/burgers/burger_1.png", 
      price: 3.99, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99)
      ]
    ),
    Food(
      name: "Bacon Burger", 
      description: "A gourmet burger with a brioche bun, double beef patties, crispy bacon, Swiss cheese, sautéed mushrooms, caramelized onions, and a special sauce", 
      imagePath: "lib/images/burgers/burger_2.png", 
      price: 4.99, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Mushrooms", price: 1.49),
        Addon(name: "BBQ Sauce", price: 0.99)
      ]
    ),
    Food(
      name: "Classic Burger", 
      description: "A classic burger with a toasted bun, single beef patty, American cheese, fresh lettuce, tomato slices, red onion rings, and ketchup.", 
      imagePath: "lib/images/burgers/burger_3.png", 
      price: 2.99, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99)
      ]
    ),
    Food(
      name: "Jalapeno Chicken Burger", 
      description: "A spicy burger with a jalapeno cheddar bun, grilled chicken patty, pepper jack cheese, fresh lettuce, tomato slices, jalapeno slices, and a spicy mayo sauce.", 
      imagePath: "lib/images/burgers/burger_4.png", 
      price: 4.99, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon(name: "Extra cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.99),
        Addon(name: "Avocado", price: 2.99)
      ]
    ),
    Food(
      name: "Veggie Burger", 
      description: "A veggie burger with a whole grain bun, a black bean patty, fresh spinach leaves, avocado slices, tomato slices, and a dollop of hummus.", 
      imagePath: "lib/images/burgers/burger_5.png", 
      price: 3.99, 
      category: FoodCategory.burgers, 
      availableAddons: [
        Addon(name: "Vegan cheese", price: 1.99),
        Addon(name: "Mushrooms", price: 1.49),
        Addon(name: "Extra Avocado", price: 1.49)
      ]
    ),


    // SIDE
    Food(
      name: "French fries", 
      description: "A serving of crispy golden French fries in a red paper container", 
      imagePath: "lib/images/sides/side_1.png", 
      price: 2.99, 
      category: FoodCategory.sides, 
      availableAddons: [
        Addon(name: "Ketchup", price: 0.99),
        Addon(name: "Mayonnaise", price: 0.99),
        Addon(name: "BBQ Sauce", price: 0.99),
      ]
    ),
    Food(
      name: "Onion rings", 
      description: "A serving of onion rings, golden and crispy", 
      imagePath: "lib/images/sides/side_2.png", 
      price: 2.99, 
      category: FoodCategory.sides, 
      availableAddons: [
        Addon(name: "Ketchup", price: 0.99),
        Addon(name: "Mayonnaise", price: 0.99),
        Addon(name: "BBQ Sauce", price: 0.99),
      ]
    ),
    Food(
      name: "Mozzarella sticks", 
      description: "A serving of mozzarella sticks, golden and crispy", 
      imagePath: "lib/images/sides/side_3.png", 
      price: 2.49, 
      category: FoodCategory.sides, 
      availableAddons: [
        Addon(name: "Ketchup", price: 0.99),
        Addon(name: "Mayonnaise", price: 0.99),
        Addon(name: "BBQ Sauce", price: 0.99),
      ]
    ),
    Food(
      name: "Coleslaw", 
      description: "A serving of coleslaw in a bowl, colorful and fresh with shredded cabbage, carrots, and creamy dressing", 
      imagePath: "lib/images/sides/side_4.png", 
      price: 2.49, 
      category: FoodCategory.sides, 
      availableAddons: [
        Addon(name: "Ketchup", price: 0.99),
        Addon(name: "Mayonnaise", price: 0.99),
        Addon(name: "BBQ Sauce", price: 0.99),
      ]
    ),
    Food(
      name: "Garlic Bread", 
      description: "A serving of garlic bread, golden and crispy with a garlic butter spread", 
      imagePath: "lib/images/sides/side_5.png", 
      price: 2.99, 
      category: FoodCategory.sides, 
      availableAddons: [
        Addon(name: "Ketchup", price: 0.99),
        Addon(name: "Mayonnaise", price: 0.99),
        Addon(name: "BBQ Sauce", price: 0.99),
      ]
    ),

    // DESSERTS
    Food(
      name: "New York Cheesecake", 
      description: "A slice of classic New York cheesecake with a graham cracker crust, topped with fresh strawberries and a drizzle of strawberry sauce", 
      imagePath: "lib/images/desserts/dessert_1.png", 
      price: 2.99, 
      category: FoodCategory.desserts, 
      availableAddons: [
        Addon(name: "Blackberry Sauce", price: 0.99),
        Addon(name: "Cream Cheese Icing", price: 0.99),
        Addon(name: "Chocolate Chips", price: 0.99),
      ]
    ),
    Food(
      name: "Chocolate Mousse", 
      description: "A serving of chocolate mousse in a clear glass, topped with whipped cream and chocolate shavings", 
      imagePath: "lib/images/desserts/dessert_2.png", 
      price: 2.49, 
      category: FoodCategory.desserts, 
      availableAddons: [
        Addon(name: "Blackberry Sauce", price: 0.99),
        Addon(name: "Cream Cheese Icing", price: 0.99),
        Addon(name: "Chocolate Chips", price: 0.99),
      ]
    ),
    Food(
      name: "Apple Pie", 
      description: "A slice of apple pie with a golden, flaky crust and a scoop of vanilla ice cream on top, drizzled with caramel sauce", 
      imagePath: "lib/images/desserts/dessert_3.png", 
      price: 2.49, 
      category: FoodCategory.desserts, 
      availableAddons: [
        Addon(name: "Blackberry Sauce", price: 0.99),
        Addon(name: "Cream Cheese Icing", price: 0.99),
        Addon(name: "Chocolate Chips", price: 0.99),
      ]
    ),
    Food(
      name: "Tiramisu", 
      description: "A serving of tiramisu, with layers of coffee-soaked ladyfingers, mascarpone cheese, and a dusting of cocoa powder", 
      imagePath: "lib/images/desserts/dessert_4.png", 
      price: 2.49, 
      category: FoodCategory.desserts, 
      availableAddons: [
        Addon(name: "Blackberry Sauce", price: 0.99),
        Addon(name: "Cream Cheese Icing", price: 0.99),
        Addon(name: "Chocolate Chips", price: 0.99),
      ]
    ),
    Food(
      name: "Strawberry Cake", 
      description: "A serving of strawberry shortcake with layers of fluffy cake, fresh strawberries, and whipped cream", 
      imagePath: "lib/images/desserts/dessert_5.png", 
      price: 2.49, 
      category: FoodCategory.desserts, 
      availableAddons: [
        Addon(name: "Blackberry Sauce", price: 0.99),
        Addon(name: "Cream Cheese Icing", price: 0.99),
        Addon(name: "Chocolate Chips", price: 0.99),
      ]
    ),

    // SALADS
    Food(
      name: "Garden Salad", 
      description: "A fresh garden salad with mixed greens, cherry tomatoes, cucumber slices, shredded carrots, and red onion rings", 
      imagePath: "lib/images/salads/salad_1.png", 
      price: 3.49, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 1.99),
        Addon(name: "Extra Parmesan", price: 0.99),
        Addon(name: "Feta Cheese", price: 1.49),
      ]
    ),
    Food(
      name: "Cesar Salad", 
      description: "A Caesar salad with crisp romaine lettuce, croutons, shaved Parmesan cheese, and a drizzle of Caesar dressing", 
      imagePath: "lib/images/salads/salad_2.png", 
      price: 3.49, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 1.99),
        Addon(name: "Extra Parmesan", price: 0.99),
        Addon(name: "Feta Cheese", price: 1.49),
      ]
    ),
    Food(
      name: "Greek Salad", 
      description: "A Greek salad with fresh mixed greens, cucumber slices, cherry tomatoes, Kalamata olives, red onion rings, feta cheese, and a sprinkle of oregano", 
      imagePath: "lib/images/salads/salad_3.png", 
      price: 3.49, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 1.99),
        Addon(name: "Extra Parmesan", price: 0.99),
        Addon(name: "Feta Cheese", price: 1.49),
      ]
    ),
    Food(
      name: "Cobb Salad", 
      description: "A Cobb salad with mixed greens, grilled chicken, crispy bacon, hard-boiled eggs, avocado slices, cherry tomatoes, and blue cheese crumbles", 
      imagePath: "lib/images/salads/salad_4.png", 
      price: 3.49, 
      category: FoodCategory.salads, 
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 1.99),
        Addon(name: "Extra Parmesan", price: 0.99),
        Addon(name: "Feta Cheese", price: 1.49),
      ]
    ),


    // DRINKS
    Food(
      name: "Lemonade", 
      description: "A refreshing glass of iced lemonade with slices of lemon and mint leaves", 
      imagePath: "lib/images/drinks/drink_1.png", 
      price: 2.99, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Mint Leaves", price: 0.99),
        Addon(name: "Strawberry Flavour", price: 0.99),
        Addon(name: "Pineapple Flavour", price: 0.99),
      ]
    ),
    Food(
      name: "Ice Coffee", 
      description: "A glass of iced coffee with milk, served with a straw and ice cubes, with a layer of frothy milk on top", 
      imagePath: "lib/images/drinks/drink_2.png", 
      price: 2.99, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Mint Leaves", price: 0.99),
        Addon(name: "Strawberry Flavour", price: 0.99),
        Addon(name: "Pineapple Flavour", price: 0.99),
      ]
    ),
    Food(
      name: "Tropic Smoothie", 
      description: "A tropical smoothie with a blend of mango, pineapple, and banana, served with a slice of pineapple and a straw", 
      imagePath: "lib/images/drinks/drink_3.png", 
      price: 2.99, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Mint Leaves", price: 0.99),
        Addon(name: "Strawberry Flavour", price: 0.99),
        Addon(name: "Pineapple Flavour", price: 0.99),
      ]
    ),
    Food(
      name: "Lime Water", 
      description: "A glass of sparkling water with a slice of lime and mint leaves, served with ice cubes", 
      imagePath: "lib/images/drinks/drink_4.png", 
      price: 2.99, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Mint Leaves", price: 0.99),
        Addon(name: "Strawberry Flavour", price: 0.99),
        Addon(name: "Pineapple Flavour", price: 0.99),
      ]
    ),
    Food(
      name: "Orange Juice", 
      description: "A glass of orange juice, served with a slice of orange on the rim.", 
      imagePath: "lib/images/drinks/drink_5.png", 
      price: 2.99, 
      category: FoodCategory.drinks, 
      availableAddons: [
        Addon(name: "Mint Leaves", price: 0.99),
        Addon(name: "Strawberry Flavour", price: 0.99),
        Addon(name: "Pineapple Flavour", price: 0.99),
      ]
    ),
  ];



  String _deliveryAddress = 'Mirosla Krleze 17';


  // GETTERI
  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  



  void updateDeliveryAddress(String newAddress) {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  String get deliveryAddress => _deliveryAddress;
  //OPERACIJE

  //Kosarica
  final List<CartItem> _cart = [];

  //Dodaj u kosaricu
  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItem? cartItem = _cart.firstWhereOrNull((item) {

      bool isSameFood = item.food == food;

      bool isSameAddons = ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });


    if (cartItem != null) {
      cartItem.quantity++;
    }

    else {
      _cart.add(
        CartItem(food: food, selectedAddons: selectedAddons)
      );
    }
    notifyListeners();
  }


  //Makni iz kosarice
  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if(cartIndex != -1) {
      if(_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      }
      else {
        _cart.removeAt(cartIndex);
      }
    }

    notifyListeners();
  }



  //Ukupna cijena kosarice
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for(Addon addon in cartItem.selectedAddons) {
        itemTotal += addon.price;
      }

      total += itemTotal * cartItem.quantity;
    }

    return total;
  }
  
  
  
  //Ukupan broj proizvoda
  int getTotalItemCount() {
    int totalItemCount = 0;

    for(CartItem cartItem in _cart) {
      totalItemCount += cartItem.quantity;
    }

    return totalItemCount;
  }



  //Ocisti kosaricu
  void clearCart() {
    _cart.clear();
    notifyListeners();
  }





  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.writeln("Here is your receipt.");
    receipt.writeln();

    String formattedDate = DateFormat('dd-MM-yyyy HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("-------------------------");


    for (final cartItem in _cart) {
        receipt.writeln(
          "${cartItem.quantity} x ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)}");

        if(!cartItem.selectedAddons.isEmpty) {
          receipt.writeln("   Add-ons: ${_formatAddons(cartItem.selectedAddons)}");
        }

        receipt.writeln();
    }


    receipt.writeln("-------------------------");
    receipt.writeln();
    receipt.writeln("Total Items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");

    return receipt.toString();
  }

  //Formatiranje double u money
  String _formatPrice(double price) {
    return "\$${price.toStringAsFixed(2)}";
  }


  //Formatiranje liste addona u stringove
  String _formatAddons(List<Addon> addons) {
    return addons.map((addon) => "${addon.name} (${_formatPrice(addon.price)})").join(", ");
  }
}