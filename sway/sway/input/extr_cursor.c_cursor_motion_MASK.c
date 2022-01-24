#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  scalar_t__ uint32_t ;
struct wlr_surface {int dummy; } ;
struct wlr_input_device {int dummy; } ;
struct sway_cursor {TYPE_4__* seat; TYPE_2__* cursor; int /*<<< orphan*/  confine; TYPE_1__* active_constraint; } ;
struct TYPE_9__ {int /*<<< orphan*/  wlr_seat; } ;
struct TYPE_8__ {int /*<<< orphan*/  relative_pointer_manager; } ;
struct TYPE_7__ {int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_6__ {struct wlr_surface* surface; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sway_cursor*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct wlr_surface**,double*,double*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,scalar_t__,double,double) ; 
 TYPE_3__ server ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct wlr_input_device*,double,double) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,double,double,double,double,double*,double*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,double,double,double,double) ; 

__attribute__((used)) static void FUNC6(struct sway_cursor *cursor, uint32_t time_msec,
		struct wlr_input_device *device, double dx, double dy,
		double dx_unaccel, double dy_unaccel) {
	FUNC0(cursor);

	FUNC5(
		server.relative_pointer_manager,
		cursor->seat->wlr_seat, (uint64_t)time_msec * 1000,
		dx, dy, dx_unaccel, dy_unaccel);

	struct wlr_surface *surface = NULL;
	double sx, sy;
	if (cursor->active_constraint) {
		FUNC1(cursor->seat,
			cursor->cursor->x, cursor->cursor->y, &surface, &sx, &sy);

		if (cursor->active_constraint->surface != surface) {
			return;
		}

		double sx_confined, sy_confined;
		if (!FUNC4(&cursor->confine, sx, sy, sx + dx, sy + dy,
				&sx_confined, &sy_confined)) {
			return;
		}

		dx = sx_confined - sx;
		dy = sy_confined - sy;
	}

	FUNC3(cursor->cursor, device, dx, dy);

	FUNC2(cursor->seat, time_msec, dx, dy);
}