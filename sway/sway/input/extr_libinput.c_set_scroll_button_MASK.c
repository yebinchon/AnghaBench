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
 scalar_t__ LIBINPUT_CONFIG_SCROLL_NO_SCROLL ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 scalar_t__ FUNC0 (struct libinput_device*) ; 
 scalar_t__ FUNC1 (struct libinput_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct libinput_device*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static bool FUNC5(struct libinput_device *dev, uint32_t button) {
	uint32_t scroll = FUNC1(dev);
	if ((scroll & ~LIBINPUT_CONFIG_SCROLL_NO_SCROLL) == 0 ||
			FUNC0(dev) == button) {
		return false;
	}
	FUNC4(SWAY_DEBUG, "scroll_set_button(%d)", button);
	FUNC3(FUNC2(dev, button));
	return true;
}