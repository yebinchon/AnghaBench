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
struct TYPE_2__ {int /*<<< orphan*/  link; } ;
struct sway_switch {TYPE_1__ switch_toggle; int /*<<< orphan*/  state; struct sway_seat_device* seat_device; } ;
struct sway_seat_device {struct sway_switch* switch_device; } ;
struct sway_seat {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  WLR_SWITCH_STATE_OFF ; 
 struct sway_switch* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sway_switch*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

struct sway_switch *FUNC4(struct sway_seat *seat,
		struct sway_seat_device *device) {
	struct sway_switch *switch_device =
		FUNC0(1, sizeof(struct sway_switch));
	if (!FUNC1(switch_device, "could not allocate switch")) {
		return NULL;
	}
	device->switch_device = switch_device;
	switch_device->seat_device = device;
	switch_device->state = WLR_SWITCH_STATE_OFF;
	FUNC3(&switch_device->switch_toggle.link);
	FUNC2(SWAY_DEBUG, "Allocated switch for device");

	return switch_device;
}