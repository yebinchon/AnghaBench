#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  wnd; } ;
struct TYPE_8__ {int /*<<< orphan*/  gc; int /*<<< orphan*/  backstore; int /*<<< orphan*/  mod_map; int /*<<< orphan*/ * null_cursor; int /*<<< orphan*/ * IM; TYPE_7__* seamless_windows; } ;
struct TYPE_9__ {int /*<<< orphan*/ * display; TYPE_1__ xwin; scalar_t__ ownbackstore; } ;
typedef  TYPE_2__ RDPCLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 

void
FUNC9(RDPCLIENT * This)
{
	while (This->xwin.seamless_windows)
	{
		FUNC2(This->display, This->xwin.seamless_windows->wnd);
		FUNC6(This, This->xwin.seamless_windows);
	}

	FUNC8(This);

	if (This->xwin.IM != NULL)
		FUNC1(This->xwin.IM);

	if (This->xwin.null_cursor != NULL)
		FUNC7(This, This->xwin.null_cursor);

	FUNC4(This->xwin.mod_map);

	if (This->ownbackstore)
		FUNC5(This->display, This->xwin.backstore);

	FUNC3(This->display, This->xwin.gc);
	FUNC0(This->display);
	This->display = NULL;
}