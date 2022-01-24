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
typedef  scalar_t__ uint32_t ;
struct wlr_input_device {int dummy; } ;
struct sway_cursor {int /*<<< orphan*/  seat; } ;
typedef  enum wlr_button_state { ____Placeholder_wlr_button_state } wlr_button_state ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,struct wlr_input_device*,scalar_t__,int) ; 

void FUNC2(struct sway_cursor *cursor,
		struct wlr_input_device *device, uint32_t time_msec, uint32_t button,
		enum wlr_button_state state) {
	if (time_msec == 0) {
		time_msec = FUNC0();
	}

	FUNC1(cursor->seat, time_msec, device, button, state);
}