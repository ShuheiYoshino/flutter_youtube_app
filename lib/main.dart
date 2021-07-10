import 'package:flutter/material.dart';
import 'package:youtube_app/video_data_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.videocam),
          title: const Text(
            'マイチャンネル',
          ),
          actions: <Widget>[
            SizedBox(
              width: 40,
              child: TextButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
                child: Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                onPressed: () {
                  // todo:
                },
              ),
            ),
            SizedBox(
              width: 50,
              child: TextButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
                child: Icon(
                  Icons.more_vert,
                  color: Colors.black,
                ),
                onPressed: () {
                  // todo:
                },
              ),
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Image.network(
                        'https://yt3.ggpht.com/ytc/AKedOLScaf6AoOKymriVpQkdgo2d0fl1uLpN5qC4cOS3=s176-c-k-c0x00ffffff-no-rj'
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      children: <Widget>[
                        const Text(
                          'マイチャンネル'
                        ),
                        TextButton(
                          child: Row(
                            children: [
                              Icon(
                                Icons.video_call,
                                color: Colors.red,
                              ),
                              Text(
                                '登録する',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          onPressed: () {
                            // todo:
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => VideoDataPage()),
                        );
                      },
                      contentPadding: EdgeInsets.all(0),
                      leading: Image.network(
                          'https://yt3.ggpht.com/ytc/AKedOLScaf6AoOKymriVpQkdgo2d0fl1uLpN5qC4cOS3=s176-c-k-c0x00ffffff-no-rj'
                      ),
                      title: Column(
                        children: [
                          Text(
                            '[Flutter超入門]リストを作る方法',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                '255回再生',
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                              Text(
                                '4日前',
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    );
                  },
                ),
              )
            ],
          ),
        ),// This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
