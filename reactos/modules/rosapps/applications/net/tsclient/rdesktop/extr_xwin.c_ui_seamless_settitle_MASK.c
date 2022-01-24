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
struct TYPE_9__ {int /*<<< orphan*/  wnd; } ;
typedef  TYPE_2__ seamless_window ;
struct TYPE_8__ {int /*<<< orphan*/  seamless_active; } ;
struct TYPE_10__ {int /*<<< orphan*/  display; TYPE_1__ xwin; } ;
typedef  TYPE_3__ RDPCLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char const*) ; 
 TYPE_2__* FUNC2 (TYPE_3__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long) ; 

void
FUNC4(RDPCLIENT * This, unsigned long id, const char *title, unsigned long flags)
{
	seamless_window *sw;

	if (!This->xwin.seamless_active)
		return;

	sw = FUNC2(This, id);
	if (!sw)
	{
		FUNC3("ui_seamless_settitle: No information for window 0x%lx\n", id);
		return;
	}

	/* FIXME: Might want to convert the name for non-EWMH WMs */
	FUNC0(This->display, sw->wnd, title);
	FUNC1(This, sw->wnd, title);
}