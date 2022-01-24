#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  int /*<<< orphan*/  XImage ;
struct TYPE_5__ {int bpp; int /*<<< orphan*/  create_bitmap_gc; int /*<<< orphan*/  depth; int /*<<< orphan*/  visual; } ;
struct TYPE_6__ {int server_depth; TYPE_1__ xwin; int /*<<< orphan*/  display; int /*<<< orphan*/  wnd; scalar_t__ owncolmap; } ;
typedef  TYPE_2__ RDPCLIENT ;
typedef  int /*<<< orphan*/  Pixmap ;
typedef  int /*<<< orphan*/  HBITMAP ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  ZPixmap ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

HBITMAP
FUNC6(RDPCLIENT * This, int width, int height, uint8 * data)
{
	XImage *image;
	Pixmap bitmap;
	uint8 *tdata;
	int bitmap_pad;

	if (This->server_depth == 8)
	{
		bitmap_pad = 8;
	}
	else
	{
		bitmap_pad = This->xwin.bpp;

		if (This->xwin.bpp == 24)
			bitmap_pad = 32;
	}

	tdata = (This->owncolmap ? data : FUNC4(This, width, height, data));
	bitmap = FUNC1(This->display, This->wnd, width, height, This->xwin.depth);
	image = FUNC0(This->display, This->xwin.visual, This->xwin.depth, ZPixmap, 0,
			     (char *) tdata, width, height, bitmap_pad, 0);

	FUNC3(This->display, bitmap, This->xwin.create_bitmap_gc, image, 0, 0, 0, 0, width, height);

	FUNC2(image);
	if (tdata != data)
		FUNC5(tdata);
	return (HBITMAP) bitmap;
}