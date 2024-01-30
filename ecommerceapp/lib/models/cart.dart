import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {

  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Zoom FREAK', 
      price: '236', 
      description: 'The forward-thinking design of his latest signature shoe.', 
      imagePath: 'lib/images/aurora.png'
    ),
    Shoe(
      name: 'Air Jordans', 
      price: '220', 
      description: 'You\'ve got the hops and the speed-lace up in shoes that enhance', 
      imagePath: 'lib/images/basketballshoes.png'
    ),
    Shoe(
      name: 'KD Treys', 
      price: '240', 
      description: 'A secure midfoot strap is suited for scoring bring and defensive', 
      imagePath: 'lib/images/nikezoom.png'
    ),
    Shoe(
      name: 'Kyrie 6', 
      price: '190', 
      description: 'Bouncy cushioning is paired with soft yet supportive foam for rest', 
      imagePath: 'lib/images/pinknike.png'
    ),
  ];



  // list of items in your cart
  List<Shoe> userCart = [];

  // get list of shows for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemCart(Shoe shoe){
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}