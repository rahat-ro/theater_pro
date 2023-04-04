import 'package:flutter/material.dart';
import 'package:youtube/youtube_thumbnail.dart';
import 'package:youtube_explode_dart/youtube_explode_dart.dart';
import 'package:http/http.dart' as http;
import 'package:youtube/youtube.dart';
import 'dart:ui' as ui;
import 'package:image_network/image_network.dart';

void main() async {
  await ui.Image;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Future<void> main() async {
    var yt = YoutubeExplode();
    var video =
    await yt.videos.get('https://www.youtube.com/watch?v=AI7ULzgf8RU');

    print('Title: ${video.title}');

    // Close the YoutubeExplode's http client.
    yt.close();
  }


  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),

            ImageNetwork(image: YoutubeThumbnail(youtubeId: 'M__fQvJNWU4').hd(), height: 150, width: 150),
            ImageNetwork(image: YoutubeThumbnail(youtubeId: 'M__fQvJNWU4').hd(), height: 150, width: 150)

          ],
        ),
      ),

    );
  }
}
