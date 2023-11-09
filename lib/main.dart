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
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 30, 28, 33)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'My Movies'),
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
    'assets/images/movie1.jpg',
    'assets/images/mov2.jpg',
    'assets/images/mov3.jpg',
    // Add more movie posters
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 30, 28, 33),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 30, 28, 33),
        title: Text(
          widget.title,
          style: const TextStyle(
            color: Color.fromARGB(255, 243, 239, 239),
            fontFamily: 'mantserrat',
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            fontSize: 22,
          ),
        ),
      ),
      body: Container(
        child: CustomScrollView(
          slivers: [
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Trending',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromARGB(255, 243, 239, 239),
                    fontFamily: 'mantserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 170.0, // Adjust the height based on your needs
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: moviePosters.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        moviePosters[index],
                        width: 200.0, // Adjust the width based on your needs
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),
            ),
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Popular',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Color.fromARGB(255, 243, 239, 239),
                    fontFamily: 'mantserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 300.0, // Adjust the height based on your needs
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: moviePosters.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            moviePosters[index],
                            width: 150.0,
                            height: 200, // Adjust the width based on your needs
                            fit: BoxFit.cover,
                          ),
                          const Text(
                            'Movie1',
                            style: TextStyle(
                              fontSize: 18.0,
                              color: Color.fromARGB(255, 243, 239, 239),
                              fontFamily: 'mantserrat',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Text(
                            'Action Movie',
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
                                size: 19,
                              ),
                              Icon(
                                Icons.star,
                                color: Color.fromARGB(255, 61, 35, 195),
                                size: 19,
                              ),
                              Icon(
                                Icons.star,
                                color: Color.fromARGB(255, 61, 35, 195),
                                size: 19,
                              ),
                              Icon(
                                Icons.star,
                                color: Color.fromARGB(255, 61, 35, 195),
                                size: 19,
                              ),
                              Icon(
                                Icons.star,
                                color: Color.fromARGB(255, 61, 35, 195),
                                size: 19,
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
            // SliverToBoxAdapter(
            //   child: SizedBox(
            //     height: 220.0, // Adjust the height based on your needs
            //     child: ListView.builder(
            //       scrollDirection: Axis.horizontal,
            //       itemCount: moviePosters.length,
            //       itemBuilder: (context, index) {
            //         return Padding(
            //           padding: const EdgeInsets.all(8.0),
            //           child: Image.asset(
            //             moviePosters[index],
            //             width: 150.0, // Adjust the width based on your needs
            //             fit: BoxFit.cover,
            //           ),
            //         );
            //       },
            //     ),
            //   ),
            // ), // Add more slivers if needed
          ],
          // SliverToBoxAdapter for Text
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
       // backgroundColor: Color.fromARGB(255, 30, 28, 33),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.movie,
              color: Color.fromARGB(255, 58, 22, 158),
            ),
            label: 'es',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.cloud_download_sharp,
              color: Color.fromARGB(255, 243, 239, 239),
            ),
            label: 'Movs',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border_rounded,
              color: Color.fromARGB(255, 243, 239, 239),
            ),
            label: 'Movis',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.manage_accounts,
              color: Color.fromARGB(255, 243, 239, 239),
            ),
            label: 'Favorites',
          ),
        ],
        currentIndex: 1,
        //  onTap: 1,
      ),
    );
  }
}
