import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/mata_kuliah.dart';

class BerandaScreen extends StatelessWidget {
  const BerandaScreen({super.key});

  static const List<MataKuliah> daftarMataKuliah = [
    MataKuliah(
      kode: 'IF-024',
      nama: 'Pemrograman Mobile II',
      sks: 3,
      hari: 'Kamis',
    ),
    MataKuliah(
      kode: 'IF-021',
      nama: 'Sistem Mikroprosessor', 
      sks: 3, 
      hari: 'Kamis'
    ),
    MataKuliah(
      kode: 'IF-022',
      nama: 'Bahasa indonesia',
      sks: 2,
      hari: 'Kamis'
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final tanggalHariIni = DateFormat(
      'EEEE, d MMMM y',
      'id_ID',
    ).format(DateTime.now());

    return Scaffold(
      appBar: AppBar(title: const Text('KampusKu'), centerTitle: false),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            'Selamat Datang!',
            style: Theme.of(context).textTheme.headlineSmall
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 6),
          Text(
            tanggalHariIni,
            style: Theme.of(context).textTheme.bodyLarge
                ?.copyWith(color: Colors.grey.shade700),
          ),
          const SizedBox(height: 24),
          Text(
            'Daftar Mata Kuliah',
            style: Theme.of(context).textTheme.titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          ...daftarMataKuliah.map(
            (mk) => Card(
              margin: const EdgeInsets.only(bottom: 10),
              child: ListTile(
                leading: CircleAvatar(child: Text('${mk.sks}')),
                title: Text(
                  mk.nama,
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                subtitle: Text('${mk.kode} · ${mk.hari} · ${mk.sks} SKS'),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
