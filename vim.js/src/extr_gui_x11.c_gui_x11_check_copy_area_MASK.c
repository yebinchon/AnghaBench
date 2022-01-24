#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ count; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  TYPE_1__ XGraphicsExposeEvent ;
typedef  int /*<<< orphan*/  XEvent ;
struct TYPE_4__ {scalar_t__ visibility; int /*<<< orphan*/  dpy; } ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  GraphicsExpose ; 
 int /*<<< orphan*/  NoExpose ; 
 scalar_t__ VisibilityPartiallyObscured ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ gui ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4()
{
    XEvent		    event;
    XGraphicsExposeEvent    *gevent;

    if (gui.visibility != VisibilityPartiallyObscured)
	return;

    FUNC1(gui.dpy);

    /* Wait to check whether the scroll worked or not */
    for (;;)
    {
	if (FUNC0(gui.dpy, NoExpose, &event))
	    return;	/* The scroll worked. */

	if (FUNC0(gui.dpy, GraphicsExpose, &event))
	{
	    gevent = (XGraphicsExposeEvent *)&event;
	    FUNC3(gevent->x, gevent->y, gevent->width, gevent->height);
	    if (gevent->count == 0)
		return;		/* This was the last expose event */
	}
	FUNC2(gui.dpy, False);
    }
}