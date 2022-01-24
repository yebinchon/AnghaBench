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
struct sway_seat_device {struct sway_keyboard* keyboard; } ;
struct sway_seat {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  link; } ;
struct TYPE_4__ {int /*<<< orphan*/  link; } ;
struct sway_keyboard {int /*<<< orphan*/  key_repeat_source; TYPE_2__ keyboard_modifiers; TYPE_1__ keyboard_key; struct sway_seat_device* seat_device; } ;
struct TYPE_6__ {int /*<<< orphan*/  wl_event_loop; } ;

/* Variables and functions */
 struct sway_keyboard* FUNC0 (int,int) ; 
 int /*<<< orphan*/  handle_keyboard_repeat ; 
 TYPE_3__ server ; 
 int /*<<< orphan*/  FUNC1 (struct sway_keyboard*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sway_keyboard*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct sway_keyboard *FUNC4(struct sway_seat *seat,
		struct sway_seat_device *device) {
	struct sway_keyboard *keyboard =
		FUNC0(1, sizeof(struct sway_keyboard));
	if (!FUNC1(keyboard, "could not allocate sway keyboard")) {
		return NULL;
	}

	keyboard->seat_device = device;
	device->keyboard = keyboard;

	FUNC3(&keyboard->keyboard_key.link);
	FUNC3(&keyboard->keyboard_modifiers.link);

	keyboard->key_repeat_source = FUNC2(server.wl_event_loop,
			handle_keyboard_repeat, keyboard);

	return keyboard;
}