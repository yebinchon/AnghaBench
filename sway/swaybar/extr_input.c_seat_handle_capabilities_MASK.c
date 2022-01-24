#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wl_seat {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/ * touch; } ;
struct TYPE_5__ {int /*<<< orphan*/ * pointer; scalar_t__ cursor_surface; } ;
struct swaybar_seat {TYPE_3__ touch; TYPE_2__ pointer; TYPE_1__* bar; } ;
typedef  enum wl_seat_capability { ____Placeholder_wl_seat_capability } wl_seat_capability ;
struct TYPE_4__ {int /*<<< orphan*/  compositor; scalar_t__ running; } ;

/* Variables and functions */
 int WL_SEAT_CAPABILITY_POINTER ; 
 int WL_SEAT_CAPABILITY_TOUCH ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  pointer_listener ; 
 int /*<<< orphan*/  touch_listener ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct swaybar_seat*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (struct wl_seat*) ; 
 int /*<<< orphan*/ * FUNC5 (struct wl_seat*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct swaybar_seat*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(void *data, struct wl_seat *wl_seat,
		enum wl_seat_capability caps) {
	struct swaybar_seat *seat = data;
	if (seat->pointer.pointer != NULL) {
		FUNC3(seat->pointer.pointer);
		seat->pointer.pointer = NULL;
	}
	if (seat->touch.touch != NULL) {
		FUNC7(seat->touch.touch);
		seat->touch.touch = NULL;
	}
	if ((caps & WL_SEAT_CAPABILITY_POINTER)) {
		seat->pointer.pointer = FUNC4(wl_seat);
		if (seat->bar->running && !seat->pointer.cursor_surface) {
			seat->pointer.cursor_surface =
				FUNC1(seat->bar->compositor);
			FUNC0(seat->pointer.cursor_surface);
		}
		FUNC2(seat->pointer.pointer, &pointer_listener, seat);
	}
	if ((caps & WL_SEAT_CAPABILITY_TOUCH)) {
		seat->touch.touch = FUNC5(wl_seat);
		FUNC6(seat->touch.touch, &touch_listener, seat);
	}
}