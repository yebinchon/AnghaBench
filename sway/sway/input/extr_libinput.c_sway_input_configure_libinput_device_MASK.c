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
struct sway_input_device {char* identifier; TYPE_1__* wlr_device; } ;
struct libinput_device {int dummy; } ;
struct input_config {int dummy; } ;
struct TYPE_3__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ WLR_INPUT_DEVICE_KEYBOARD ; 
 scalar_t__ WLR_INPUT_DEVICE_POINTER ; 
 scalar_t__ WLR_INPUT_DEVICE_SWITCH ; 
 scalar_t__ WLR_INPUT_DEVICE_TABLET_TOOL ; 
 scalar_t__ WLR_INPUT_DEVICE_TOUCH ; 
 int FUNC0 (struct libinput_device*,struct input_config*,char const*) ; 
 int FUNC1 (struct libinput_device*,struct input_config*,char const*) ; 
 int FUNC2 (struct libinput_device*,struct input_config*,char const*) ; 
 int FUNC3 (struct libinput_device*,struct input_config*,char const*) ; 
 struct input_config* FUNC4 (struct sway_input_device*) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct sway_input_device*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 struct libinput_device* FUNC7 (TYPE_1__*) ; 

void FUNC8(struct sway_input_device *device) {
	struct input_config *ic = FUNC4(device);
	if (!ic || !FUNC6(device->wlr_device)) {
		return;
	}
	bool changed = false;
	const char *device_id = device->identifier;
	struct libinput_device *libinput_device =
		FUNC7(device->wlr_device);
	if (device->wlr_device->type == WLR_INPUT_DEVICE_POINTER ||
			device->wlr_device->type == WLR_INPUT_DEVICE_TABLET_TOOL) {
		changed = FUNC1(libinput_device, ic, device_id);
	} else if (device->wlr_device->type == WLR_INPUT_DEVICE_KEYBOARD) {
		changed = FUNC0(libinput_device, ic, device_id);
	} else if (device->wlr_device->type == WLR_INPUT_DEVICE_SWITCH) {
		changed = FUNC2(libinput_device, ic, device_id);
	} else if (device->wlr_device->type == WLR_INPUT_DEVICE_TOUCH) {
		changed = FUNC3(libinput_device, ic, device_id);
	}
	if (changed) {
		FUNC5("libinput_config", device);
	}
}