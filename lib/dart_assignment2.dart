void main() {
  Map<String, int> price = {'티셔츠': 10000, '바지': 8000, '모자': 4000};

  List<String> cart = ["티셔츠", "바지", "모자", "티셔츠", "바지"];

  int total = 0;

  for (var item in cart) {
    // print(item);
    // print(price[item]);
    total += price[item]!;
    // 토탈 + 아이템이 담긴 프라이스 = 토탈
  }
  print("장바구니에 $total원 어치를 담으셨네요!");
  // 상품 총 가격 구함

  double dc = 0.1;
  if (total >= 20000) {
    // 구매 금액의 10%
    dc *= total;
    // 10% 출력

    print("할인금액 : ${dc.toInt()}원");
    double realTotal = total - dc;
    print("최종적으로 결제하실 금액은 : ${realTotal.toInt()}원 입니다!");
  }
}
