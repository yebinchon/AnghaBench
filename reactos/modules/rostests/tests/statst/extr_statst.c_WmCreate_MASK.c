#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int UCHAR ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  AppInstance ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
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
 int /*<<< orphan*/  STATIC_CLASS ; 
 int WS_CHILD ; 
 int WS_VISIBLE ; 

LRESULT FUNC2(
   HWND Wnd)
{
   UCHAR i;
   FUNC1("WM_CREATE (enter).");
   // Test 1 - black rectangle.
   FUNC1("test 1");
   FUNC0(0, STATIC_CLASS, NULL, WS_CHILD | WS_VISIBLE | SS_BLACKRECT,
      10, 10, 100, 20, Wnd, NULL, AppInstance, NULL);
   // Test 2 - black frame.
   FUNC1("test 2");
   FUNC0(0, STATIC_CLASS, NULL, WS_CHILD | WS_VISIBLE | SS_BLACKFRAME,
      10, 40, 100, 20, Wnd, NULL, AppInstance, NULL);
   // Test 3 - gray rectangle.
   FUNC1("test 3");
   FUNC0(0, STATIC_CLASS, NULL, WS_CHILD | WS_VISIBLE | SS_GRAYRECT,
      10, 70, 100, 20, Wnd, NULL, AppInstance, NULL);
   // Test 4 - gray frame.
   FUNC1("test 4");
   FUNC0(0, STATIC_CLASS, NULL, WS_CHILD | WS_VISIBLE | SS_GRAYFRAME,
      10, 100, 100, 20, Wnd, NULL, AppInstance, NULL);
   // Test 5 - left-aligned text.
   FUNC1("test 5");
   FUNC0(0, STATIC_CLASS,
      "&Left-aligned text &static control window",
      WS_CHILD | WS_VISIBLE | SS_LEFT,
      10, 130, 100, 50, Wnd, NULL, AppInstance, NULL);
   // Test 6 - right-aligned text.
   FUNC1("test 6");
   FUNC0(0, STATIC_CLASS,
      "&Right-aligned text &static control window",
      WS_CHILD | WS_VISIBLE | SS_RIGHT,
      10, 185, 100, 50, Wnd, NULL, AppInstance, NULL);
   // Test 7 - centered text.
   FUNC1("test 7");
   FUNC0(0, STATIC_CLASS,
      "&Centered text &static control window",
      WS_CHILD | WS_VISIBLE | SS_CENTER,
      10, 240, 100, 50, Wnd, NULL, AppInstance, NULL);
   // Test 8 - left-aligned text with no word wrap and no prefixes.
   FUNC1("test 8");
   FUNC0(0, STATIC_CLASS,
      "&No prefix and no word wrapping",
      WS_CHILD | WS_VISIBLE | SS_LEFTNOWORDWRAP | SS_NOPREFIX,
      10, 295, 100, 20, Wnd, NULL, AppInstance, NULL);
   // Test 9 - white rectangle.
   FUNC1("test 9");
   FUNC0(0, STATIC_CLASS, NULL, WS_CHILD | WS_VISIBLE | SS_WHITERECT,
      120, 10, 100, 20, Wnd, NULL, AppInstance, NULL);
   // Test 10 - white frame.
   FUNC1("test 10");
   FUNC0(0, STATIC_CLASS, NULL, WS_CHILD | WS_VISIBLE | SS_WHITEFRAME,
      120, 40, 100, 20, Wnd, NULL, AppInstance, NULL);
   // Test 11 - etched frame.
   FUNC1("test 11");
   FUNC0(0, STATIC_CLASS, NULL, WS_CHILD | WS_VISIBLE
      | SS_ETCHEDFRAME, 120, 70, 100, 20, Wnd, NULL, AppInstance, NULL);
   // Test 12 - etched horizontal lines.
   FUNC1("test 12");
   for (i = 0; i < 5; ++i)
      FUNC0(0, STATIC_CLASS, NULL, WS_CHILD | WS_VISIBLE
         | SS_ETCHEDHORZ, 120, 100 + (4L * i), 100, 4, Wnd,
         NULL, AppInstance, NULL);
   // Test 13 - etched vertical lines.
   FUNC1("test 13");
   for (i = 0; i < 25; ++i)
      FUNC0(0, STATIC_CLASS, NULL, WS_CHILD | WS_VISIBLE
         | SS_ETCHEDVERT, 120 + (4L * i), 130, 4, 20, Wnd,
         NULL, AppInstance, NULL);
   // Test 14 - sunken border.
   FUNC1("test 14");
   FUNC0(0, STATIC_CLASS,
      "Sunken frame and word ellipsis",
      WS_CHILD | WS_VISIBLE | SS_SUNKEN | SS_WORDELLIPSIS,
      120, 160, 100, 20, Wnd, NULL, AppInstance, NULL);
   FUNC1("WM_CREATE (leave).");
   return 0;
}