
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UCHAR ;
typedef int LRESULT ;
typedef int HWND ;


 int AppInstance ;
 int CreateWindowEx (int ,int ,char*,int,int,int,int,int,int ,int *,int ,int *) ;
 int DPRINT (char*) ;
 int SS_BLACKFRAME ;
 int SS_BLACKRECT ;
 int SS_CENTER ;
 int SS_ETCHEDFRAME ;
 int SS_ETCHEDHORZ ;
 int SS_ETCHEDVERT ;
 int SS_GRAYFRAME ;
 int SS_GRAYRECT ;
 int SS_LEFT ;
 int SS_LEFTNOWORDWRAP ;
 int SS_NOPREFIX ;
 int SS_RIGHT ;
 int SS_SUNKEN ;
 int SS_WHITEFRAME ;
 int SS_WHITERECT ;
 int SS_WORDELLIPSIS ;
 int STATIC_CLASS ;
 int WS_CHILD ;
 int WS_VISIBLE ;

LRESULT WmCreate(
   HWND Wnd)
{
   UCHAR i;
   DPRINT("WM_CREATE (enter).");

   DPRINT("test 1");
   CreateWindowEx(0, STATIC_CLASS, ((void*)0), WS_CHILD | WS_VISIBLE | SS_BLACKRECT,
      10, 10, 100, 20, Wnd, ((void*)0), AppInstance, ((void*)0));

   DPRINT("test 2");
   CreateWindowEx(0, STATIC_CLASS, ((void*)0), WS_CHILD | WS_VISIBLE | SS_BLACKFRAME,
      10, 40, 100, 20, Wnd, ((void*)0), AppInstance, ((void*)0));

   DPRINT("test 3");
   CreateWindowEx(0, STATIC_CLASS, ((void*)0), WS_CHILD | WS_VISIBLE | SS_GRAYRECT,
      10, 70, 100, 20, Wnd, ((void*)0), AppInstance, ((void*)0));

   DPRINT("test 4");
   CreateWindowEx(0, STATIC_CLASS, ((void*)0), WS_CHILD | WS_VISIBLE | SS_GRAYFRAME,
      10, 100, 100, 20, Wnd, ((void*)0), AppInstance, ((void*)0));

   DPRINT("test 5");
   CreateWindowEx(0, STATIC_CLASS,
      "&Left-aligned text &static control window",
      WS_CHILD | WS_VISIBLE | SS_LEFT,
      10, 130, 100, 50, Wnd, ((void*)0), AppInstance, ((void*)0));

   DPRINT("test 6");
   CreateWindowEx(0, STATIC_CLASS,
      "&Right-aligned text &static control window",
      WS_CHILD | WS_VISIBLE | SS_RIGHT,
      10, 185, 100, 50, Wnd, ((void*)0), AppInstance, ((void*)0));

   DPRINT("test 7");
   CreateWindowEx(0, STATIC_CLASS,
      "&Centered text &static control window",
      WS_CHILD | WS_VISIBLE | SS_CENTER,
      10, 240, 100, 50, Wnd, ((void*)0), AppInstance, ((void*)0));

   DPRINT("test 8");
   CreateWindowEx(0, STATIC_CLASS,
      "&No prefix and no word wrapping",
      WS_CHILD | WS_VISIBLE | SS_LEFTNOWORDWRAP | SS_NOPREFIX,
      10, 295, 100, 20, Wnd, ((void*)0), AppInstance, ((void*)0));

   DPRINT("test 9");
   CreateWindowEx(0, STATIC_CLASS, ((void*)0), WS_CHILD | WS_VISIBLE | SS_WHITERECT,
      120, 10, 100, 20, Wnd, ((void*)0), AppInstance, ((void*)0));

   DPRINT("test 10");
   CreateWindowEx(0, STATIC_CLASS, ((void*)0), WS_CHILD | WS_VISIBLE | SS_WHITEFRAME,
      120, 40, 100, 20, Wnd, ((void*)0), AppInstance, ((void*)0));

   DPRINT("test 11");
   CreateWindowEx(0, STATIC_CLASS, ((void*)0), WS_CHILD | WS_VISIBLE
      | SS_ETCHEDFRAME, 120, 70, 100, 20, Wnd, ((void*)0), AppInstance, ((void*)0));

   DPRINT("test 12");
   for (i = 0; i < 5; ++i)
      CreateWindowEx(0, STATIC_CLASS, ((void*)0), WS_CHILD | WS_VISIBLE
         | SS_ETCHEDHORZ, 120, 100 + (4L * i), 100, 4, Wnd,
         ((void*)0), AppInstance, ((void*)0));

   DPRINT("test 13");
   for (i = 0; i < 25; ++i)
      CreateWindowEx(0, STATIC_CLASS, ((void*)0), WS_CHILD | WS_VISIBLE
         | SS_ETCHEDVERT, 120 + (4L * i), 130, 4, 20, Wnd,
         ((void*)0), AppInstance, ((void*)0));

   DPRINT("test 14");
   CreateWindowEx(0, STATIC_CLASS,
      "Sunken frame and word ellipsis",
      WS_CHILD | WS_VISIBLE | SS_SUNKEN | SS_WORDELLIPSIS,
      120, 160, 100, 20, Wnd, ((void*)0), AppInstance, ((void*)0));
   DPRINT("WM_CREATE (leave).");
   return 0;
}
