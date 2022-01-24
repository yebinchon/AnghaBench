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
typedef  int /*<<< orphan*/  MMPoint ;
typedef  scalar_t__ MMMouseButton ;
typedef  int /*<<< orphan*/  CGMouseButton ;
typedef  int /*<<< orphan*/  CGEventType ;
typedef  int /*<<< orphan*/  CGEventRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kCGSessionEventTap ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(MMPoint point, const MMMouseButton button)
{
#if defined(IS_MACOSX)
	const CGEventType dragType = MMMouseDragToCGEventType(button);
	CGEventRef drag = CGEventCreateMouseEvent(NULL, dragType,
	                                                CGPointFromMMPoint(point),
	                                                (CGMouseButton)button);
	calculateDeltas(&drag, point);

	CGEventPost(kCGSessionEventTap, drag);
	CFRelease(drag);
#else
	FUNC6(point);
#endif
}