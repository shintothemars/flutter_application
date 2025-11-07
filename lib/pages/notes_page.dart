import 'package:flutter/material.dart';

class NotesPage extends StatefulWidget {
  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  final List<String> notes = [];
  final TextEditingController noteController = TextEditingController();

  void addNote() {
    if (noteController.text.isNotEmpty) {
      setState(() {
        notes.add(noteController.text);
        noteController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple.shade50,
      appBar: AppBar(title: Text('Catatan Saya')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: noteController,
              decoration: InputDecoration(
                labelText: 'Tulis catatan...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: addNote,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple.shade200,
              ),
              child: Text('Tambah Catatan'),
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: notes.length,
                itemBuilder: (context, index) => Card(
                  color: Colors.purple.shade100,
                  child: ListTile(
                    title: Text(notes[index]),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
