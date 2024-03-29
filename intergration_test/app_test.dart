import 'package:amazon_clone/main.dart';
import 'package:flutter_test/flutter_test.dart';
void main(){
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('End to end test', (){
      testWidgets("tap fab, verify counter", (tester) async {
        app.main();

        await tester.pumpAndSettle();

      // Verify the counter starts at 0.
      expect(find.text('0'), findsOneWidget);

      // Finds the floating action button to tap on.
      final Finder fab = find.byTooltip('Increment');

      // Emulate a tap on the floating action button.
      await tester.tap(fab);

      // Trigger a frame.
      await tester.pumpAndSettle();

      // Verify the counter increments by 1.
      expect(find.text('1'), findsOneWidget);
      });
  });
}