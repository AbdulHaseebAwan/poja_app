import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PoojaScreen(),
    );
  }
}

class PoojaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color(0xFFFDF2F8),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            Center(
              child: Text(
                'Pooja',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 40,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF672F98),
                ),
              ),
            ),
            SizedBox(height: 20),
            Divider(color: Colors.black, thickness: 1),
            SizedBox(height: 20),
            Container(
              width: screenSize.width * 0.6,
              height: 56,
              decoration: BoxDecoration(
                color: Color(0xFFFDF2F8),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.black),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        'Pooja',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF672F98),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        'Booked ',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF987CB0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: SizedBox(
                height: (screenSize.width * 0.2 + 16) *
                    (poojaNames.length / 3).ceil(), // Calculate height based on number of items
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: poojaNames.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    childAspectRatio: 0.6, // Adjust aspect ratio
                  ),
                  itemBuilder: (context, index) {
                    return PoojaCard(
                      poojaName: poojaNames[index],
                      imageName: "images/${imageNames[index]}.png",
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PoojaCard extends StatelessWidget {
  final String poojaName;
  final String imageName;

  PoojaCard({
    required this.poojaName,
    required this.imageName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 286,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            spreadRadius: 2,
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imageName,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
          Text(
            poojaName,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: 100,
            height: 22,
            decoration: BoxDecoration(
              color: Color(0xFF672F98),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                'Book Now',
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Names of the pujas
List<String> poojaNames = [
  "Shani Puja",
  "Durga Puja",
  "Gopal Puja",
  "Vastu Puja",
  "Chandra Puja",
  "Mahalakshimi Puja",
  "Mrityunjay Pooja",
  "Surya Puja",
  "Saraswati Pooja",
  "Kaali Pooja",
  "Bhagwad Gita Pooja",
  "Navgrah Pooja",
  "Rahu Pooja",
  "Ketu Pooja",
  "Mangal Pooja",
  "Rudrabhishek Pooja",
  "Gath Bandhan Pooja",
  "Satyanarayan Pooja",
  "Brihaspati Pooja",
  "Nakshatra Pooja",
  "Pitra dosh Pooja",
  "Manglik Pooja",
  "Nakshatra Pooja",
];

List<String> imageNames = [
  "shani",
  'durga',
  'krishna',
  'moon',
  'lakshmi',
  'god',
  'saraswati',
  'kali',
  'book',
  'gkidptw7',
  '370jhva8',
  'gksin0to',
  'tqrji3oj',
  'nhvy1fuw',
  'vhrdjzon',
  'dxk3av1v',
  'j8ucp42s',
  'plant',
  'sun',
  'big',
  'fd08978y',
  'k0rotkem',
];
