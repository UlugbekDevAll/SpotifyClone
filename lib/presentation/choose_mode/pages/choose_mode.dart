

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/widgets/button/basic_app_button.dart';
import '../../../core/configs/assets/app_images.dart';
import '../../../core/configs/assets/app_vectors.dart';
import '../../../core/configs/theme/app_colors.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(AppImages.chooseModeBG))),
          ),
           Container(
            color: Colors.black.withOpacity(0.15),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(AppVectors.logo),
                ),
                const Spacer(),
                const Text(
                  'Choose Mode',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18
                   ),
                ),
                const SizedBox(
                  height: 21,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Column(
                      children: [
                        ClipOval(
                          child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 15,sigmaY: 15),
                            child:Container(
                              width: 80,
                              height: 80,
                              decoration: const BoxDecoration(
                                  color: Color(0xff30393c),
                                  shape: BoxShape.circle
                              ),
                              child: SvgPicture.asset(
                                  AppVectors.moon,
                                fit: BoxFit.none,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Text('Dark Mode',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 17,color: AppColors.grey)),

                    const SizedBox(width: 20,),
                    ClipOval(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 15,sigmaY: 15),
                        child:Container(
                          width: 80,
                          height: 80,
                          decoration: const BoxDecoration(
                              color: Color(0xff30393c),
                              shape: BoxShape.circle
                          ),
                          child: SvgPicture.asset(
                            AppVectors.sun,
                            fit: BoxFit.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 50,
                ),
                BasicAppButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                              const ChooseModePage()));
                    },
                    title: 'Get Started'
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
