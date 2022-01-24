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
struct sway_seat_device {int /*<<< orphan*/  keyboard; } ;
struct sway_seat {int dummy; } ;
struct sway_input_device {TYPE_1__* wlr_device; } ;
struct TYPE_2__ {int type; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
#define  WLR_INPUT_DEVICE_KEYBOARD 133 
#define  WLR_INPUT_DEVICE_POINTER 132 
#define  WLR_INPUT_DEVICE_SWITCH 131 
#define  WLR_INPUT_DEVICE_TABLET_PAD 130 
#define  WLR_INPUT_DEVICE_TABLET_TOOL 129 
#define  WLR_INPUT_DEVICE_TOUCH 128 
 struct sway_seat_device* FUNC0 (struct sway_seat*,struct sway_input_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_seat*,struct sway_seat_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

void FUNC5(struct sway_seat *seat,
		struct sway_input_device *input_device) {
	struct sway_seat_device *seat_device = FUNC0(seat, input_device);
	if (!seat_device) {
		return;
	}

	switch (input_device->wlr_device->type) {
		case WLR_INPUT_DEVICE_POINTER:
			FUNC1(seat, seat_device);
			break;
		case WLR_INPUT_DEVICE_KEYBOARD:
			FUNC3(seat_device->keyboard);
			FUNC2(seat_device->keyboard);
			break;
		case WLR_INPUT_DEVICE_TOUCH:
			FUNC1(seat, seat_device);
			break;
		case WLR_INPUT_DEVICE_TABLET_TOOL:
			FUNC1(seat, seat_device);
			break;
		case WLR_INPUT_DEVICE_TABLET_PAD:
			FUNC4(SWAY_DEBUG, "TODO: reset tablet pad");
			break;
		case WLR_INPUT_DEVICE_SWITCH:
			FUNC4(SWAY_DEBUG, "TODO: reset switch device");
			break;
	}
}