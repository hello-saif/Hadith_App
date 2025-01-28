// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:tensevengolf/helpers/navigation_service.dart';
// import 'package:tensevengolf/helpers/ui_helpers.dart';
// import '../../../constants/text_font_style.dart';
// import '../../../gen/colors.gen.dart';
//
// class SubscriptionScreen extends StatefulWidget {
//   const SubscriptionScreen({super.key});
//
//   @override
//   State<SubscriptionScreen> createState() => _SubscriptionScreenState();
// }
//
// class _SubscriptionScreenState extends State<SubscriptionScreen> {
//
//   final List<Map<String, dynamic>> subscriptionPlans = [
//     {
//       'save': 'Save 95%',
//       'months': '12',
//       'monthPrice': '\$12.00/mt',
//       'coins': '600 Coins',
//     },
//     {
//       'save': 'Save 66%',
//       'months': '1',
//       'monthPrice': '\$6.00/mt',
//       'coins': '600 Coins',
//     },
//     {
//       'save': 'Save 69%',
//       'months': '12',
//       'monthPrice': '\$12.00/mt',
//       'coins': '600 Coins',
//     },
//     {
//       'save': 'Save 70%',
//       'months': '6',
//       'monthPrice': '\$8.00/mt',
//       'coins': '500 Coins',
//     },
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.transparent,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         leading: GestureDetector(
//           onTap: () {
//             NavigationService.goBack();
//           },
//           child: const Icon(Icons.arrow_back),
//         ),
//       ),
//       body: SingleChildScrollView(
//         padding:  EdgeInsets.all(16.sp),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Buy Coins and Subscription',
//               style: TextFontStyle.poppinsProfileName,
//             ),
//             UIHelper.verticalSpace(24.h),
//             ListView.builder(
//               shrinkWrap: true, // This ensures the list view does not take up infinite space
//               physics: const NeverScrollableScrollPhysics(), // Prevent scrolling in this context
//               itemCount: (subscriptionPlans.length / 2).ceil(), // Calculate rows
//               itemBuilder: (context, index) {
//                 final firstPlan = subscriptionPlans[index * 2];
//                 final secondPlan = index * 2 + 1 < subscriptionPlans.length
//                     ? subscriptionPlans[index * 2 + 1]
//                     : null;
//
//                 return Column(
//                   children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Container(
//                           height: 249.h,
//                           width: 164.w,
//                           decoration: BoxDecoration(
//                             border: Border.all(
//                               color: AppColors.lightGreenishYellow,
//                             ),
//                             borderRadius: BorderRadius.circular(10.r),
//                           ),
//                           child: Column(
//                             children: [
//                               Container(
//                                 height: 70.h,
//                                 width: 164.w,
//                                 decoration: BoxDecoration(
//                                   color: AppColors.lightGreenishYellow,
//                                   border: Border.all(
//                                       color: AppColors.lightGreenishYellow),
//                                   borderRadius: BorderRadius.circular(9.r),
//                                 ),
//                                 child: Center(
//                                   child: Text(
//                                     firstPlan['save'],
//                                     style: TextFontStyle.poppinsByCoin,
//                                   ),
//                                 ),
//                               ),
//                               UIHelper.verticalSpace(12.w),
//                               Text(
//                                 firstPlan['months'],
//                                 style: TextFontStyle.poppinsWelcome,
//                               ),
//                               UIHelper.horizontalSpace(8.w),
//                               Text(
//                                 'Month',
//                                 style: TextFontStyle.poppinsEditProfile20,
//                               ),
//                               UIHelper.horizontalSpace(8.w),
//                               Text(
//                                 firstPlan['monthPrice'],
//                                 style: TextFontStyle.poppinsMonth24,
//                               ),
//                               UIHelper.horizontalSpace(8.w),
//                               Text(
//                                 firstPlan['coins'],
//                                 style: TextFontStyle.poppins16,
//                               ),
//                               UIHelper.horizontalSpace(8.w),
//                             ],
//                           ),
//                         ),
//                         const Spacer(),
//                         if (secondPlan != null)
//                           Container(
//                             height: 249.h,
//                             width: 164.w,
//                             decoration: BoxDecoration(
//                               border: Border.all(
//                                 color: AppColors.lightGreenishYellow,
//                               ),
//                               borderRadius: BorderRadius.circular(10),
//                             ),
//                             child: Column(
//                               children: [
//                                 Container(
//                                   height: 70.h,
//                                   width: 164.w,
//                                   decoration: BoxDecoration(
//                                     color: AppColors.lightGreenishYellow,
//                                     border: Border.all(
//                                         color: AppColors.lightGreenishYellow),
//                                     borderRadius: BorderRadius.circular(9),
//                                   ),
//                                   child: Center(
//                                     child: Text(
//                                       secondPlan['save'],
//                                       style: TextFontStyle.poppinsByCoin,
//                                     ),
//                                   ),
//                                 ),
//                                 UIHelper.verticalSpace(12.w),
//                                 Text(
//                                   secondPlan['months'],
//                                   style: TextFontStyle.poppinsWelcome,
//                                 ),
//                                 UIHelper.horizontalSpace(8.w),
//                                 Text(
//                                   'Month',
//                                   style: TextFontStyle.poppinsEditProfile20,
//                                 ),
//                                 UIHelper.horizontalSpace(8.w),
//                                 Text(
//                                   secondPlan['monthPrice'],
//                                   style: TextFontStyle.poppinsMonth24,
//                                 ),
//                                 UIHelper.horizontalSpace(8.w),
//                                 Text(
//                                   secondPlan['coins'],
//                                   style: TextFontStyle.poppins16,
//                                 ),
//                                 UIHelper.horizontalSpace(8.w),
//                               ],
//                             ),
//                           ),
//                       ],
//                     ),
//                     // Add space between the rows
//                     UIHelper.verticalSpace(16.h),
//                   ],
//                 );
//               },
//             ),
//             UIHelper.verticalSpace(16.h),
//             Container(
//               height: 249.h,
//               width: 164.w,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10.r),
//               ),
//               child: Padding(
//                 padding:  EdgeInsets.all(8.sp),
//                 child: Center(
//                   child: Text(
//                     'Wait for Next offer',
//                     style: TextFontStyle.poppins32,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
