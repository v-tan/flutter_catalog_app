import 'package:flutter_catalog/models/catalog.dart';

class CartModel {
  CatalogModel _catalog;

  //collection of IDs: store ids of each item
  final List<int> _itemIds = [];

  //get Catalog
  CatalogModel get catalog => _catalog;

  set catalog(CatalogModel newCatalog) {
    assert(newCatalog != null);
    _catalog = catalog;
  }

  //Get items in the cart
  List<Item> get items => _itemIds.map((id) => CatalogModel.items[id]);

  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  void add(Item item) {
    _itemIds.add(item.id);
  }

  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}
