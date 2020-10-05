import 'package:flutter/material.dart';
import 'package:mangabuzz/screen/ui/base_screen.dart';
import 'package:mangabuzz/screen/ui/bookmark/bookmark_screen.dart';
import 'package:mangabuzz/screen/ui/chapter/chapter_screen.dart';
import 'package:mangabuzz/screen/ui/explore/explore_screen.dart';
import 'package:mangabuzz/screen/ui/history/history_screen.dart';
import 'package:mangabuzz/screen/ui/home/home_screen.dart';
import 'package:mangabuzz/screen/ui/manga_detail/manga_detail_screen.dart';

const String baseRoute = '/';
const String homeRoute = '/home';
const String exploreRoute = '/explore';
const String bookmarkRoute = '/bookmark';
const String historyRoute = '/history';
const String mangaDetailRoute = '/mangaDetail';
const String chapterRoute = '/chapter';
const String settingsRoute = '/settings';
const String listMangaRoute = '/manga';
const String listManhwaRoute = '/manhwa';
const String listManhuaRoute = '/manhua';

class RouteGenerator {
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case baseRoute:
        return MaterialPageRoute(
            builder: (_) => BaseScreen(), settings: settings);
        break;
      case homeRoute:
        return MaterialPageRoute(
            builder: (_) => HomePage(), settings: settings);
        break;
      case exploreRoute:
        return MaterialPageRoute(
            builder: (_) => ExplorePage(), settings: settings);
        break;
      case bookmarkRoute:
        return MaterialPageRoute(
            builder: (_) => BookmarkPage(), settings: settings);
        break;
      case historyRoute:
        return MaterialPageRoute(
          builder: (_) => HistoryPage(),
          settings: settings,
        );
        break;
      case mangaDetailRoute:
        return MaterialPageRoute(
            builder: (_) => MangaDetailPage(), settings: settings);
        break;
      case chapterRoute:
        return MaterialPageRoute(
            builder: (_) => ChapterPage(), settings: settings);
        break;
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ),
            settings: settings);
    }
  }
}
