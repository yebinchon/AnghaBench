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
typedef  int /*<<< orphan*/  mouseInput ;
struct TYPE_4__ {scalar_t__ mouseData; scalar_t__ dwExtraInfo; scalar_t__ time; int /*<<< orphan*/  dwFlags; scalar_t__ dy; scalar_t__ dx; } ;
struct TYPE_5__ {TYPE_1__ mi; int /*<<< orphan*/  type; } ;
typedef  scalar_t__ MMMouseButton ;
typedef  TYPE_2__ INPUT ;
typedef  int /*<<< orphan*/  Display ;
typedef  int /*<<< orphan*/  CGPoint ;
typedef  int /*<<< orphan*/  CGMouseButton ;
typedef  int /*<<< orphan*/  CGEventType ;
typedef  int /*<<< orphan*/  CGEventRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const,int /*<<< orphan*/  const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CurrentTime ; 
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  INPUT_MOUSE ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int,TYPE_2__*,int) ; 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  kCGSessionEventTap ; 

void FUNC11(bool down, MMMouseButton button)
{
#if defined(IS_MACOSX)
	const CGPoint currentPos = CGPointFromMMPoint(getMousePos());
	const CGEventType mouseType = MMMouseToCGEventType(down, button);
	CGEventRef event = CGEventCreateMouseEvent(NULL,
	                                           mouseType,
	                                           currentPos,
	                                           (CGMouseButton)button);
	CGEventPost(kCGSessionEventTap, event);
	CFRelease(event);
#elif defined(USE_X11)
	Display *display = XGetMainDisplay();
	XTestFakeButtonEvent(display, button, down ? True : False, CurrentTime);
	XSync(display, false);
#elif defined(IS_WINDOWS)
	INPUT mouseInput;
	mouseInput.type = INPUT_MOUSE;
	mouseInput.mi.dx = 0;
	mouseInput.mi.dy = 0;
	mouseInput.mi.dwFlags = MMMouseToMEventF(down, button);
	mouseInput.mi.time = 0; //System will provide the timestamp
	mouseInput.mi.dwExtraInfo = 0;
	mouseInput.mi.mouseData = 0;
	SendInput(1, &mouseInput, sizeof(mouseInput));
#endif
}