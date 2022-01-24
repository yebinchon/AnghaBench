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
struct sway_input_device {int /*<<< orphan*/  wlr_device; } ;
struct input_config {scalar_t__ send_events; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct input_config *ic,
		struct sway_input_device *input_device, int argc, char **argv) {
	if (!FUNC2(input_device->wlr_device)) {
		return;
	}
	// Get the currently set event mode since ic is a new config that will be
	// merged on the existing later. It should be set to INT_MIN before this.
	ic->send_events = FUNC0(
			FUNC3(input_device->wlr_device));

	int index;
	for (index = 0; index < argc; ++index) {
		if (FUNC1(argv[index]) == ic->send_events) {
			++index;
			break;
		}
	}
	ic->send_events = FUNC1(argv[index % argc]);
}