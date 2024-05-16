import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/shoe_tile.dart';
import '../models/cart.dart';
import '../models/shoe.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ListenableProvider<CartProvider>(
          create: (context) => CartProvider(),
          // child: ShopPage(),
        ),
      ],
      child: Consumer<CartProvider>(builder: (context, cart, child) {
        return Column(
          children: [
            // search bar
            Container(
              padding: const EdgeInsets.all(12),
              margin: const EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(8)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Search',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
            // message
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Text(
                'Meet the latest collection of retro running inspired shoes.The unlikely heroes of your easiest styling hack.',
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Hot Picks 🔥',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.blue),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),

            // list of shoes for sale
            Expanded(
              child: ListView.builder(
                itemCount: cart.getShoeList().length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  // get a shoe from shop list
                  Shoe shoe = cart.getShoeList()[index];
                  // return the shoe
                  return ShoeTile(
                    shoe: shoe,
                  );
                },
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 25, right: 25, top: 25.0),
              child: Divider(
                color: Colors.white,
              ),
            )
          ],
        );
      }),
    );
  }
}
