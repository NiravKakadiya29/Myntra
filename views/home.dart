import 'package:flutter/cupertino.dart';
import 'package:myntraclone/const/const.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: '#3f3947'.toColor(),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    25.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          CupertinoIcons.person_crop_rectangle,
                          size: 30,
                        ).box.white.size(55, 55).roundedSM.make(),
                        Icon(
                          Icons.highlight_remove_outlined,
                          color: Colors.grey,
                          size: 30,
                        )
                      ],
                    ),
                    // CircleAvatar(
                    //   radius: 30,
                    //   backgroundImage: AssetImage('path_to_your_photo'),
                    // ),
                    10.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Myntra User',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Men'),
                onTap: () {
                  // Handle menu item tap
                },
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Women'),
                onTap: () {
                  // Handle menu item tap
                },
              ),
              ListTile(
                leading: Icon(Icons.child_care),
                title: Text('Kids'),
                onTap: () {
                  // Handle menu item tap
                },
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Home & Living'),
                onTap: () {
                  // Handle menu item tap
                },
              ),
              ListTile(
                leading: Icon(Icons.face),
                title: Text('Beauty'),
                onTap: () {
                  // Handle menu item tap
                },
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text('Account'),
                onTap: () {
                  // Handle menu item tap
                },
              ),
              ListTile(
                leading: Icon(Icons.shopping_basket),
                title: Text('Orders'),
                onTap: () {
                  // Handle menu item tap
                },
              ),
              ListTile(
                leading: Icon(Icons.store),
                title: Text('Myntra Studio'),
                onTap: () {
                  // Handle menu item tap
                },
              ),
              ListTile(
                leading: Icon(Icons.store_mall_directory_outlined),
                title: Text('Myntra Mall'),
                onTap: () {
                  // Handle menu item tap
                },
              ),
              ListTile(
                leading: Icon(Icons.card_giftcard),
                title: Text('Gift Card'),
                onTap: () {
                  // Handle menu item tap
                },
              ),
              ListTile(
                leading: Icon(Icons.contact_mail),
                title: Text('Contact Us'),
                onTap: () {
                  // Handle menu item tap
                },
              ),
              ListTile(
                leading: Icon(Icons.question_answer),
                title: Text('FAQs'),
                onTap: () {
                  // Handle menu item tap
                },
              ),
              ListTile(
                leading: Icon(Icons.gavel),
                title: Text('Legal'),
                onTap: () {
                  // Handle menu item tap
                },
              ),
              Image.asset(drawer),
            ],
          ),
        ),
        appBar: AppBar(
          title: 'Myntra'.text.make(),
          actions: [
            Icon(Icons.search),
            10.widthBox,
            Icon(CupertinoIcons.heart),
            10.widthBox,
            Icon(Icons.shopping_bag_outlined),
            10.widthBox,
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 4550,
              child: Column(
                children: [
                  Container(
                    height: 150,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: List.generate(
                            1,
                            (index) => Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      imgH1,
                                    ),
                                    Image.asset(
                                      imgH2,
                                    ),
                                    Image.asset(
                                      imgH3,
                                    ),
                                    Image.asset(
                                      imgH4,
                                    ),
                                    Image.asset(
                                      imgH5,
                                    ),
                                    Image.asset(
                                      imgH6,
                                    ),
                                    Image.asset(
                                      imgH7,
                                    ),
                                    Image.asset(
                                      imgH8,
                                    ),
                                    Image.asset(
                                      imgH9,
                                    ),
                                    Image.asset(
                                      imgH10,
                                    ),
                                  ],
                                )
                                    .box
                                    .margin(EdgeInsets.symmetric(horizontal: 4))
                                    .white
                                    .roundedSM
                                    .padding(EdgeInsets.all(8))
                                    .make()),
                      ),
                    ),
                  ),
                  Image.network(
                    "https://res.cloudinary.com/dftrciwod/image/upload/v1689407546/banner_g71djz.webp",
                  ),
                  10.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      'Sign Up For Exciting Deals!'
                          .text
                          .size(16)
                          .white
                          .makeCentered(),
                      10.widthBox,
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Vx.gray50,
                        ),
                        child: Icon(
                          Icons.navigate_next,
                          color: Colors.black,
                        ),
                      )
                    ],
                  )
                      .box
                      .height(35)
                      .width(MediaQuery.of(context).size.width - 30)
                      .roundedSM
                      .black
                      .make(),

                  //swiper
                  VxSwiper.builder(
                    autoPlay: true,
                    height: 250,
                    initialPage: 0,
                    itemCount: firstSlidersList.length,
                    aspectRatio: 16 / 9,

                    //for show one fit image in slider
                    viewportFraction: 1.0,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        firstSlidersList[index],
                        width: double.infinity,
                        fit: BoxFit.contain,
                      );
                    },
                  ),
                  Image.asset(policy),
                  //payment swiper
                  VxSwiper.builder(
                    autoPlay: true,
                    height: 80,
                    itemCount: paymentbanner.length,
                    aspectRatio: 16 / 9,

                    //for show one fit image in slider
                    viewportFraction: 1.0,
                    itemBuilder: (context, index) {
                      return Image.asset(
                        paymentbanner[index],
                        width: double.infinity,
                        fit: BoxFit.contain,
                      );
                    },
                  ),

                  'All Time Favourites'.text.bold.size(28).make(),

                  //product
                  Container(
                    height: MediaQuery.of(context).size.height,
                    child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: p_name.length,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            mainAxisExtent: 205,
                            crossAxisSpacing: 8,
                            mainAxisSpacing: 8),
                        itemBuilder: (contex, index) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: <Widget>[
                                  Card(
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      // Adjust the value as needed

                                      child: Image.network(
                                        //product image As database
                                        p_images[index],
                                        height: 150,
                                        width: 200,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: FractionalTranslation(
                                      translation: Offset(0, 6.5),
                                      child: Container(
                                        // color: Colors.black54,
                                        padding:
                                            EdgeInsets.symmetric(horizontal: 8),
                                        child: p_name[index]
                                            .text
                                            .white
                                            .fontWeight(FontWeight.bold)
                                            .shadow(1, 1, 1, Colors.black)
                                            .make(),
                                      ),
                                    ),
                                  ),
                                ],
                              ), //product name as database name
                              5.heightBox,

                              //producrt price as database price name
                              "Under ₹${p_price[index]}"
                                  .text
                                  .color(Colors.black)
                                  .size(25)
                                  .fontWeight(FontWeight.bold)
                                  .makeCentered()
                            ],
                          )
                              .box
                              .white
                              .rounded
                              .outerShadowSm
                              // .padding(EdgeInsets.all(8))
                              .make()
                              .onTap(() {
                            // controller.checkIffav(data[index]);
                            // Get.to(() => ItemDetails(
                            //   title: "${data[index]['p_name']}",
                            //   data: data[index],
                            // ),
                            // );
                          });
                        }),
                  ),
                  //produt end
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      'View All'.text.size(16).white.makeCentered(),
                      10.widthBox,
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Vx.gray50,
                        ),
                        child: Icon(
                          Icons.navigate_next,
                          color: Colors.black,
                        ),
                      )
                    ],
                  )
                      .box
                      .height(35)
                      .width(MediaQuery.of(context).size.width - 30)
                      .roundedSM
                      .black
                      .make(),
                  10.heightBox,

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        'Highlites Of The Day'.text.semiBold.size(22).make(),
                      ],
                    ),
                  ),
                  //highlight
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          1,
                          (index) => Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    swiper21,
                                  ),
                                  10.widthBox,
                                  Image.asset(
                                    swiper22,
                                  ),
                                  10.widthBox,
                                  Image.asset(
                                    swiper23,
                                  ),
                                  10.widthBox,
                                  Image.asset(
                                    swiper24,
                                  ),
                                  10.widthBox,
                                  Image.asset(
                                    swiper25,
                                  ),
                                  10.widthBox,
                                  Image.asset(
                                    swiper26,
                                  ),
                                  10.widthBox,
                                  Image.asset(
                                    swiper27,
                                  ),
                                  10.widthBox,
                                  Image.asset(
                                    swiper28,
                                  ),
                                ],
                              )
                                  .box
                                  .height(250)
                                  .margin(EdgeInsets.symmetric(horizontal: 4))
                                  .white
                                  .roundedSM
                                  .padding(EdgeInsets.all(8))
                                  .make()),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        'Featured Brand'.text.semiBold.size(22).make(),
                        Container(
                          height: 25,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Colors.grey[400],
                          ),
                          child: 'AD'.text.bold.size(18).white.makeCentered(),
                        )
                      ],
                    ),
                  ),
                  // featured brands
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          1,
                          (index) => Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    slider31,
                                  ),
                                  10.widthBox,
                                  Image.asset(
                                    slider32,
                                  ),
                                  10.widthBox,
                                  Image.asset(
                                    slider33,
                                  ),
                                  10.widthBox,
                                  Image.asset(
                                    slider34,
                                  ),
                                  10.widthBox,
                                  Image.asset(
                                    slider35,
                                  ),
                                  10.widthBox,
                                  Image.asset(
                                    slider36,
                                  ),
                                  10.widthBox,
                                  Image.asset(
                                    slider37,
                                  ),
                                  10.widthBox,
                                  Image.asset(
                                    slider38,
                                  ),
                                  10.widthBox,
                                  Image.asset(
                                    slider39,
                                  ),
                                ],
                              )
                                  .box
                                  .height(350)
                                  .margin(EdgeInsets.symmetric(horizontal: 4))
                                  .white
                                  .roundedSM
                                  .padding(EdgeInsets.all(8))
                                  .make()),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        'Continue Browsing These Brands'
                            .text
                            .semiBold
                            .size(22)
                            .make(),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Image.asset(
                              clothes1,
                              width: 190,
                            ),
                            10.heightBox,
                            'VARANGA'.text.size(18).semiBold.make(),
                            'Kurta Sets'.text.size(16).gray500.semiBold.make(),
                          ],
                        ).box.white.shadowSm.make(),
                      ],
                    ),
                  ),
                  Image.asset(redbanner),
                  Container(
                    height: 200,
                    child: Image.network(
                        "https://assets.myntassets.com/f_webp,dpr_1.5,q_auto:eco,w_600,c_limit,fl_progressive/assets/images/retaillabs/2023/6/28/4942ed05-c67a-4aec-9a9a-990ba63a10d41687949158545-unnamed--14-.gif"),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          1,
                          (index) => Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    swiper41,
                                  ),
                                  10.widthBox,
                                  Image.asset(
                                    swiper42,
                                  ),
                                  10.widthBox,
                                  Image.asset(
                                    swiper43,
                                  ),
                                  10.widthBox,
                                  Image.asset(
                                    swiper44,
                                  ),
                                  10.widthBox,
                                  Image.asset(
                                    swiper45,
                                  ),
                                  10.widthBox,
                                  Image.asset(
                                    swiper46,
                                  ),
                                  10.widthBox,
                                  Image.asset(
                                    swiper47,
                                  ),
                                  10.widthBox,
                                  Image.asset(
                                    swiper48,
                                  ),
                                ],
                              )
                                  .box
                                  .height(350)
                                  .margin(EdgeInsets.symmetric(horizontal: 4))
                                  .white
                                  .roundedSM
                                  .padding(EdgeInsets.only(bottom: 8))
                                  .make()),
                    ),
                  ),
                  Image.asset(banner9),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          1,
                          (index) => Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    swiper51,
                                  ),
                                  10.widthBox,
                                  Image.asset(
                                    swiper52,
                                  ),
                                  10.widthBox,
                                  Image.asset(
                                    swiper53,
                                  ),
                                  10.widthBox,
                                  Image.asset(
                                    swiper54,
                                  ),
                                  10.widthBox,
                                  Image.asset(
                                    swiper55,
                                  ),
                                  10.widthBox,
                                  Image.asset(
                                    swiper56,
                                  ),
                                ],
                              )
                                  .box
                                  .height(350)
                                  .margin(EdgeInsets.symmetric(horizontal: 4))
                                  .white
                                  .roundedSM
                                  .padding(EdgeInsets.only(bottom: 8))
                                  .make()),
                    ),
                  ),
                  Image.asset(trendbanner),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          1,
                          (index) => Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    swiper61,
                                  ),
                                  10.widthBox,
                                  Image.asset(
                                    swiper62,
                                  ),
                                  10.widthBox,
                                  Image.asset(
                                    swiper63,
                                  ),
                                  10.widthBox,
                                  Image.asset(
                                    swiper64,
                                  ),
                                  10.widthBox,
                                  Image.asset(
                                    swiper65,
                                  ),
                                  10.widthBox,
                                  Image.asset(
                                    swiper66,
                                  ),
                                ],
                              )
                                  .box
                                  .height(280)
                                  .margin(EdgeInsets.symmetric(horizontal: 4))
                                  .white
                                  .roundedSM
                                  .padding(EdgeInsets.only(bottom: 8))
                                  .make()),
                    ),
                  ),
                  Image.asset(explorebanner),
                  Padding(
                    padding: const EdgeInsets.only(top: 15.0, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        'Price Store'.text.semiBold.size(22).make(),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            price,
                            width: 80,
                          ),
                          Image.asset(
                            price2,
                            width: 80,
                          ),
                          Image.asset(
                            price3,
                            width: 80,
                          ),
                          Image.asset(
                            price4,
                            width: 80,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(top: 18.0, bottom: 8),
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(HomePage());
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(40, 44, 63, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0)),
                          fixedSize: const Size(345, 50)),
                      child: 'View More Product'.text.white.semiBold.make(),
                    ),
                  ),

                  //end
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
