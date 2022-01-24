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
struct wlr_event_pointer_button {scalar_t__ state; int /*<<< orphan*/  button; int /*<<< orphan*/  time_msec; int /*<<< orphan*/  device; } ;
struct wl_listener {int dummy; } ;
struct sway_cursor {scalar_t__ pressed_button_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_ERROR ; 
 scalar_t__ WLR_BUTTON_PRESSED ; 
 int /*<<< orphan*/  button ; 
 struct sway_cursor* cursor ; 
 int /*<<< orphan*/  FUNC0 (struct sway_cursor*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_cursor*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 struct sway_cursor* FUNC4 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct wl_listener *listener, void *data) {
	struct sway_cursor *cursor = FUNC4(listener, cursor, button);
	struct wlr_event_pointer_button *event = data;

	if (event->state == WLR_BUTTON_PRESSED) {
		cursor->pressed_button_count++;
	} else {
		if (cursor->pressed_button_count > 0) {
			cursor->pressed_button_count--;
		} else {
			FUNC2(SWAY_ERROR, "Pressed button count was wrong");
		}
	}

	FUNC0(cursor);
	FUNC1(cursor, event->device,
			event->time_msec, event->button, event->state);
	FUNC3();
}