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
typedef  enum libinput_config_status { ____Placeholder_libinput_config_status } libinput_config_status ;

/* Variables and functions */
 int LIBINPUT_CONFIG_STATUS_SUCCESS ; 
 int /*<<< orphan*/  SWAY_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(enum libinput_config_status status) {
	if (status != LIBINPUT_CONFIG_STATUS_SUCCESS) {
		FUNC1(SWAY_ERROR, "Failed to apply libinput config: %s",
			FUNC0(status));
	}
}