// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:profile_app/main.dart';

void main() {
  testWidgets('Profile screen renders core info', (WidgetTester tester) async {
    await tester.pumpWidget(const ProfileApp());

    expect(find.text('Johan Smith'), findsOneWidget);
    expect(find.text('California, USA'), findsOneWidget);
    expect(find.byIcon(Icons.arrow_back_ios_new_rounded), findsOneWidget);
    expect(find.byIcon(Icons.edit_rounded), findsOneWidget);
  });
}
