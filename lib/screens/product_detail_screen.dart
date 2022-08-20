import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/products.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/product-detail';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;

    final lodedProducts = Provider.of<Products>(context)
        .items
        .firstWhere((element) => element.id == productId);
    return Scaffold(
      appBar: AppBar(
        title: Text(lodedProducts.title),
      ),
    );
  }
}
