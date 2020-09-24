import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../generated/locale_keys.g.dart';

class SearchBar extends PreferredSize {
  final Widget searchWidget;
  SearchBar({this.searchWidget});

  @override
  Size get preferredSize => Size.fromHeight(ScreenUtil().setHeight(200));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(ScreenUtil().setWidth(30)),
        child: Container(
          color: Colors.transparent,
          height: ScreenUtil().setHeight(150),
          width: double.infinity,
          child: Row(
            children: [
              Flexible(
                  child: Container(
                decoration: BoxDecoration(
                    color: Color(0xFFf3f4f6),
                    borderRadius: BorderRadius.all(
                        Radius.circular(ScreenUtil().setWidth(60)))),
                height: ScreenUtil().setHeight(300),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: ScreenUtil().setWidth(30)),
                  child: TextField(
                      style: TextStyle(color: Colors.black, fontSize: 18),
                      decoration: InputDecoration(
                        hintText: "Search something...",
                        hintStyle:
                            TextStyle(color: Color(0xFFb8bbc4), fontSize: 18),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Color(0xFFb8bbc4),
                          size: ScreenUtil().setHeight(80),
                        ),
                        border: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            bottom: ScreenUtil().setHeight(30),
                            top: ScreenUtil().setHeight(30)),
                      )),
                ),
              )),
              SizedBox(width: ScreenUtil().setWidth(60)),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: ScreenUtil().setHeight(140),
                  width: ScreenUtil().setHeight(140),
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color:
                              Theme.of(context).primaryColor.withOpacity(0.6),
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: Offset(0, 2), // changes position of shadow
                        ),
                      ],
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.all(
                          Radius.circular(ScreenUtil().setWidth(140)))),
                  child: Center(
                    child: Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: ScreenUtil().setHeight(80),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}