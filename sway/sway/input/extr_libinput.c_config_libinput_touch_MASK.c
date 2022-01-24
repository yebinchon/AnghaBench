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
struct libinput_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  matrix; scalar_t__ configured; } ;
struct input_config {scalar_t__ send_events; TYPE_1__ calibration_matrix; int /*<<< orphan*/  identifier; } ;

/* Variables and functions */
 scalar_t__ INT_MIN ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int FUNC0 (struct libinput_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct libinput_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static bool FUNC3(struct libinput_device *device,
		struct input_config *ic, const char *device_id) {
	FUNC2(SWAY_DEBUG, "config_libinput_touch('%s' on  '%s')",
			ic->identifier, device_id);
	bool changed = false;
	if (ic->send_events != INT_MIN) {
		changed |= FUNC1(device, ic->send_events);
	}
	if (ic->calibration_matrix.configured) {
		changed |= FUNC0(device, ic->calibration_matrix.matrix);
	}
	return changed;
}