#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ visibility; TYPE_1__* drawarea; } ;
struct TYPE_9__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_10__ {int count; TYPE_2__ area; } ;
struct TYPE_11__ {TYPE_3__ expose; } ;
struct TYPE_8__ {int /*<<< orphan*/  window; } ;
typedef  TYPE_4__ GdkEvent ;

/* Variables and functions */
 scalar_t__ GDK_VISIBILITY_PARTIAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_5__ gui ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void)
{
    GdkEvent	*event;
    int		expose_count;

    if (gui.visibility != GDK_VISIBILITY_PARTIAL)
	return;

    /* Avoid redrawing the cursor while scrolling or it'll end up where
     * we don't want it to be.	I'm not sure if it's correct to call
     * gui_dont_update_cursor() at this point but it works as a quick
     * fix for now. */
    FUNC3();

    do
    {
	/* Wait to check whether the scroll worked or not. */
	event = FUNC1(gui.drawarea->window);

	if (event == NULL)
	    break; /* received NoExpose event */

	FUNC4(event->expose.area.x, event->expose.area.y,
		   event->expose.area.width, event->expose.area.height);

	expose_count = event->expose.count;
	FUNC0(event);
    }
    while (expose_count > 0); /* more events follow */

    FUNC2();
}