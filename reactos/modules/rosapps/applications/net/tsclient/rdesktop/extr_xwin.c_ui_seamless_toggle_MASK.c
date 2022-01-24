#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  wnd; } ;
struct TYPE_7__ {int seamless_active; TYPE_5__* seamless_windows; scalar_t__ seamless_hidden; int /*<<< orphan*/  seamless_started; } ;
struct TYPE_8__ {TYPE_1__ xwin; int /*<<< orphan*/  wnd; int /*<<< orphan*/  display; int /*<<< orphan*/  seamless_rdp; } ;
typedef  TYPE_2__ RDPCLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_5__*) ; 

void
FUNC5(RDPCLIENT * This)
{
	if (!This->seamless_rdp)
		return;

	if (!This->xwin.seamless_started)
		return;

	if (This->xwin.seamless_hidden)
		return;

	if (This->xwin.seamless_active)
	{
		/* Deactivate */
		while (This->xwin.seamless_windows)
		{
			FUNC0(This->display, This->xwin.seamless_windows->wnd);
			FUNC4(This, This->xwin.seamless_windows);
		}
		FUNC1(This->display, This->wnd);
	}
	else
	{
		/* Activate */
		FUNC2(This->display, This->wnd);
		FUNC3(This);
	}

	This->xwin.seamless_active = !This->xwin.seamless_active;
}