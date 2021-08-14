class Description {
  final String name;
  final String photo;
  final String text;
  final String valor;
  final String parcelas;
  bool isFavorite;

  Description({
    required this.name,
    required this.photo,
    required this.text,
    required this.valor,
    required this.parcelas,
    this.isFavorite = false,
  });
}