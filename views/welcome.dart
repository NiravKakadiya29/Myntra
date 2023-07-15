import 'package:flutter/cupertino.dart';
import 'package:myntraclone/views/home.dart';

import '../const/const.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  static const imgSlider1 = "lib/assets/images/slider_1.png";
  static const imgSlider2 = "lib/assets/images/slider_2.png";
  static const imgSlider3 = "lib/assets/images/slider_3.png";
  static const imgSlider4 = "lib/assets/images/slider_4.png";
  static const imgSlider5 = "lib/assets/images/slider_5.png";

  static const sliderText1 = "Get Myntra Voucher worth Rs.500";
  static const sliderText2 = "Get Levi's Voucher worth Rs. 500";
  static const sliderText3 = "Get SonyLiv Premium 1 Month Subscription";
  static const sliderText4 = "Get Tokyo Talkies Voucher worth Rs.400";
  static const sliderText5 = "Get FLAT 12% OFF on Flipkart Flight Bookings";

  static const slidersList = [
    imgSlider1,
    imgSlider2,
    imgSlider3,
    imgSlider4,
    imgSlider5
  ];

  static const sliderText = [
    sliderText1,
    sliderText2,
    sliderText3,
    sliderText4,
    sliderText5
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: '#282C3F'.toColor(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
            onPressed: () {
              Get.to(HomePage());
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromRGBO(255, 63, 108, 1),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
                fixedSize: const Size(345, 50)),
            child: 'CONTINUE SHOPPING'.text.white.semiBold.make(),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: '#1A1C23'.toColor(),
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset("lib/assets/images/firstbg.png"),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              'Hi,'
                                  .text
                                  .color('#EDAB37'.toColor())
                                  .size(25)
                                  .bold
                                  .scale(1)
                                  .make(),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Expanded(
                                  child:
                                      'We’re pleased to see your interest in the Insider program.'
                                          .text
                                          .color('#EDAB37'.toColor())
                                          .size(20)
                                          .semiBold
                                          .overflow(TextOverflow.ellipsis)
                                          .maxLines(2)
                                          .scale(1)
                                          .make(),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                10.heightBox,
                                Expanded(
                                  child:
                                      'You’re just a few purchases away from your goal!'
                                          .text
                                          .color('#A4A4A8'.toColor())
                                          .size(20)
                                          .scale(1)
                                          .semiBold
                                          .overflow(TextOverflow.ellipsis)
                                          .maxLines(4)
                                          .softWrap(false)
                                          .make(),
                                ),
                                25.widthBox
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  10.heightBox,
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: 'How To Get There'
                            .text
                            .color('#FFFFFF'.toColor())
                            .size(20)
                            .bold
                            .scale(1)
                            .make(),
                      ),
                      Spacer(),
                      Image.asset(
                        'lib/assets/images/flag.png',
                        width: 64,
                      )
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: '#282C3F'.toColor(),
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Image.asset(
                                'lib/assets/images/premium.png',
                                width: 35,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  '₹0'.text.white.bold.size(24).make(),
                                  'You’ve Spent'.text.white.size(14).make(),
                                ],
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  '₹7000'.text.white.semiBold.size(16).make(),
                                  'Goal'.text.white.size(14).make(),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Divider(),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Image.asset(
                                'lib/assets/images/premium.png',
                                width: 35,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  '0/5'.text.white.bold.size(24).make(),
                                  'Your Orders'.text.white.size(14).make(),
                                ],
                              ),
                            ),
                            Spacer(),
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  '5'.text.white.semiBold.size(16).make(),
                                  'Goal'.text.white.size(14).make(),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Container(
                          color: Colors.white,
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Row(
                              children: [
                                Icon(
                                  CupertinoIcons.exclamationmark_circle,
                                  size: 28,
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 15.0),
                                    child: Text.rich(
                                      TextSpan(
                                        text: 'You need to ',
                                        style: TextStyle(fontSize: 16),
                                        children: <TextSpan>[
                                          TextSpan(
                                            text: 'shop for ₹7000 more ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                          TextSpan(
                                            text: 'and place ',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          TextSpan(
                                            text: '5 more orders ',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        10.heightBox,
                        'Note: Recent purchases will only reflect in the goal once the return window is over'
                            .text
                            .color('#7E818C'.toColor())
                            .size(14)
                            .scale(1)
                            .make(),
                      ],
                    ),
                  ),
                  20.heightBox,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        'Benefits Of Joining The Program'
                            .text
                            .color('#EDAB37'.toColor())
                            .size(20)
                            .bold
                            .scale(1)
                            .make(),
                      ],
                    ),
                  ),
                  20.heightBox,
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset(
                              "lib/assets/images/myntra1.png",
                              width: 48,
                            ),
                            20.widthBox,
                            'Early Access to The Sales'
                                .text
                                .white
                                .semiBold
                                .size(20)
                                .make(),
                          ],
                        ),
                      ),
                      Divider(color: '#E9E9EB'.toColor()),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset(
                              "lib/assets/images/myntra2.png",
                              width: 48,
                            ),
                            20.widthBox,
                            Expanded(
                              child: 'Insider Exclusive Rewards & Benefits'
                                  .text
                                  .white
                                  .semiBold
                                  .size(20)
                                  .make(),
                            ),
                          ],
                        ),
                      ),
                      Divider(color: '#E9E9EB'.toColor()),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Image.asset(
                              "lib/assets/images/myntra3.png",
                              width: 48,
                            ),
                            20.widthBox,
                            'Priority Customer Support'
                                .text
                                .white
                                .semiBold
                                .size(20)
                                .make(),
                          ],
                        ),
                      ),
                    ],
                  ),
                  20.heightBox,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        'How does it work'
                            .text
                            .color('#EDAB37'.toColor())
                            .size(20)
                            .bold
                            .scale(1)
                            .make(),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        10.heightBox,
                        'Earn SuperCoins with every purchase.'
                            .text
                            .white
                            .size(14)
                            .scale(1)
                            .make(),
                        'You can get upto 3 SuperCoins for every ₹100 spent'
                            .text
                            .white
                            .size(14)
                            .scale(1)
                            .make(),
                      ],
                    ),
                  ),
                  20.heightBox,
                  Stack(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: '#2E3042'.toColor(),
                        ),
                        width: 335,
                        height: 165,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, right: 8, top: 8),
                              child: Image.asset(
                                  "lib/assets/images/myntraprocess.png"),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 120,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: '#3E4152'.toColor(),
                          ),
                          height: 45,
                          width: 335,
                          child: Row(
                            children: [
                              16.widthBox,
                              Image.asset(
                                "lib/assets/images/uparrow.png",
                                width: 28,
                              ),
                              10.widthBox,
                              'Shop on Myntra to Upgrade your tier'
                                  .text
                                  .white
                                  .make()
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  30.heightBox,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        'Rewards'
                            .text
                            .color('#EDAB37'.toColor())
                            .size(20)
                            .bold
                            .scale(1)
                            .make(),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        'Use your SuperCoins to get exciting rewards'
                            .text
                            .white
                            .size(14)
                            .scale(1)
                            .make(),
                      ],
                    ),
                  ),
                  10.heightBox,
                  Container(
                    height: 330, // Adjust the height as needed
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: slidersList.length,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            Image.asset(
                              slidersList[index], width: 300,
// fit: BoxFit.fill,
                            )
                                .box
                                .clip(Clip.antiAlias)
                                .margin(EdgeInsets.symmetric(horizontal: 8))
                                .make(),
                            Container(
                              width: 300,
                              decoration: BoxDecoration(color: Colors.white),
                              height: 80,
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    sliderText[index],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        "lib/assets/images/myntra.png",
                        width: 30,
                      ),
                      10.widthBox,
                      Image.asset(
                        "lib/assets/images/insider.png",
                        width: 90,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: 'Fashion Advice | VIP Access | Extra Savings'
                        .text
                        .white
                        .make(),
                  ),
                  20.heightBox,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
