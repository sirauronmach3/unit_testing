import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing/counter.dart';

void main() {
  // setUp(() => null); // before each test
  // setUpAll(() => null); // once before all
  // tearDown(() => null); // after each test
  // tearDownAll(() => null); // once after all tests complete
  group(
    'Counter Class - ',
    () {
      late Counter counter;
      setUp(
        () {
          counter = Counter();
        },
      );

      test(
        'new counter class instantiates count to 0',
        () {
          final val = counter.count;

          expect(val, 0);
        },
      );

      test(
        'given counter class when incremented once value is 1',
        () {
          counter.incrementCounter();
          final int val = counter.count;

          expect(val, 1);
        },
      );

      test(
        'given counter class when decremented once value is -1',
        () {
          counter.decrementCounter();
          final int value = counter.count;

          expect(value, -1);
        },
      );

      test(
        'given a coutner when incremented and decremented then value is 0',
        () {
          counter.incrementCounter();
          counter.decrementCounter();

          final int value = counter.count;

          expect(value, 0);
        },
      );

      test(
        'given a new counter, after resetting, then the value is 0',
        () {
          counter.resetCounter();

          final int value = counter.count;

          expect(value, 0);
        },
      );

      test(
        'given a counter, after incrementing and resetting, then the value is 0',
        () {
          counter.incrementCounter();
          counter.resetCounter();

          final int value = counter.count;

          expect(value, 0);
        },
      );

      test(
        'given a counter, after decrementing and resetting, then the value is 0',
        () {
          counter.decrementCounter();
          counter.resetCounter();

          final int value = counter.count;
          expect(value, 0);
        },
      );
    },
  );
}
