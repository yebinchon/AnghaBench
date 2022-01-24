#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  int uint32 ;
struct TYPE_9__ {scalar_t__ data; int /*<<< orphan*/  bytes_per_line; } ;
typedef  TYPE_2__ XImage ;
struct TYPE_8__ {int bpp; int /*<<< orphan*/  gc; int /*<<< orphan*/  depth; int /*<<< orphan*/  backstore; } ;
struct TYPE_10__ {TYPE_1__ xwin; int /*<<< orphan*/  display; int /*<<< orphan*/  wnd; scalar_t__ ownbackstore; } ;
typedef  TYPE_3__ RDPCLIENT ;
typedef  int /*<<< orphan*/  Pixmap ;

/* Variables and functions */
 int /*<<< orphan*/  AllPlanes ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZPixmap ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

void
FUNC6(RDPCLIENT * This, uint32 offset, int x, int y, int cx, int cy)
{
	Pixmap pix;
	XImage *image;

	if (This->ownbackstore)
	{
		image = FUNC4(This->display, This->xwin.backstore, x, y, cx, cy, AllPlanes, ZPixmap);
	}
	else
	{
		pix = FUNC1(This->display, This->wnd, cx, cy, This->xwin.depth);
		FUNC0(This->display, This->wnd, pix, This->xwin.gc, x, y, cx, cy, 0, 0);
		image = FUNC4(This->display, pix, 0, 0, cx, cy, AllPlanes, ZPixmap);
		FUNC3(This->display, pix);
	}

	offset *= This->xwin.bpp / 8;
	FUNC5(This, offset, cx, cy, image->bytes_per_line, This->xwin.bpp / 8, (uint8 *) image->data);

	FUNC2(image);
}