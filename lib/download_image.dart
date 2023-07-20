import 'package:flutter/material.dart';
import 'package:flutter_file_downloader/flutter_file_downloader.dart';

class DownloadImage extends StatelessWidget {
  const DownloadImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Download Image"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://img.freepik.com/free-photo/dreamy-young-woman-sunglasses-looking-front_197531-16739.jpg?w=900&t=st=1689885300~exp=1689885900~hmac=baadbc247801353df0cf72ca3d9d0d271d81d4d7fa5a595c211d11cd6633b438"))),
            ),
            const SizedBox(
              height: 20,
            ),
            FloatingActionButton(
              child: const Icon(Icons.download),
              onPressed: () async {
                await FileDownloader.downloadFile(
                  url:
                      "https://img.freepik.com/free-photo/dreamy-young-woman-sunglasses-looking-front_197531-16739.jpg?w=900&t=st=1689885300~exp=1689885900~hmac=baadbc247801353df0cf72ca3d9d0d271d81d4d7fa5a595c211d11cd6633b438",
                  name: "ANOTHER PANDA.jpg",
                  onDownloadCompleted: (path) {
                    print('FILE: ${path}');
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
