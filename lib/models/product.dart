class Product {
  final int id;
  final String name;
  final String description;
  final double price;
  final String image;

  Product({required this.id, required this.name, required this.description, required this.price, required this.image});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['title'],
      description: json['description'],
      price: (json['price'] as num).toDouble(),
      image: json['image'],
    );
  }
}
