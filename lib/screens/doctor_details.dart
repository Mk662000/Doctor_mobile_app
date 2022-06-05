import 'package:flutter/material.dart';
import 'package:flutter_app_4/models/doctor.dart';

class DoctorDetails extends StatelessWidget {
  Doctor doctor;
  int _selectedItem = 0;

  DoctorDetails(this.doctor);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:  FloatingActionButton(
        child: Icon(Icons.add,
          color: Colors.white,),
        backgroundColor: Color(0xff07da5f), onPressed: () {  },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      appBar: AppBar(
        title: Text('Doctor Details'),
        backgroundColor: Color(0xff07da5f),
        centerTitle: true,
      ),
      body:
      Container(
        child: ListView(
          children: [
            Row(
              children: [
                // Image.asset('assets/images/1.jpg'),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    // child: Image.asset('assets/images/1.jpg'),
                    backgroundImage: AssetImage(doctor.urlPhoto),
                    radius: 65,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          doctor.name,
                          style: TextStyle(
                            fontSize: 22,
                          ),
                        ),
                      ],
                    ),

                    Text(
                      doctor.speciality,
                      style: TextStyle(
                          color: Color(0xff07da5f),
                          fontSize: 20,
                          fontStyle: FontStyle.italic),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xffffd500),
                          ),

                          Icon(
                            Icons.star,
                            color: Color(0xffffd500),
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffffd500),
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffffd500),
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xffffd500),
                          ),
                          Text(doctor.rating,
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0x770000000)
                              )),
                        ],
                      ),
                    ),

                  ],
                )
              ],
            ),
            Divider(
              color: Colors.black12,
              indent: 20,
              endIndent: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(

                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text('Short Description', style: TextStyle(
                      fontSize: 20,
                      letterSpacing:1.5,
                    ),),
                    Text(
                      'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry s standard dummy text ever since the 1500s, when an unknown printer took a galley',
                      style: TextStyle(
                          fontSize: 15,
                          letterSpacing:1.5,
                          color: Colors.black45
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Location', style: TextStyle(fontSize: 18),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(Icons.add_location),
                  Text(doctor.address, style: TextStyle(
                      fontSize: 18,
                      color: Colors.black45
                  ),),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/map.jpeg', width: 450),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Center(

                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.center,
                      minimumSize: Size(280, 50),
                      textStyle: TextStyle(fontSize: 15),
                      primary: Color(0xff07da5f),
                      onPrimary: Colors.white,
                      // shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      //   RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)
                      //   )
                      // )
                    ),
                    child: Text('Request'),
                    onPressed:() {}
                ),
              ),
            )
          ],
        ),
      ),

      bottomNavigationBar:buttonNavBar(),
    );
  }

  Widget buttonNavBar() {
    return

      BottomNavigationBar(
          currentIndex: _selectedItem,
          onTap: (index) {
            {
              _selectedItem = index;
            };
          },
          type: BottomNavigationBarType.fixed,

          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notification_important_sharp),
                label: 'Notification'),
            BottomNavigationBarItem(
                icon: Icon(Icons.calendar_today), label: 'Schedule'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_rounded), label: 'Profile'),
          ]
      );
  }
}