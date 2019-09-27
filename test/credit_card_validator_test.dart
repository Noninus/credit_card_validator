import 'package:credit_card_validator/credit_card_validator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Expect a VISA card", () {
    Map<String, dynamic> cardData =
        CreditCardValidator.getCard("4111111111111111");
    expect(cardData[CreditCardValidator.cardType], "VISA");
    expect(cardData[CreditCardValidator.isValidCard], true);
  });

  test("Expect a ELO card", () {
    Map<String, dynamic> cardData =
        CreditCardValidator.getCard("6362970000457013");
    expect(cardData[CreditCardValidator.cardType], "ELO");
    expect(cardData[CreditCardValidator.isValidCard], true);
  });
}
