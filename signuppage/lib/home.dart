// import 'package:flutter/material.dart';
// import 'package:jawanpak2/chat.dart';

import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List chats = [
    {
      'name': 'codewithowais',
      'lastMessage': 'Hellloooooo....',
      'image': '',
      'status': '',
      'time': '',
      'notificationCount': ''
    },
    {
      'name': 'codewithAbs',
      'lastMessage': 'Hellloooooo ABS....',
      'image': '',
      'status': '',
      'time': '',
      'notificationCount': ''
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        // leading: const Text("Leading"),
        title: const Text("Whatsapp"),
        actions: const [
          Text("Action 1"),
          Text("Action 2"),
          Text("Action 3"),
          Text("Action 4"),
        ],
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, i) {
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Chat(),
                ),
              );
            },
            tileColor: Colors.blue,
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://media.istockphoto.com/id/1476170969/photo/portrait-of-young-man-ready-for-job-business-concept.jpg?s=2048x2048&w=is&k=20&c=yif473DFhN451o-tNC1tASFFoP5QTOYcqS26dhEbv6U='),
            ),
            title: Text("${chats[i]['name']}"),
            subtitle: const Text('Helloooo........'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    // var obj = chats[i]['name'];
                    // chats[i]['name'] = "$obj updated";
                    // setState(() {});
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => Dialog(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Text('This is a typical dialog.'),
                              const SizedBox(height: 15),
                              const TextField(
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Password',
                                ),
                              ),
                              const SizedBox(height: 15),
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('Close'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  icon: const Icon(Icons.edit),
                ),
                IconButton(
                  onPressed: () {
                    chats.removeAt(i);
                    setState(() {});
                  },
                  icon: const Icon(Icons.delete),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          chats.add({
            'name': 'codewithowais ${chats.length + 1}',
            'lastMessage': 'Hellloooooo ABS....',
            'image': '',
            'status': '',
            'time': '',
            'notificationCount': ''
          });
          setState(() {});
          print(chats);
        },
        child: const Icon(Icons.add),
      ),
      drawer: Drawer(
        child: Container(
          child: const Column(
            children: [
              // DrawerHeader(
              //   decoration: BoxDecoration(color: Colors.red),
              //   child: Text("Hello"),
              // )
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(),
                accountName: Text("Codewithowais"),
                accountEmail: Text("codewithowais@gmail.com"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     List<Map> chats = [
//       {'name': 'Arshiyan (You)', 'message': '..', 'time': '1:30 AM'},
//       {'name': 'Arhum', 'message': 'How are you', 'time': '6:30 AM'},
//       {'name': 'Anas', 'message': 'where are you?', 'time': '5:10 PM'},
//       {'name': 'Fawwad', 'message': 'Suno', 'time': '8:48 PM'},
//       {'name': 'Huzaifa', 'message': 'Hey whatsapp!', 'time': '11:59 AM'},
//       {'name': 'Qanmber', 'message': 'listen to me', 'time': '10:19 AM'},
//       {
//         'name': 'Panda',
//         'message': 'What are you doing right now?',
//         'time': '3:30 AM'
//       },
//     ];
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: const Color.fromARGB(255, 31, 79, 33),
//           // leading: const Text('My App'),
//           title: const Text(
//             'WhatsApp',
//             style: TextStyle(color: Colors.white),
//           ),
//           actions: const [
//             Text('Home'),
//             Text(' About us'),
//             Text(' Exit'),
//           ],
//         ),

//         drawer: Drawer(
//           child: Container(
//             child: const Column(
//               children: [
//                 // DrawerHeader(
//                 //     decoration: BoxDecoration(color: Colors.lightGreenAccent),
//                 //     child: Text('hey')),
//                 UserAccountsDrawerHeader(
//                     decoration:
//                         BoxDecoration(color: Color.fromARGB(255, 123, 202, 34)),
//                     currentAccountPicture: CircleAvatar(
//                         backgroundImage: NetworkImage(
//                             'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxASDxIQEBITEhIRFxgXEBgYGBYSFREVFhkWGxYSFRcYHSggGhonGxYVIzEiJSorLjAuGR82ODMsNygtMCsBCgoKDg0OGxAQGi0lHyUrLSsvLy0rLS0vNS0tLS4vLTctLS0rKy0tLS0tLS0tLS0vLS0tLS0tLS0tLS0tLS0tLf/AABEIAOEA4QMBIgACEQEDEQH/xAAbAAEAAgMBAQAAAAAAAAAAAAAABQYBBAcDAv/EAD8QAAICAQIDBAcFBgUEAwAAAAECAAMEBRESITEGQVFhEyIyQnGBkQcUM2KhFVKCscHxJENykqIjNFPwRFRz/8QAGAEBAAMBAAAAAAAAAAAAAAAAAAIDBAH/xAAjEQEBAAICAgICAwEAAAAAAAAAAQIRAyESMTJBInEEE2FR/9oADAMBAAIRAxEAPwDuMREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBETG8DMSE1btdp2KSMjLorYdVLqX/ANg3b9JX7PtSw3/7SjNzfD0OPYVP8T7coF63ld1rtYlVxxsap8vKABeusqq0g+y19rHhrB8ObHuEhG1vVcsFFoXTajyZ3Zb8kjv9HWvq1n8z77eBntRTViV11UrwK9gUnclnd997LGPNnJHMnrvK8uST0tw4rfbL5GtWczdhY2/RVqsySPi7OgP+2eYOtrzXMw7vJ8d6gfLirsO30kjEq/tq/wDoxadHbiyh1r1XGOIGIVchG9NiEnYAM/JqtyffAHLrLqrAjcHcd0q9iq6NXaqujgq6sOJWB6hgeokb2QyGwso6VYzNS6G3TGY7kIv4uJxHmeDdSu/PhbyluHJ5KOTi8V7iIlioiIgIiICIiAiIgIiICIiAiIgIiICIiAnNe0OVfqeoXafVdZRhYYUZrVkrZkXPuRQr9ygDnt8Phd+0WsVYeNZk2+zWOQHtWOfYrUd7MdgB5ypdh9JsxsPe/wD7nId8jK8rbTuV/hGw+RkM8tRZx4+VY03stp+Nt6DFqUj3iossPnxvuf1kvETLba2zGT0SG7U28NdD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RuXIyK+dFaArj4xPVkB5u/5j/QGXoCXThxs/Kds2X8jLf43py+jsbquXsM22rCxz+JVQTZe696G08l/hk7lfZdpL8JWg0MihQ1Nj0sVHTi2OzHzPM95l0iWzGTqKcs8sru1RR9k+lH8VL7h4WZFxH/FhI7t52Wx8LFpzcDGrrbT7RdYtagNZSRw3AnqfV58z3GdLny6AggjcHkQeYIPUGdc39qnjZCWItlbB0cBkYdGU8wRIntnt+z8hu+tRYvk1TK6kfNRNa3s/qGmuwwKvvuA5LLRxBL8QsdytTNyevr6p59PMnxyNH1PVR6C2k6bhNt6cuy2ZN4BB4EUckHLqf1HI55xWZNN5sbi2s/tXZbc2HpVIy8lfxXJ2xsX/APWzvI/dXnyPfym72O+zenFtOXkt96zGd7OIjaql7Du5pr6A7+8efLltLVoOiY+HQmPjViutOgHUnvZiebMfEySl2OMjPlncvbG0zESSJERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQERED/2Q==')),
//                     accountName: Text('Arshiyan'),
//                     accountEmail: Text('arshiyanali128@gmail.com'))
//               ],
//             ),
//           ),
//         ),
//         body: ListView.builder(
//             itemCount: chats.length,
//             itemBuilder: (context, i) {
//               return Column(
//                 children: [
//                   ListTile(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(builder: (context) => const Chat()),
//                         );
//                       },
//                       tileColor: const Color.fromARGB(255, 112, 219, 102),
//                       leading: const CircleAvatar(
//                           backgroundImage:
//                               AssetImage('assets/images/japan.webp')),
//                       title: Text("${chats[i]['name']}"),
//                       subtitle: Text('${chats[i]['message']}'),
//                       trailing: IconButton(
//                           onPressed: () {
//                             chats.removeAt(i);
//                           },
//                           icon: Icon(Icons.delete))),
//                   // ListTile(
//                   //   onTap: () {
//                   //     Navigator.push(
//                   //       context,
//                   //       MaterialPageRoute(builder: (context) => const Chat()),
//                   //     );
//                   //   },
//                   //   tileColor: Colors.blue,
//                   //   leading: const CircleAvatar(
//                   //       backgroundImage: NetworkImage(
//                   //           'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjvzC_QRv6moAhgNb5C6e3yicKgFND1g2RwA&s')),
//                   //   title: const Text('Facebook'),
//                   //   subtitle: const Text('whats new'),
//                   //   trailing: const Icon(Icons.messenger_outline_outlined),
//                   // )
//                 ],
//               );
//             }),
//         floatingActionButton: FloatingActionButton(onPressed: () {
//           chats.add({
//             "Name": "Arshiyan ali ${chats.length + 1}",
//             "message": "where are you"
//           });
//           setState(() {});
//         }),

//         // body: SingleChildScrollView(
//         //   scrollDirection: Axis.vertical,
//         //   child: Column(
//         //     children: [
//         //       customContianer(200, 200,
//         //           const Color.fromARGB(255, 223, 211, 211), 'huzaifa'),
//         //       customContianer(290, 200, Colors.yellow, 'rizwan')
//         //     ],
//         //   ),
//         // child: Row(
//         //   children: [

//         //     Container(
//         //       height: 200,
//         //       width: 200,
//         //       color: Colors.red,
//         //       child: const Center(child: Text('huzaifa')),
//         //     ),
//         //     Container(
//         //       height: 200,
//         //       width: 200,
//         //       color: Colors.blue,
//         //       child: const Center(child: Text('apka papa')),
//         //     ),
//         //     Container(
//         //       height: 200,
//         //       width: 200,
//         //       color: const Color.fromARGB(255, 122, 202, 68),
//         //       child: const Center(child: Text('apka father')),
//         //     ),
//         //     Container(
//         //       height: 200,
//         //       width: 200,
//         //       color: const Color.fromARGB(255, 223, 228, 231),
//         //       child: const Center(child: Text('apka abbu')),
//         //     ),
//         //     Container(
//         //       height: 200,
//         //       width: 200,
//         //       color: const Color.fromARGB(255, 39, 40, 41),
//         //       child: const Center(child: Text('apka walid')),
//         //     ),
//         // ],
//       ),
//     );

//     // );
//   }
// }
