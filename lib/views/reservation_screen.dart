import 'package:cinema_booking_app_ui/widgets/clip_border.dart';
import 'package:cinema_booking_app_ui/widgets/seats_status.dart';
import 'package:flutter/material.dart';
import '../model/seats_model.dart';
import '../utils/constants/colors.dart';

class ReservationScreen extends StatefulWidget {
  const ReservationScreen({super.key});

  @override
  State<ReservationScreen> createState() => _ReservationScreenState();
}

class _ReservationScreenState extends State<ReservationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
        title: const Text(
          "Select Seats",
          style: TextStyle(
            fontSize: 15,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: SizedBox(
              height: 65,
              child: Stack(
                children: [
                  Positioned(
                    top: -5,
                    child: ClipPath(
                      clipper: ClipBorder(),
                      child: Container(
                        width: double.infinity,
                        height: 70,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              buttonColor.withOpacity(0.3),
                              Colors.transparent,
                            ],
                            stops: const [
                              0.35,
                              1,
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: -10,
                    width: MediaQuery.of(context).size.width - 50,
                    child: ClipPath(
                      clipper: ClipShadow(),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        color: buttonColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          /// For Movie Seats
          Column(
            children: [
              ...List.generate(numRow.length, (colIndex) {
                int numCol =
                    colIndex == 0 || colIndex == numRow.length - 1 ? 6 : 8;
                return Padding(
                  padding: EdgeInsets.only(
                      bottom: colIndex == numRow.length - 1 ? 0 : 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ...List.generate(numCol, (rowIndex) {
                        String seatNum = '${numRow[colIndex]}${rowIndex + 1}';
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              if (selectedSeats.contains(seatNum)) {
                                selectedSeats.remove(seatNum);
                              } else if (!reservedSeats.contains(seatNum)) {
                                selectedSeats.add(seatNum);
                              }
                            });
                          },
                          child: Container(
                            height: 30,
                            width: 30,
                            margin: EdgeInsets.only(
                                right: rowIndex == (numCol / 2) - 1 ? 30 : 10),
                            decoration: BoxDecoration(
                              color: reservedSeats.contains(seatNum)
                                  ? Colors.white
                                  : selectedSeats.contains(seatNum)
                                      ? buttonColor
                                      : grey,
                              borderRadius: BorderRadius.circular(7.5),
                            ),
                          ),
                        );
                      }),
                    ],
                  ),
                );
              }),
            ],
          ),
          const SizedBox(height: 30),
          const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                SeatsStatus(
                  color: grey,
                  status: 'Available',
                ),
                SizedBox(width: 10),
                SeatsStatus(
                  color: buttonColor,
                  status: 'Selected',
                ),
                SizedBox(width: 10),
                SeatsStatus(
                  color: Colors.white,
                  status: 'Reserved',
                ),
              ],
            ),
          const SizedBox(height: 35),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(
                  availableTime.length,
                  (index) => GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedSeats.clear();
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

