#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
struct TYPE_10__ {scalar_t__ yoffset; scalar_t__ xoffset; int /*<<< orphan*/  wnd; } ;
struct TYPE_9__ {int /*<<< orphan*/  colour; } ;
struct TYPE_7__ {int /*<<< orphan*/  gc; int /*<<< orphan*/  backstore; } ;
struct TYPE_8__ {TYPE_1__ xwin; int /*<<< orphan*/  display; scalar_t__ ownbackstore; int /*<<< orphan*/  wnd; } ;
typedef  TYPE_2__ RDPCLIENT ;
typedef  TYPE_3__ PEN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int),int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 
 TYPE_6__* sw ; 

void
FUNC5(RDPCLIENT * This, uint8 opcode,
	/* dest */ int startx, int starty, int endx, int endy,
	/* pen */ PEN * pen)
{
	FUNC3(opcode);
	FUNC2(pen->colour);
	FUNC4(This->display, This->wnd, This->xwin.gc, startx, starty, endx, endy);
	FUNC0(XDrawLine, (This->display, sw->wnd, This->xwin.gc,
					    startx - sw->xoffset, starty - sw->yoffset,
					    endx - sw->xoffset, endy - sw->yoffset));
	if (This->ownbackstore)
		FUNC4(This->display, This->xwin.backstore, This->xwin.gc, startx, starty, endx, endy);
	FUNC1(opcode);
}