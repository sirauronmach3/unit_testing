import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing/home_page.dart';

void main() {
  testWidgets(
    'given counter is 0 when incremented button is clicked then counter should be one',
    (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: MyHomePage(
            title: 'Counter App',
          ),
        ),
      );

      final ctr = find.text('0');
      expect(ctr, findsOneWidget);

      final ctr2 = find.text('1');
      expect(ctr2, findsNothing);

      final incrementBtn = find.byKey(Key('Increment_counter'));
      await tester.tap(incrementBtn);
      await tester.pump();

      final ctr3 = find.text('1');
      expect(ctr3, findsOne);

      final ctr4 = find.text('0');
      expect(ctr4, findsNothing);

      final appBar = find.byType(AppBar);
      expect(appBar, findsOneWidget);
    },
  );
}
