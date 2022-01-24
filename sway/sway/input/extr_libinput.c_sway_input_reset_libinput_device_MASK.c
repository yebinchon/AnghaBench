#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sway_input_device {int /*<<< orphan*/  identifier; TYPE_1__* wlr_device; } ;
struct libinput_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ WLR_INPUT_DEVICE_KEYBOARD ; 
 scalar_t__ WLR_INPUT_DEVICE_POINTER ; 
 scalar_t__ WLR_INPUT_DEVICE_SWITCH ; 
 scalar_t__ WLR_INPUT_DEVICE_TABLET_TOOL ; 
 scalar_t__ WLR_INPUT_DEVICE_TOUCH ; 
 int /*<<< orphan*/  FUNC0 (char*,struct sway_input_device*) ; 
 int FUNC1 (struct libinput_device*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct libinput_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct libinput_device*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct libinput_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 struct libinput_device* FUNC6 (TYPE_1__*) ; 

void FUNC7(struct sway_input_device *device) {
	if (!FUNC5(device->wlr_device)) {
		return;
	}
	bool changed = false;
	struct libinput_device *libinput_device =
		FUNC6(device->wlr_device);
	if (device->wlr_device->type == WLR_INPUT_DEVICE_POINTER ||
			device->wlr_device->type == WLR_INPUT_DEVICE_TABLET_TOOL) {
		changed = FUNC2(libinput_device, device->identifier);
	} else if (device->wlr_device->type == WLR_INPUT_DEVICE_KEYBOARD) {
		changed = FUNC1(libinput_device, device->identifier);
	} else if (device->wlr_device->type == WLR_INPUT_DEVICE_SWITCH) {
		changed = FUNC3(libinput_device, device->identifier);
	} else if (device->wlr_device->type == WLR_INPUT_DEVICE_TOUCH) {
		changed = FUNC4(libinput_device, device->identifier);
	}
	if (changed) {
		FUNC0("libinput_config", device);
	}
}