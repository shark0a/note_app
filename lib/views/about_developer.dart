import 'package:flutter/material.dart';
import 'package:note_app/widgets/photo_detils.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutDeveloper extends StatelessWidget {
  const AboutDeveloper({super.key});

  @override
  Widget build(BuildContext context) {
    Uri gmailUrl = Uri.parse('mailto:shar40951@gamil.com?subject=' '&body=' '');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        toolbarHeight: 10,
        bottom: AppBar(
          shadowColor: Colors.white,
          elevation: 15,
          backgroundColor: ThemeData.light().primaryColor,
          centerTitle: true,
          title: const Text('About  Developer'),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailScreen(),
                  ));
            },
            child: const CircleAvatar(
              radius: 80,
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/mp.png'),
                radius: 80,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Name  : Ahemd Ashraf Awadallah Elsharkawy',
            style: TextStyle(fontSize: 20),
            strutStyle: StrutStyle(height: 8),
          ),
          const Text('Phone  : +201022833660',
              style: TextStyle(fontSize: 15),
              strutStyle: StrutStyle(height: 2.5)),
          const Text('Software developer',
              style: TextStyle(fontSize: 15),
              strutStyle: StrutStyle(height: 2.5)),
          const Text('Study at DTU',
              style: TextStyle(fontSize: 15),
              strutStyle: StrutStyle(height: 2.5)),
          GestureDetector(
              onTap: () {
                goToWebPage(gmailUrl.toString());
              },
              child: Container(
                padding: const EdgeInsets.only(
                  bottom: 5, // Space between underline and text
                ),
                decoration: const BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Color.fromARGB(255, 255, 255, 255),
                  width: 2.0, // Underline thickness
                ))),
                child: const Text('Email: Shar40951@gmail.com',
                    style: TextStyle(fontSize: 15, decorationThickness: 3),
                    strutStyle: StrutStyle(height: 2.5)),
              )),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 60,
                  width: 60,
                  child: IconButton(
                    onPressed: () {
                      goToWebPage(
                          "https://www.facebook.com/profile.php?id=100009006309808");
                    },
                    icon: Image.asset(
                      "assets/images/f.png",
                      height: 60,
                      width: 60,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 60,
                  width: 60,
                  child: IconButton(
                    onPressed: () {
                      goToWebPage(
                          "https://www.instagram.com/ahmed_a_elsharkawy/");
                    },
                    icon: Image.asset(
                      "assets/images/i.png",
                      height: 60,
                      width: 60,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 60,
                  width: 60,
                  child: IconButton(
                    onPressed: () {
                      goToWebPage(
                          "https://www.linkedin.com/in/ahmed-elsharkawy-46046525a?lipi=urn%3Ali%3Apage%3Ad_flagship3_profile_view_base_contact_details%3BJVKekckZQgm8SR6vgFE1kQ%3D%3D");
                    },
                    icon: Image.asset(
                      "assets/images/l.png",
                      height: 60,
                      width: 60,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

Future<void> goToWebPage(String urlString) async {
  final Uri url = Uri.parse(urlString);
  if (!await launchUrl(url)) {
    throw 'Could not launch $url';
  }
}
