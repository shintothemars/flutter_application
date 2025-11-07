import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      appBar: AppBar(title: Text('Profil Saya')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                'https://i.pinimg.com/1200x/74/5c/ab/745caba3acf0140e64d6cb18799fa9d7.jpg',
              ),
            ),
            SizedBox(height: 20),
            Text('Shintaa Arum', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text('NIM: 22670112'),
            Text('Email: shintaaa.arum@gmail.com'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Prodi: Informatika'),
                SizedBox(width: 10),
                Text('Semester: 7'),
              ],
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple.shade200,
              ),
              child: Text('Kembali ke Dashboard'),
            ),
          ],
        ),
      ),
    );
  }
}
