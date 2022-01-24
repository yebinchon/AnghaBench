#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct window_pane {int /*<<< orphan*/  event; int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int EV_READ ; 
 int EV_WRITE ; 
 int /*<<< orphan*/  READ_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct window_pane*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  window_pane_error_callback ; 
 int /*<<< orphan*/  window_pane_read_callback ; 

void
FUNC4(struct window_pane *wp)
{
	FUNC3(wp->fd, 0);

	wp->event = FUNC1(wp->fd, window_pane_read_callback,
	    NULL, window_pane_error_callback, wp);

	FUNC2(wp->event, EV_READ, 0, READ_SIZE);
	FUNC0(wp->event, EV_READ|EV_WRITE);
}