import 'package:flutter/foundation.dart';

import 'product.dart';

final ValueNotifier<List<Product>> cart = ValueNotifier<List<Product>>([]);

void addToCart(Product product) {
  cart.value = [...cart.value, product];
}

void removeFromCart(int index) {
  final items = [...cart.value];
  items.removeAt(index);
  cart.value = items;
}

double parsePrice(String price) {
  return double.tryParse(price.replaceAll(RegExp(r'[^0-9.]'), '')) ?? 0;
}