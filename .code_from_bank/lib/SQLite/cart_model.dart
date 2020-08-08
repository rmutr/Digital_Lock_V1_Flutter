class CartModel {
  int id;
  String latSqlite;
  String lonSqlite;

  CartModel({this.id, this.latSqlite, this.lonSqlite});

  CartModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    latSqlite = json['latSqlite'];
    lonSqlite = json['lonSqlite'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['latSqlite'] = this.latSqlite;
    data['lonSqlite'] = this.lonSqlite;
    return data;
  }
}
