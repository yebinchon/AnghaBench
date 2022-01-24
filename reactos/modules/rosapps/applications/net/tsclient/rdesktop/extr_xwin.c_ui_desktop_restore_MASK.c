#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  int uint32 ;
typedef  int /*<<< orphan*/  XImage ;
struct TYPE_8__ {scalar_t__ yoffset; scalar_t__ xoffset; int /*<<< orphan*/  wnd; } ;
struct TYPE_6__ {int bpp; int /*<<< orphan*/  gc; int /*<<< orphan*/  backstore; int /*<<< orphan*/  depth; int /*<<< orphan*/  visual; } ;
struct TYPE_7__ {TYPE_1__ xwin; int /*<<< orphan*/  wnd; int /*<<< orphan*/  display; scalar_t__ ownbackstore; } ;
typedef  TYPE_2__ RDPCLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int,int),int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int) ; 
 int /*<<< orphan*/  ZPixmap ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__*,int,int,int,int) ; 
 TYPE_4__* sw ; 

void
FUNC7(RDPCLIENT * This, uint32 offset, int x, int y, int cx, int cy)
{
	XImage *image;
	uint8 *data;

	offset *= This->xwin.bpp / 8;
	data = FUNC6(This, offset, cx, cy, This->xwin.bpp / 8);
	if (data == NULL)
		return;

	image = FUNC3(This->display, This->xwin.visual, This->xwin.depth, ZPixmap, 0,
			     (char *) data, cx, cy, FUNC0(This->display), cx * This->xwin.bpp / 8);

	if (This->ownbackstore)
	{
		FUNC5(This->display, This->xwin.backstore, This->xwin.gc, image, 0, 0, x, y, cx, cy);
		FUNC2(This->display, This->xwin.backstore, This->wnd, This->xwin.gc, x, y, cx, cy, x, y);
		FUNC1(XCopyArea,
					(This->display, This->xwin.backstore, sw->wnd, This->xwin.gc,
					 x, y, cx, cy, x - sw->xoffset, y - sw->yoffset));
	}
	else
	{
		FUNC5(This->display, This->wnd, This->xwin.gc, image, 0, 0, x, y, cx, cy);
		FUNC1(XCopyArea,
					(This->display, This->wnd, sw->wnd, This->xwin.gc, x, y, cx, cy,
					 x - sw->xoffset, y - sw->yoffset));
	}

	FUNC4(image);
}