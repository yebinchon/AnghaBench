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
typedef  enum libinput_config_middle_emulation_state { ____Placeholder_libinput_config_middle_emulation_state } libinput_config_middle_emulation_state ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int FUNC0 (struct libinput_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct libinput_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct libinput_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static bool FUNC5(struct libinput_device *dev,
		enum libinput_config_middle_emulation_state mid) {
	if (!FUNC1(dev) ||
			FUNC0(dev) == mid) {
		return false;
	}
	FUNC4(SWAY_DEBUG, "middle_emulation_set_enabled(%d)", mid);
	FUNC3(FUNC2(dev, mid));
	return true;
}