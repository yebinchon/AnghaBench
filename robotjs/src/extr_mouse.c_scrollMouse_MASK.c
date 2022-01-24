#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mouseScrollInputs ;
struct TYPE_4__ {int mouseData; scalar_t__ dwExtraInfo; scalar_t__ time; int /*<<< orphan*/  dwFlags; scalar_t__ dy; scalar_t__ dx; } ;
struct TYPE_5__ {TYPE_1__ mi; void* type; } ;
typedef  TYPE_2__ INPUT ;
typedef  int /*<<< orphan*/  Display ;
typedef  int /*<<< orphan*/  CGEventRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CurrentTime ; 
 void* INPUT_MOUSE ; 
 int /*<<< orphan*/  MOUSEEVENTF_HWHEEL ; 
 int /*<<< orphan*/  MOUSEEVENTF_WHEEL ; 
 int /*<<< orphan*/  FUNC3 (int,TYPE_2__*,int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  kCGHIDEventTap ; 
 int /*<<< orphan*/  kCGScrollEventUnitPixel ; 

void FUNC8(int x, int y)
{
#if defined(IS_WINDOWS)
	// Fix for #97 https://github.com/octalmage/robotjs/issues/97,
	// C89 needs variables declared on top of functions (mouseScrollInput)
	INPUT mouseScrollInputs[2];
#endif

  /* Direction should only be considered based on the scrollDirection. This
   * Should not interfere. */

  /* Set up the OS specific solution */
#if defined(__APPLE__)

	CGEventRef event;

	event = CGEventCreateScrollWheelEvent(NULL, kCGScrollEventUnitPixel, 2, y, x);
	CGEventPost(kCGHIDEventTap, event);

	CFRelease(event);

#elif defined(USE_X11)

	/*
	X11 Mouse Button Numbering
	1 = left button
	2 = middle button (pressing the scroll wheel)
	3 = right button
	4 = turn scroll wheel up
	5 = turn scroll wheel down
	6 = push scroll wheel left
	7 = push scroll wheel right
	8 = 4th button (aka browser backward button)
	9 = 5th button (aka browser forward button)
	*/
	int ydir = 4; // Button 4 is up, 5 is down.
	int xdir = 6; // Button 6 is left, 7 is right.
	Display *display = XGetMainDisplay();

	if (y < 0){
		ydir = 5;
	}
	if (x < 0){
		xdir = 7;
	}

	int xi;
	int yi;
	for (xi = 0; xi < abs(x); xi++) {
		XTestFakeButtonEvent(display, xdir, 1, CurrentTime);
		XTestFakeButtonEvent(display, xdir, 0, CurrentTime);
	}
	for (yi = 0; yi < abs(y); yi++) {
		XTestFakeButtonEvent(display, ydir, 1, CurrentTime);
		XTestFakeButtonEvent(display, ydir, 0, CurrentTime);
	}

	XSync(display, false);

#elif defined(IS_WINDOWS)

	mouseScrollInputs[0].type = INPUT_MOUSE;
	mouseScrollInputs[0].mi.dx = 0;
	mouseScrollInputs[0].mi.dy = 0;
	mouseScrollInputs[0].mi.dwFlags = MOUSEEVENTF_HWHEEL;
	mouseScrollInputs[0].mi.time = 0;
	mouseScrollInputs[0].mi.dwExtraInfo = 0;
	// Flip x to match other platforms.
	mouseScrollInputs[0].mi.mouseData = -x;

	mouseScrollInputs[1].type = INPUT_MOUSE;
	mouseScrollInputs[1].mi.dx = 0;
	mouseScrollInputs[1].mi.dy = 0;
	mouseScrollInputs[1].mi.dwFlags = MOUSEEVENTF_WHEEL;
	mouseScrollInputs[1].mi.time = 0;
	mouseScrollInputs[1].mi.dwExtraInfo = 0;
	mouseScrollInputs[1].mi.mouseData = y;

	SendInput(2, mouseScrollInputs, sizeof(mouseScrollInputs));
#endif
}