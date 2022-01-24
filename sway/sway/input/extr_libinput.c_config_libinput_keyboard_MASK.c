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
struct libinput_device {int dummy; } ;
struct input_config {scalar_t__ send_events; int /*<<< orphan*/  identifier; } ;

/* Variables and functions */
 scalar_t__ INT_MIN ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int FUNC0 (struct libinput_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static bool FUNC2(struct libinput_device *device,
		struct input_config *ic, const char *device_id) {
	FUNC1(SWAY_DEBUG, "config_libinput_keyboard('%s' on  '%s')",
			ic->identifier, device_id);
	if (ic->send_events != INT_MIN) {
		return FUNC0(device, ic->send_events);
	}
	return false;
}