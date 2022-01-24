#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  XPoint ;
struct TYPE_11__ {int /*<<< orphan*/  yoffset; int /*<<< orphan*/  xoffset; int /*<<< orphan*/  wnd; } ;
struct TYPE_10__ {int /*<<< orphan*/  colour; } ;
struct TYPE_8__ {int /*<<< orphan*/  gc; int /*<<< orphan*/  backstore; } ;
struct TYPE_9__ {TYPE_1__ xwin; int /*<<< orphan*/  display; scalar_t__ ownbackstore; int /*<<< orphan*/  wnd; } ;
typedef  TYPE_2__ RDPCLIENT ;
typedef  int /*<<< orphan*/  POINT ;
typedef  TYPE_3__ PEN ;

/* Variables and functions */
 int /*<<< orphan*/  CoordModePrevious ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  seamless_XDrawLines ; 
 TYPE_6__* sw ; 

void
FUNC5(RDPCLIENT * This, uint8 opcode,
	    /* dest */ POINT * points, int npoints,
	    /* pen */ PEN * pen)
{
	/* TODO: set join style */
	FUNC3(opcode);
	FUNC2(pen->colour);
	FUNC4(This->display, This->wnd, This->xwin.gc, (XPoint *) points, npoints, CoordModePrevious);
	if (This->ownbackstore)
		FUNC4(This->display, This->xwin.backstore, This->xwin.gc, (XPoint *) points, npoints,
			   CoordModePrevious);

	FUNC0(seamless_XDrawLines,
				(This, sw->wnd, (XPoint *) points, npoints, sw->xoffset, sw->yoffset));

	FUNC1(opcode);
}