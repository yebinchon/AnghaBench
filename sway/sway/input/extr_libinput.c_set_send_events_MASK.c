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
typedef  scalar_t__ uint32_t ;
struct libinput_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 scalar_t__ FUNC0 (struct libinput_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct libinput_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static bool FUNC4(struct libinput_device *device, uint32_t mode) {
	if (FUNC0(device) == mode) {
		return false;
	}
	FUNC3(SWAY_DEBUG, "send_events_set_mode(%d)", mode);
	FUNC2(FUNC1(device, mode));
	return true;
}