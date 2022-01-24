#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct wlr_seat {int dummy; } ;
struct wlr_input_device {TYPE_4__* keyboard; } ;
struct wl_listener {int dummy; } ;
struct sway_keyboard {scalar_t__ effective_layout; TYPE_2__* seat_device; } ;
struct TYPE_10__ {struct wlr_input_device* wlr_device; } ;
struct TYPE_8__ {scalar_t__ group; } ;
struct TYPE_9__ {TYPE_3__ modifiers; } ;
struct TYPE_7__ {TYPE_5__* input_device; TYPE_1__* sway_seat; } ;
struct TYPE_6__ {struct wlr_seat* wlr_seat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_5__*) ; 
 struct sway_keyboard* keyboard ; 
 int /*<<< orphan*/  keyboard_modifiers ; 
 struct sway_keyboard* FUNC2 (struct wl_listener*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC4 (struct wlr_seat*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct wlr_seat*,struct wlr_input_device*) ; 

__attribute__((used)) static void FUNC6(struct wl_listener *listener,
		void *data) {
	struct sway_keyboard *keyboard =
		FUNC2(listener, keyboard, keyboard_modifiers);
	struct wlr_seat *wlr_seat = keyboard->seat_device->sway_seat->wlr_seat;
	struct wlr_input_device *wlr_device =
		keyboard->seat_device->input_device->wlr_device;
	FUNC5(wlr_seat, wlr_device);
	FUNC4(wlr_seat, &wlr_device->keyboard->modifiers);

	uint32_t modifiers = FUNC3(wlr_device->keyboard);
	FUNC0(modifiers);

	if (wlr_device->keyboard->modifiers.group != keyboard->effective_layout) {
		keyboard->effective_layout = wlr_device->keyboard->modifiers.group;
		FUNC1("xkb_layout", keyboard->seat_device->input_device);
	}
}