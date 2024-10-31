import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple User Interface',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Styled Container for the welcome message
            Container(
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Welcome to the Simple UI!',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 10), // Spacing
                  ElevatedButton(
                    onPressed: () {
                      print('Button Clicked!');
                    },
                    child: Text('Click Me'),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20), // Spacing between container and image
            Image.network(
              'https://flutter.dev/assets/homepage/carousel/slide_1-layer_0-2b8f7e49c377dd946ed6e6b7640d4e1b9c4dce793fa53e77a62d69e458b501e2.png',
              height: 150,
            ),
            SizedBox(height: 40), // Spacing between image and login section
            // Login Section
            LoginForm(),
          ],
        ),
      ),
    );
  }
}

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.blueAccent),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Username',
              border: OutlineInputBorder(),
              padding: EdgeInsets.symmetric(horizontal: 10),
            ),
          ),
          SizedBox(height: 10), // Spacing between fields
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
              padding: EdgeInsets.symmetric(horizontal: 10),
            ),
          ),
          SizedBox(height: 20), // Spacing between fields and buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Add login logic here
                  print('Login Button Pressed');
                },
                child: Text('Login'),
              ),
              TextButton(
                onPressed: () {
                  // Add registration logic here
                  print('Register Button Pressed');
                },
                child: Text('Register'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
