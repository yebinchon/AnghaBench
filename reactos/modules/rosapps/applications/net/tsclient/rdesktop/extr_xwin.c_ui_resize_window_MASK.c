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
struct TYPE_9__ {int flags; int /*<<< orphan*/  max_height; int /*<<< orphan*/  min_height; int /*<<< orphan*/  max_width; int /*<<< orphan*/  min_width; } ;
typedef  TYPE_2__ XSizeHints ;
struct TYPE_8__ {int /*<<< orphan*/  backstore; int /*<<< orphan*/  gc; int /*<<< orphan*/  screen; int /*<<< orphan*/  depth; } ;
struct TYPE_10__ {TYPE_1__ xwin; int /*<<< orphan*/  display; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  wnd; scalar_t__ embed_wnd; scalar_t__ fullscreen; } ;
typedef  TYPE_3__ RDPCLIENT ;
typedef  int /*<<< orphan*/  Pixmap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int PMaxSize ; 
 int PMinSize ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 

void
FUNC10(RDPCLIENT * This)
{
	XSizeHints *sizehints;
	Pixmap bs;

	sizehints = FUNC1();
	if (sizehints)
	{
		sizehints->flags = PMinSize | PMaxSize;
		sizehints->min_width = sizehints->max_width = This->width;
		sizehints->min_height = sizehints->max_height = This->height;
		FUNC9(This->display, This->wnd, sizehints);
		FUNC5(sizehints);
	}

	if (!(This->fullscreen || This->embed_wnd))
	{
		FUNC7(This->display, This->wnd, This->width, This->height);
	}

	/* create new backstore pixmap */
	if (This->xwin.backstore != 0)
	{
		bs = FUNC3(This->display, This->wnd, This->width, This->height, This->xwin.depth);
		FUNC8(This->display, This->xwin.gc, FUNC0(This->xwin.screen));
		FUNC4(This->display, bs, This->xwin.gc, 0, 0, This->width, This->height);
		FUNC2(This->display, This->xwin.backstore, bs, This->xwin.gc, 0, 0, This->width, This->height, 0, 0);
		FUNC6(This->display, This->xwin.backstore);
		This->xwin.backstore = bs;
	}
}