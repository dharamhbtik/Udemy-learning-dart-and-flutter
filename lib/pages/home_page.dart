import 'package:flutter/material.dart';
import '../widgets/custom_dropdown_button.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SafeArea(
      child: Container(
        height: _deviceHeight,
        width: _deviceWidth,
        padding: EdgeInsets.symmetric(horizontal: _deviceHeight * 0.05),
        child: Stack(
          children: [
          Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _pageTitle(),
            _bookRideWidget(),
          ],
        ),
        Align(
          alignment: Alignment.centerRight,
          child: 
        _astroImageWidget(),)
        ],
        ),
      ),
    )
    );
  }

  Widget _pageTitle() {
    return const Text(
      "#GoMoon",
      style: TextStyle(
          color: Colors.white, fontSize: 70, fontWeight: FontWeight.w800),
    );
  }

  Widget _astroImageWidget() {
    return Container(
      height: _deviceHeight*0.50,
      width: _deviceWidth*0.65,
      decoration: const BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.contain,
        image: AssetImage("assets/images/astro_moon.png"),
      )),
    );
  }

  Widget _destinationDropdownWidget() {
    List<String> items = ['James WebbStation', 'Dharmendra Station'];
    return CustomDropdownButtonClass(
      values: items,
      width: _deviceWidth,
    );
  }

  Widget _travellersInformationWidget() {
    List<String> items = ['1', '2', '3', '4'];
    List<String> itemsClass = ['Economy', 'Business', 'First', 'Private'];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropdownButtonClass(
          values: items,
          width: _deviceWidth * 0.40,
        ),
        CustomDropdownButtonClass(
          values: itemsClass,
          width: _deviceWidth * 0.35,
        )
      ],
    );
  }

  Widget _bookRideWidget() {
    return Container(
      height: _deviceHeight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropdownWidget(),
          _travellersInformationWidget(),
          _rideButton(),
        ],
      ),
    );
  }

  Widget _rideButton() {
    return Container(
      margin: EdgeInsets.only(bottom: _deviceHeight*0.01),
      decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      ),
      width: _deviceWidth,
      child: MaterialButton(
        onPressed: () => {},
        child: const Text(
          "Book Ride",
          style:  TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
