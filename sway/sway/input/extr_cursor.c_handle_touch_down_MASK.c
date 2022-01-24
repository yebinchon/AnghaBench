#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct wlr_surface {int dummy; } ;
struct wlr_seat {int dummy; } ;
struct wlr_event_touch_down {int /*<<< orphan*/  touch_id; int /*<<< orphan*/  time_msec; int /*<<< orphan*/  y; int /*<<< orphan*/  x; int /*<<< orphan*/  device; } ;
struct wl_listener {int dummy; } ;
struct sway_seat {double touch_x; double touch_y; int /*<<< orphan*/  touch_id; struct wlr_seat* wlr_seat; } ;
struct sway_cursor {int /*<<< orphan*/  cursor; struct sway_seat* seat; } ;
struct TYPE_2__ {int /*<<< orphan*/  idle; } ;

/* Variables and functions */
 struct sway_cursor* cursor ; 
 int /*<<< orphan*/  FUNC0 (struct sway_cursor*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_seat*,double,double,struct wlr_surface**,double*,double*) ; 
 scalar_t__ FUNC2 (struct sway_seat*,struct wlr_surface*) ; 
 TYPE_1__ server ; 
 int /*<<< orphan*/  touch_down ; 
 struct sway_cursor* FUNC3 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double*,double*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct wlr_seat*) ; 
 int /*<<< orphan*/  FUNC6 (struct wlr_seat*,struct wlr_surface*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double,double) ; 

__attribute__((used)) static void FUNC7(struct wl_listener *listener, void *data) {
	struct sway_cursor *cursor = FUNC3(listener, cursor, touch_down);
	FUNC5(server.idle, cursor->seat->wlr_seat);
	struct wlr_event_touch_down *event = data;

	struct sway_seat *seat = cursor->seat;
	struct wlr_seat *wlr_seat = seat->wlr_seat;
	struct wlr_surface *surface = NULL;

	double lx, ly;
	FUNC4(cursor->cursor, event->device,
			event->x, event->y, &lx, &ly);
	double sx, sy;
	FUNC1(seat, lx, ly, &surface, &sx, &sy);

	seat->touch_id = event->touch_id;
	seat->touch_x = lx;
	seat->touch_y = ly;

	if (!surface) {
		return;
	}

	// TODO: fall back to cursor simulation if client has not bound to touch
	if (FUNC2(seat, surface)) {
		FUNC6(wlr_seat, surface, event->time_msec,
				event->touch_id, sx, sy);
		FUNC0(cursor);
	}
}