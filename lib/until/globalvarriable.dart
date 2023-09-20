import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagaram/until/colors.dart';
import '../screens/add_post_screen.dart';
import '../screens/feed_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/search_screen.dart';


const webScreenSize = 650;

List<Widget> homeScreenItems = [
  const FeedScreen(),
  const SearchScreen(),
  const AddPostScreen(),
  const Text('notifications',style: TextStyle(color: secondaryColor),),
  ProfileScreen(
    uid: FirebaseAuth.instance.currentUser!.uid,
  ),
];
