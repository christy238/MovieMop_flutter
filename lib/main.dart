import 'package:flutter/material.dart';

void main() {
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
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 209, 217, 189)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '  My Movies'),
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
  final List<String> moviePosters = [
    'assets/images/movie8.jpg',
    'assets/images/movie1.jpg',

    'assets/images/movie8.jpg',
    'assets/images/mov6.jpg',
    'assets/images/mov9.jpg',
    'assets/images/mov7.jpg',
    'assets/images/mov5.jpg',
    'assets/images/movie1.jpg',
    // Add more movie posters
  ];
  final List<String> moviePosters1 = [
    'assets/images/mov5.jpg',
    'assets/images/mov7.jpg',
    'assets/images/mov3.jpg',

    'assets/images/mov10.jpg',
    'assets/images/mov7.jpg',
    'assets/images/mov5.jpg',
    'assets/images/movie1.jpg',
    'assets/images/mov3.jpg',
    // Add more movie posters
  ];
  final List<String> moviePosters2 = [
    'assets/images/mov12.jpg',
    'assets/images/mov2.jpg',
    'assets/images/movie8.jpg',

    'assets/images/mov6.jpg',
    'assets/images/mov9.jpg',
    'assets/images/mov7.jpg',
    'assets/images/mov5.jpg',
    'assets/images/movie1.jpg',

    // Add more movie posters
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 23, 23, 35),
      appBar: AppBar(
        backgroundColor:
            // Color.fromARGB(255, 24, 24, 27),
            Color.fromARGB(255, 23, 23, 35),
        title: Row(
          children: [
            Text(
              widget.title,
              style: const TextStyle(
                color: Color.fromARGB(255, 243, 239, 239),
                fontFamily: 'mantserrat',
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 22,
              ),
            ),
            const SizedBox(
              width: 197,
            ),
            Container(
                width: 42,
                height: 40,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 90, 90, 93),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const Icon(
                  Icons.search,
                  color: Colors.white,
                )),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Container(
          child: CustomScrollView(
            slivers: [
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 25,
                    top: 0,
                    bottom: 8,
                  ),
                  child: Text(
                    'Trending',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color.fromARGB(255, 243, 239, 239),
                      fontFamily: 'mantserrat',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 190.0, // Adjust the height based on your needs
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: moviePosters.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.asset(
                            moviePosters[index],
                            width:
                                340.0, // Adjust the width based on your needs
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),

              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: 8,
                    top: 30,
                    left: 30,
                  ),
                  child: Text(
                    'Popular',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color.fromARGB(255, 243, 239, 239),
                      fontFamily: 'mantserrat',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 275.0, // Adjust the height based on your needs
                  child: Padding(
                    padding: EdgeInsets.only(left: 30, bottom: 5),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: moviePosters1.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 15, bottom: 1),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  moviePosters1[index],
                                  width: 130.0,
                                  height:
                                      190, // Adjust the width based on your needs
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(3.0),
                                child: Text(
                                  'The marvels',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Color.fromARGB(255, 243, 239, 239),
                                    fontFamily: 'mantserrat',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const Text(
                                ' Action Movie',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Color.fromARGB(255, 113, 109, 109),
                                  fontFamily: 'mantserrat',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 61, 35, 195),
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 61, 35, 195),
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 61, 35, 195),
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 61, 35, 195),
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 61, 35, 195),
                                    size: 16,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),

              SliverToBoxAdapter(
                child: SizedBox(
                  height: 270.0, // Adjust the height based on your needs
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: moviePosters2.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  moviePosters2[index],
                                  width: 130.0,
                                  height:
                                      190, // Adjust the width based on your needs
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(3.0),
                                child: Text(
                                  'The marvels',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Color.fromARGB(255, 243, 239, 239),
                                    fontFamily: 'mantserrat',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const Text(
                                ' Action Movie',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Color.fromARGB(255, 113, 109, 109),
                                  fontFamily: 'mantserrat',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 61, 35, 195),
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 61, 35, 195),
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 61, 35, 195),
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 61, 35, 195),
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 61, 35, 195),
                                    size: 16,
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),

              // Add more slivers if needed
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: 8,
                    top: 20,
                    left: 30,
                  ),
                  child: Text(
                    'Popular',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color.fromARGB(255, 243, 239, 239),
                      fontFamily: 'mantserrat',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 270.0, // Adjust the height based on your needs
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: moviePosters.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  moviePosters[index],
                                  width: 130.0,
                                  height:
                                      190, // Adjust the width based on your needs
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(3.0),
                                child: Text(
                                  'The marvels',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Color.fromARGB(255, 243, 239, 239),
                                    fontFamily: 'mantserrat',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const Text(
                                ' Action Movie',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Color.fromARGB(255, 113, 109, 109),
                                  fontFamily: 'mantserrat',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 61, 35, 195),
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 61, 35, 195),
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 61, 35, 195),
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 61, 35, 195),
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 61, 35, 195),
                                    size: 16,
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: 8,
                    top: 20,
                    left: 30,
                  ),
                  child: Text(
                    'Popular',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Color.fromARGB(255, 243, 239, 239),
                      fontFamily: 'mantserrat',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 270.0, // Adjust the height based on your needs
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: moviePosters1.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  moviePosters1[index],
                                  width: 130.0,
                                  height:
                                      190, // Adjust the width based on your needs
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.all(3.0),
                                child: Text(
                                  'The marvels',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Color.fromARGB(255, 243, 239, 239),
                                    fontFamily: 'mantserrat',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const Text(
                                ' Action Movie',
                                style: TextStyle(
                                  fontSize: 12.0,
                                  color: Color.fromARGB(255, 113, 109, 109),
                                  fontFamily: 'mantserrat',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 61, 35, 195),
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 61, 35, 195),
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 61, 35, 195),
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 61, 35, 195),
                                    size: 16,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color.fromARGB(255, 61, 35, 195),
                                    size: 16,
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            ],
            // SliverToBoxAdapter for Text
          ),
        ),
      ),
      bottomNavigationBar: Container(
        // color: Color.fromARGB(255, 205, 205, 86),
        // width: 200,
        // height: 200,

        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BottomNavigationBar(
            //fixedColor: Colors.black,

            items: const [
              BottomNavigationBarItem(
                backgroundColor: Color.fromARGB(255, 23, 23, 35),
                icon: Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Icon(
                    Icons.movie,
                    color: Color.fromARGB(255, 58, 19, 165),
                    size: 23,
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.cloud_download_outlined,
                    color: Color.fromARGB(255, 235, 232, 232),
                    size: 23,
                  ),
                ),
                label: 'ss1',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.favorite_border,
                    color: Color.fromARGB(255, 235, 232, 232),
                    size: 23,
                  ),
                ),
                label: 'sss',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.manage_accounts_outlined,
                  color: Color.fromARGB(255, 235, 232, 232),
                  size: 23,
                ),
                label: 'ssss',
              ),
            ],
            // currentIndex: 2,
            //  onTap: 1,
          ),
        ),
      ),
    );
  }
}
