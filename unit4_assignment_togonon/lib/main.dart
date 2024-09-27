import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyProfilePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Assignment 6'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(49.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // profile section
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Lord Patrick Raizen G. Togonon',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      'BS in Computer Science',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      'Major in Artificial Intelligence',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    )
                  ],
                )
              ],
            ),
            SizedBox(height: 20),
            // personal info
            buildInfoRow(Icons.email, 'Email', 'lordpatrickraizen.togonon@wvsu.edu.ph'),
            buildInfoRow(Icons.phone, 'Phone', '+639167378803'),
            buildInfoRow(Icons.school, 'University', 'West Visayas State University'),
            buildInfoRow(Icons.favorite, 'Hobbies', 'Coding, Watching Movies, Listening to Music, Playing, Bullying'),
            buildInfoRow(Icons.location_on, 'Location', 'Brgy. Cari Mayor, Leganes, Iloilo'),
            SizedBox(height: 20),
            // biography
            Text(
              'Biography',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aspernatur repellendus veritatis unde dicta, architecto aliquid veniam eum ipsum, beatae iste, tempore reprehenderit amet quia voluptatibus expedita harum a cupiditate atque. Obcaecati accusantium aspernatur doloremque repudiandae quo sunt earum quos reiciendis! Quaerat optio cum laboriosam inventore libero a sapiente maiores mollitia, dolor quibusdam ipsum necessitatibus incidunt earum distinctio consectetur doloribus? Voluptatum!',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }

  // method for creating rows
  Widget buildInfoRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 10),
          Text(
            '$label: ',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Text(value, style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}