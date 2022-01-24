#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  wnd; } ;
typedef  TYPE_2__ seamless_window ;
struct TYPE_9__ {int /*<<< orphan*/  seamless_active; } ;
struct TYPE_11__ {int /*<<< orphan*/  display; TYPE_1__ xwin; } ;
typedef  TYPE_3__ RDPCLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (TYPE_3__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned long) ; 

void
FUNC4(RDPCLIENT * This, unsigned long id, unsigned long flags)
{
	seamless_window *sw;

	if (!This->xwin.seamless_active)
		return;

	sw = FUNC1(This, id);
	if (!sw)
	{
		FUNC3("ui_seamless_destroy_window: No information for window 0x%lx\n", id);
		return;
	}

	FUNC0(This->display, sw->wnd);
	FUNC2(This, sw);
}