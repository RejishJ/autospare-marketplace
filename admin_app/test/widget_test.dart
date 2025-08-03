// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:admin_app/main.dart';

void main() {
  testWidgets('AutoSpare Admin App smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const AutoSpareAdminApp());

    // Verify that the app title is displayed
    expect(find.text('AutoSpare Admin'), findsOneWidget);

    // Verify that dashboard elements are present
    expect(find.text('Total Products'), findsOneWidget);
    expect(find.text('Pending Orders'), findsOneWidget);
    expect(find.text('Total Customers'), findsOneWidget);
    expect(find.text('Revenue (₹)'), findsOneWidget);
  });

  testWidgets('App loads successfully', (WidgetTester tester) async {
    await tester.pumpWidget(const AutoSpareAdminApp());
    
    // Verify the app loads without errors
    expect(find.byType(MaterialApp), findsOneWidget);
    expect(find.byType(Scaffold), findsOneWidget);
  });
}
