#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  gc; int /*<<< orphan*/  current_cursor; int /*<<< orphan*/  depth; scalar_t__ seamless_active; } ;
struct TYPE_8__ {int fullscreen; int /*<<< orphan*/  display; int /*<<< orphan*/  height; int /*<<< orphan*/  width; TYPE_1__ xwin; int /*<<< orphan*/  wnd; int /*<<< orphan*/  ownbackstore; } ;
typedef  TYPE_2__ RDPCLIENT ;
typedef  int /*<<< orphan*/  Pixmap ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

void
FUNC7(RDPCLIENT * This)
{
	Pixmap contents = 0;

	if (This->xwin.seamless_active)
		/* Turn off SeamlessRDP mode */
		FUNC6(This);

	if (!This->ownbackstore)
	{
		/* need to save contents of window */
		contents = FUNC1(This->display, This->wnd, This->width, This->height, This->xwin.depth);
		FUNC0(This->display, This->wnd, contents, This->xwin.gc, 0, 0, This->width, This->height, 0, 0);
	}

	FUNC5(This);
	This->fullscreen = !This->fullscreen;
	FUNC4(This);

	FUNC2(This->display, This->wnd, This->xwin.current_cursor);

	if (!This->ownbackstore)
	{
		FUNC0(This->display, contents, This->wnd, This->xwin.gc, 0, 0, This->width, This->height, 0, 0);
		FUNC3(This->display, contents);
	}
}