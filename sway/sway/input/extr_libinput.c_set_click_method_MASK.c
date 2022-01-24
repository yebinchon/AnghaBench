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
typedef  int uint32_t ;
struct libinput_device {int dummy; } ;
typedef  enum libinput_config_click_method { ____Placeholder_libinput_config_click_method } libinput_config_click_method ;

/* Variables and functions */
 int LIBINPUT_CONFIG_CLICK_METHOD_NONE ; 
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int FUNC0 (struct libinput_device*) ; 
 int FUNC1 (struct libinput_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct libinput_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static bool FUNC5(struct libinput_device *device,
		enum libinput_config_click_method method) {
	uint32_t click = FUNC1(device);
	if ((click & ~LIBINPUT_CONFIG_CLICK_METHOD_NONE) == 0 ||
			FUNC0(device) == method) {
		return false;
	}
	FUNC4(SWAY_DEBUG, "click_set_method(%d)", method);
	FUNC3(FUNC2(device, method));
	return true;
}