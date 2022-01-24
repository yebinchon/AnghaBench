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
struct sway_input_device {TYPE_1__* wlr_device; } ;
struct libinput_device {int dummy; } ;
struct TYPE_3__ {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ WLR_INPUT_DEVICE_POINTER ; 
 scalar_t__ FUNC0 (struct libinput_device*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 struct libinput_device* FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static bool FUNC3(struct sway_input_device *device) {
	if (device->wlr_device->type != WLR_INPUT_DEVICE_POINTER ||
			!FUNC1(device->wlr_device)) {
		return false;
	}

	struct libinput_device *libinput_device =
		FUNC2(device->wlr_device);

	return FUNC0(libinput_device) > 0;
}