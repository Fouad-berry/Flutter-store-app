import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:store/models/product.dart';

class ProductItemGrid extends StatelessWidget {
  Product product;

  ProductItemGrid({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(product.image, height: 130, fit: BoxFit.contain),
        SizedBox(
            height: 35,
            child: Text(
              product.title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            )),
        Text('${product.price}£'),
        OutlinedButton(
          onPressed: () {
            /* 
              naviguer vers un ecran
              context :  ecran en cours d'affichage
             */
            context.pushNamed('product-details');
          },
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.deepOrange,
            foregroundColor: Colors.white,
            side: BorderSide.none,
            shape: const BeveledRectangleBorder(),
          ),
          child: const Text('View'),
        ),
      ],
    );
  }
}
