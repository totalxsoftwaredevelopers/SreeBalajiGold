import 'dart:io';

import 'package:easy_url_launcher/easy_url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sree_balagi_gold/general/utils/app_color.dart';
import 'package:sree_balagi_gold/general/utils/app_details.dart';
import 'package:sree_balagi_gold/general/utils/app_fonts.dart';
import 'package:sree_balagi_gold/general/utils/app_icons.dart';
import 'package:sree_balagi_gold/general/utils/app_images.dart';
import 'package:sree_balagi_gold/general/widgets/custom_button.dart';

class PendingVerificationScreen extends StatelessWidget {
  const PendingVerificationScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Pending Approval',
              style: TextStyle(
                color: Color(0xFF4B3A50),
                fontSize: 17,
                fontFamily: AppFonts.primaryFont,
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            const Image(
              image: AssetImage(
                AppImages.pendingApprovalIcon,
              ),
              width: 280,
            ),
            const Gap(20),
            const Text(
              'We,re evaluating your profile',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w600,
                height: 0,
              ),
            ),
            const Gap(10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Opacity(
                opacity: 0.60,
                child: Text(
                  'The data you entered is being verified. After some time we will complete your account verification, Please stay with us.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const Gap(20),
            CButton(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              side: const BorderSide(),
              height: 45,
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage(
                      AppIcons.call,
                    ),
                    height: 23,
                  ),
                  Gap(10),
                  Text(
                    'Call Customer care',
                    style: TextStyle(
                      color: Color(0xFF333333),
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  )
                ],
              ),
              onPressed: () {
                EasyLauncher.call(
                  number: AppDetails.phoneNumber,
                );
              },
            ),
            const Gap(10),
            CButton(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              height: 45,
              color: AppColors.secondaryColor,
              borderRadius: BorderRadius.circular(10),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Close App',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  )
                ],
              ),
              onPressed: () {
                exit(0);
              },
            ),
          ],
        ),
      ),
    );
  }
}
