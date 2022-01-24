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
struct sway_seat_device {int dummy; } ;
struct sway_seat {int dummy; } ;
struct sway_input_device {TYPE_1__* wlr_device; } ;
struct TYPE_2__ {int type; } ;

/* Variables and functions */
#define  WLR_INPUT_DEVICE_KEYBOARD 133 
#define  WLR_INPUT_DEVICE_POINTER 132 
#define  WLR_INPUT_DEVICE_SWITCH 131 
#define  WLR_INPUT_DEVICE_TABLET_PAD 130 
#define  WLR_INPUT_DEVICE_TABLET_TOOL 129 
#define  WLR_INPUT_DEVICE_TOUCH 128 
 int /*<<< orphan*/  FUNC0 (struct sway_seat*,struct sway_seat_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_seat*,struct sway_seat_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct sway_seat*,struct sway_seat_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct sway_seat*,struct sway_seat_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct sway_seat*,struct sway_seat_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct sway_seat*,struct sway_seat_device*) ; 
 struct sway_seat_device* FUNC6 (struct sway_seat*,struct sway_input_device*) ; 

void FUNC7(struct sway_seat *seat,
		struct sway_input_device *input_device) {
	struct sway_seat_device *seat_device = FUNC6(seat, input_device);
	if (!seat_device) {
		return;
	}

	switch (input_device->wlr_device->type) {
		case WLR_INPUT_DEVICE_POINTER:
			FUNC1(seat, seat_device);
			break;
		case WLR_INPUT_DEVICE_KEYBOARD:
			FUNC0(seat, seat_device);
			break;
		case WLR_INPUT_DEVICE_SWITCH:
			FUNC2(seat, seat_device);
			break;
		case WLR_INPUT_DEVICE_TOUCH:
			FUNC5(seat, seat_device);
			break;
		case WLR_INPUT_DEVICE_TABLET_TOOL:
			FUNC4(seat, seat_device);
			break;
		case WLR_INPUT_DEVICE_TABLET_PAD:
			FUNC3(seat, seat_device);
			break;
	}
}