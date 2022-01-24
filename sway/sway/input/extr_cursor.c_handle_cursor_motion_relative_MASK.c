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
struct wlr_event_pointer_motion {int /*<<< orphan*/  unaccel_dy; int /*<<< orphan*/  unaccel_dx; int /*<<< orphan*/  delta_y; int /*<<< orphan*/  delta_x; int /*<<< orphan*/  device; int /*<<< orphan*/  time_msec; } ;
struct wl_listener {int dummy; } ;
struct sway_cursor {int dummy; } ;

/* Variables and functions */
 struct sway_cursor* cursor ; 
 int /*<<< orphan*/  FUNC0 (struct sway_cursor*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  motion ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct sway_cursor* FUNC2 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(
		struct wl_listener *listener, void *data) {
	struct sway_cursor *cursor = FUNC2(listener, cursor, motion);
	struct wlr_event_pointer_motion *e = data;

	FUNC0(cursor, e->time_msec, e->device, e->delta_x, e->delta_y,
			e->unaccel_dx, e->unaccel_dy);
	FUNC1();
}