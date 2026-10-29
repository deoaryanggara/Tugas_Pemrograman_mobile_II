
import 'package:flutter_test/flutter_test.dart';
import 'package:kampusku/app.dart';

void main() {
  testWidgets('KampusKu menampilkan halaman beranda', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const KampusKuApp());

    expect(find.text('KampusKu'), findsOneWidget);
    expect(find.text('Selamat Datang!'), findsOneWidget);
    expect(find.text('Daftar Mata Kuliah'), findsOneWidget);
    expect(find.text('Pemrograman Mobile II'), findsOneWidget);
    expect(find.text('Basis Data'), findsOneWidget);
  });
}
