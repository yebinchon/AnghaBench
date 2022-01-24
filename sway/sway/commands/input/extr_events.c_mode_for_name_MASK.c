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

/* Variables and functions */
 int LIBINPUT_CONFIG_SEND_EVENTS_DISABLED ; 
 int LIBINPUT_CONFIG_SEND_EVENTS_DISABLED_ON_EXTERNAL_MOUSE ; 
 int LIBINPUT_CONFIG_SEND_EVENTS_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 

__attribute__((used)) static int FUNC1(const char *name) {
	if (!FUNC0(name, "enabled")) {
		return LIBINPUT_CONFIG_SEND_EVENTS_ENABLED;
	} else if (!FUNC0(name, "disabled_on_external_mouse")) {
		return LIBINPUT_CONFIG_SEND_EVENTS_DISABLED_ON_EXTERNAL_MOUSE;
	} else if (!FUNC0(name, "disabled")) {
		return LIBINPUT_CONFIG_SEND_EVENTS_DISABLED;
	}
	return -1;
}