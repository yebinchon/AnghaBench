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
typedef  int /*<<< orphan*/  uint32_t ;
struct wl_pointer {int dummy; } ;
struct swaybar_pointer {int /*<<< orphan*/  y; int /*<<< orphan*/  x; struct swaybar_output* current; } ;
struct swaybar_seat {int /*<<< orphan*/  bar; struct swaybar_pointer pointer; } ;
struct swaybar_output {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WL_POINTER_BUTTON_STATE_PRESSED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct swaybar_output*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct swaybar_output*,char*) ; 

__attribute__((used)) static void FUNC3(void *data, struct wl_pointer *wl_pointer,
		uint32_t serial, uint32_t time, uint32_t button, uint32_t state) {
	struct swaybar_seat *seat = data;
	struct swaybar_pointer *pointer = &seat->pointer;
	struct swaybar_output *output = pointer->current;
	if (!FUNC2(output, "button with no active output")) {
		return;
	}

	if (FUNC0(seat->bar, button, state)) {
		return;
	}

	if (state != WL_POINTER_BUTTON_STATE_PRESSED) {
		return;
	}
	FUNC1(output, pointer->x, pointer->y, button);
}