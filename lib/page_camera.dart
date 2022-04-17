import 'package:flutter/material.dart';
import 'dart:io';
import 'package:tugas3/helper.dart';

// Nama   : Ersalan Elang Kusuma
// NIM    : 123190163
// Kelas  : Praktikum Teknologi dan Pemrograman Mobile IF-C

class PageCamera extends StatefulWidget {
  const PageCamera({Key? key}) : super(key: key);

  @override
  State<PageCamera> createState() => _PageCameraState();
}

class _PageCameraState extends State<PageCamera> {
  String file = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Camera Access",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Column(
          children: [
            imageSection(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buttonGallery(),
                buttonCamera(),
              ],
            ),
            SizedBox(height: 100,),
            Text("© Ersalan Elang Kusuma/ 123190163 ",),
          ],
        ),
      ),
    );
  }

  Widget imageSection() {
    if (file.isEmpty) {
      return Image.network(
        "https://cdn1.iconfinder.com/data/icons/rounded-black-basic-ui/139/Photo_Add-RoundedBlack-512.png",height: 300, width: 300,);
    } else {
      return Image.file(
        File(file), height: 300, width: 300,);
    }
  }

  void imageProcces(String? filePath) {
    if (filePath != null) {
      setState(() {
        file = filePath;
      });
    };
  }

  Widget buttonGallery() {
    return IconButton(
      onPressed: () {
        ImagePickerHelper().getImageFromGallery((filePath) {
          imageProcces(filePath);
        });
      },
      icon: Icon(Icons.insert_drive_file),
    );
  }

  Widget buttonCamera() {
    return IconButton(
      onPressed: () {
        ImagePickerHelper()
            .getImageFromCamera((filePath) => imageProcces(filePath));
      },
      icon: Icon(Icons.camera_alt),
    );
  }
}
