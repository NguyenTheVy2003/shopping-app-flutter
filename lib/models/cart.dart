import 'package:flutter/material.dart';

import 'shoe.dart';

class CartProvider extends ChangeNotifier {
  // list of shoes for sale
  List<Shoe> ShoeShop = [
    Shoe(
        name: "Nike  Af 1 '07",
        price: '2,929,000₫',
        description:
            "Men's Shoes Each Craft come lightly  look with subtle detail.",
        imagePath: 'lib/images/nike1.png'),
    Shoe(
        name: "Nike Af 1 Shadow",
        price: '3,829,000₫',
        description:
            "Women's Shoes Everything you give these sneakers a bold look.",
        imagePath: 'lib/images/nike2.png'),
    Shoe(
        name: "Nike Af Max Dn",
        price: '4,409,000₫',
        description: "Shoes This product  content by weight",
        imagePath: 'lib/images/nike5.png'),
    Shoe(
        name: "Sidewalk Chalk",
        price: '2,929,000₫',
        description: "Basketball Shoes Pastels swirl fun—and get that W.",
        imagePath: 'lib/images/nike3.png'),
    Shoe(
        name: "Air JD Low ",
        price: '3,519,000₫',
        description: "Men's Shoes grounds your look with subtle detail.",
        imagePath: 'lib/images/nike4.png'),
  ];

  // lis of items in user cart
  List<Shoe> userCart = [];
  // get list of shoes for sale

  List<Shoe> getShoeList() {
    return ShoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

// remove item for cart
  void removeItemCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }

  void addItem(item) {}

  void removeItem(item) {}
}
