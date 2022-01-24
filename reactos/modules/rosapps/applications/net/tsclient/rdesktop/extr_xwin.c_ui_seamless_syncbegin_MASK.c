#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  wnd; } ;
struct TYPE_6__ {TYPE_5__* seamless_windows; int /*<<< orphan*/  seamless_active; } ;
struct TYPE_7__ {TYPE_1__ xwin; int /*<<< orphan*/  display; } ;
typedef  TYPE_2__ RDPCLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_5__*) ; 

void
FUNC2(RDPCLIENT * This, unsigned long flags)
{
	if (!This->xwin.seamless_active)
		return;

	/* Destroy all seamless windows */
	while (This->xwin.seamless_windows)
	{
		FUNC0(This->display, This->xwin.seamless_windows->wnd);
		FUNC1(This, This->xwin.seamless_windows);
	}
}