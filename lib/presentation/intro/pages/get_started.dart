import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jan/common/widgets/button/basic_app_button.dart';
import 'package:jan/core/configs/assets/app_images.dart';
import 'package:jan/core/configs/assets/app_vectors.dart';
import 'package:jan/core/configs/theme/app_colors.dart';
import 'package:jan/presentation/choose_mode/pages/choose_mode.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
            decoration: const BoxDecoration(color: AppColors.primary),
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
                  'EJAT',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: AppColors.yellow,
                      fontSize: 30),
                ),
                const SizedBox(
                  height: 50,
                ),
                Align(
                    alignment: Alignment.center,
                    child: Image.asset(AppImages.introBG)),
                const Text(
                  'Enho Mezmur\n Endaladamte \Yemikelekelegn mendenew',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.yellow,
                      fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ChooseModePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.yellow,
                    padding:
                        EdgeInsets.symmetric(vertical: 15, horizontal: 100),
                  ),
                  child: const Text(
                    'Start',
                    style: TextStyle(
                        fontSize: 20,
                        color: AppColors.primary,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
