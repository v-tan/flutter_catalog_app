import 'package:flutter_catalog/models/cart.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore {
  CatalogModel catalogModel;
  CartModel cartModel;

  MyStore() {
    catalogModel = CatalogModel();
    cartModel = CartModel();
    cartModel.catalog = catalogModel;
  }
}
