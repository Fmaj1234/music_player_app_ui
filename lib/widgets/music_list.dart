import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class MusicList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 15),
          for (int i = 1; i < 20; i++)
            Container(
              margin: EdgeInsets.only(top: 15, right: 12, left: 5),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              decoration: BoxDecoration(
                color: Color(0xff30314d),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Text(
                    i.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 25),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "musicPage");
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Sky's the Limit - Biggie Smalls",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "Bass",
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 16,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "-",
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontSize: 25,
                              ),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "04:30",
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.6),
                                fontWeight: FontWeight.w500,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Icon(
                      Icons.play_arrow,
                      color: Color(0xff31314f),
                      size: 25,
                    ),
                  ),
                ],
              ),
            ).animate()
                  .fadeIn(
                    delay: Duration(milliseconds: 200 * i),
                  )
                  .slideX(),
        ],
      ),
    );
  }
}
