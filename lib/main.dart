import 'package:flutter/material.dart';

void main() {
  runApp(const MyPortfolio());
}

class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'P. Nivas Reddy Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

// ================= HOME PAGE =================

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Portfolio",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 900),
            padding: EdgeInsets.all(width < 600 ? 25 : 60),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 65,
                  child: Icon(
                    Icons.person,
                    size: 70,
                  ),
                ),

                const SizedBox(height: 25),

                Text(
                  "P. Nivas Reddy",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: width < 600 ? 30 : 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "B.Tech - CSE - Applied Maths (AM)",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 8),

                const Text(
                  "Computer Science Engineering Student",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.grey,
                  ),
                ),

                const SizedBox(height: 25),

                const Text(
                  "I am interested in Python, Data Science and Machine Learning. "
                  "I enjoy learning new technologies and building simple practical projects.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 17,
                    height: 1.6,
                  ),
                ),

                const SizedBox(height: 35),

                Wrap(
                  spacing: 15,
                  runSpacing: 15,
                  alignment: WrapAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AboutPage(),
                          ),
                        );
                      },
                      child: const Text("About Me"),
                    ),

                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ProjectsPage(),
                          ),
                        );
                      },
                      child: const Text("My Projects"),
                    ),
                  ],
                ),

                const SizedBox(height: 35),

                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person, size: 20),
                    SizedBox(width: 8),
                    Text(
                      "P. Nivas Reddy",
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ================= ABOUT PAGE =================

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Me"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 900),
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "About Me",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 20),

                const Text(
                  "I am a Computer Science Engineering student specializing "
                  "in Applied Mathematics. I am interested in Python, "
                  "Data Science and Machine Learning. I am currently "
                  "developing my programming and problem-solving skills "
                  "by working on practical projects.",
                  style: TextStyle(
                    fontSize: 17,
                    height: 1.6,
                  ),
                ),

                const SizedBox(height: 35),

                const Text(
                  "Education",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 15),

                Card(
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Bachelor of Technology",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        SizedBox(height: 8),

                        Text(
                          "CSE - Applied Maths (AM)",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),

                        SizedBox(height: 5),

                        Text(
                          "2024 - 2028",
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 35),

                const Text(
                  "Technical Skills",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 15),

                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: const [
                    Chip(
                      label: Text("Python"),
                    ),
                    Chip(
                      label: Text("NumPy"),
                    ),
                    Chip(
                      label: Text("Pandas"),
                    ),
                    Chip(
                      label: Text("Machine Learning"),
                    ),
                    Chip(
                      label: Text("HTML"),
                    ),
                    Chip(
                      label: Text("CSS"),
                    ),
                  ],
                ),

                const SizedBox(height: 35),

                const Text(
                  "Areas of Interest",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 15),

                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: const [
                    Chip(
                      label: Text("Data Science"),
                    ),
                    Chip(
                      label: Text("Machine Learning"),
                    ),
                    Chip(
                      label: Text("Python Programming"),
                    ),
                    Chip(
                      label: Text("Problem Solving"),
                    ),
                  ],
                ),

                const SizedBox(height: 40),

                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text("Back to Home"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ================= PROJECTS PAGE =================

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Projects"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 900),
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                const Text(
                  "My Projects",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 25),

                ProjectCard(
                  title: "Student Performance Prediction",
                  technologies:
                      "Python • Pandas • NumPy • Machine Learning",
                  description:
                      "A machine learning project that analyzes student "
                      "performance data and predicts academic performance.",
                ),

                const SizedBox(height: 20),

                ProjectCard(
                  title: "Data Analysis using Pandas",
                  technologies: "Python • Pandas • NumPy",
                  description:
                      "A data analysis project using Pandas and NumPy "
                      "to clean, process and analyze datasets.",
                ),

                const SizedBox(height: 20),

                ProjectCard(
                  title: "House Price Prediction",
                  technologies:
                      "Python • NumPy • Pandas • Machine Learning",
                  description:
                      "A machine learning project that predicts house "
                      "prices using different property-related features.",
                ),

                const SizedBox(height: 35),

                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Back to Home"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ================= PROJECT CARD =================

class ProjectCard extends StatelessWidget {
  final String title;
  final String technologies;
  final String description;

  const ProjectCard({
    super.key,
    required this.title,
    required this.technologies,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              technologies,
              style: const TextStyle(
                fontSize: 15,
                color: Colors.blue,
                fontWeight: FontWeight.w500,
              ),
            ),

            const SizedBox(height: 12),

            Text(
              description,
              style: const TextStyle(
                fontSize: 16,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}