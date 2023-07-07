import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoe_stores/controllers/route_manager.dart';

import '../../constants/color.dart';
import '../../providers/cart.dart';

class CartIcon extends StatelessWidget {
  const CartIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cartData = Provider.of<Cart>(context);

    return InkWell(
      onTap: () => Navigator.of(context).pushNamed(RouteManager.cartScreen),
      child: badges.Badge( // Use 'badges' as the prefix
        position: const badges.BadgePosition(start: 15, bottom: 30),
        badgeColor: notifBg,
        shape: badges.BadgeShape.square,
        borderRadius: BorderRadius.circular(5),
        padding: const EdgeInsets.fromLTRB(6, 0, 6, 2),
        badgeContent: Text(
          cartData.itemCount.toString(),
          style: const TextStyle(color: Colors.white),
        ),
        showBadge: true,
        child: const Icon(
          Icons.shopping_bag_outlined,
          color: iconColor,
          size: 30,
        ),
      ),
    );
  }
}
