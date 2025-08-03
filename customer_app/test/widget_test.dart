// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:customer_app/main.dart';

void main() {
  testWidgets('AutoSpare Customer App smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const AutoSpareCustomerApp());

    // Verify that the app title is displayed
    expect(find.text('AutoSpare'), findsOneWidget);

    // Verify that home page elements are present
    expect(find.text('Welcome to AutoSpare!'), findsOneWidget);
    expect(find.text('Car Parts'), findsOneWidget);
    expect(find.text('Bike Parts'), findsOneWidget);
    expect(find.text('New Parts'), findsOneWidget);
    expect(find.text('Used Parts'), findsOneWidget);
  });

  testWidgets('App loads successfully', (WidgetTester tester) async {
    await tester.pumpWidget(const AutoSpareCustomerApp());
    
    // Verify the app loads without errors
    expect(find.byType(MaterialApp), findsOneWidget);
    expect(find.byType(Scaffold), findsOneWidget);
  });
}
