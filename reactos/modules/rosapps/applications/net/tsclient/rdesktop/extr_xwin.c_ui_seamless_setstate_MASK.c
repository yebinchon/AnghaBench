#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {unsigned int state; int /*<<< orphan*/  wnd; } ;
typedef  TYPE_2__ seamless_window ;
struct TYPE_14__ {int /*<<< orphan*/  initial_state; int /*<<< orphan*/  flags; } ;
typedef  TYPE_3__ XWMHints ;
struct TYPE_12__ {int /*<<< orphan*/  seamless_active; } ;
struct TYPE_15__ {int /*<<< orphan*/  display; TYPE_1__ xwin; } ;
typedef  TYPE_4__ RDPCLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IconicState ; 
#define  SEAMLESSRDP_MAXIMIZED 130 
#define  SEAMLESSRDP_MINIMIZED 129 
#define  SEAMLESSRDP_NORMAL 128 
 unsigned int SEAMLESSRDP_NOTYETMAPPED ; 
 int /*<<< orphan*/  StateHint ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_2__* FUNC7 (TYPE_4__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (char*,unsigned int) ; 

void
FUNC9(RDPCLIENT * This, unsigned long id, unsigned int state, unsigned long flags)
{
	seamless_window *sw;

	if (!This->xwin.seamless_active)
		return;

	sw = FUNC7(This, id);
	if (!sw)
	{
		FUNC8("ui_seamless_setstate: No information for window 0x%lx\n", id);
		return;
	}

	switch (state)
	{
		case SEAMLESSRDP_NORMAL:
		case SEAMLESSRDP_MAXIMIZED:
			FUNC6(This, sw->wnd, state);
			FUNC4(This->display, sw->wnd);
			break;
		case SEAMLESSRDP_MINIMIZED:
			/* EWMH says: "if an Application asks to toggle _NET_WM_STATE_HIDDEN
			   the Window Manager should probably just ignore the request, since
			   _NET_WM_STATE_HIDDEN is a function of some other aspect of the window
			   such as minimization, rather than an independent state." Besides,
			   XIconifyWindow is easier. */
			if (sw->state == SEAMLESSRDP_NOTYETMAPPED)
			{
				XWMHints *hints;
				hints = FUNC2(This->display, sw->wnd);
				if (hints)
				{
					hints->flags |= StateHint;
					hints->initial_state = IconicState;
					FUNC5(This->display, sw->wnd, hints);
					FUNC1(hints);
				}
				FUNC4(This->display, sw->wnd);
			}
			else
				FUNC3(This->display, sw->wnd, FUNC0(This->display));
			break;
		default:
			FUNC8("SeamlessRDP: Invalid state %d\n", state);
			break;
	}

	sw->state = state;
}