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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC5 (char*,char*) ; 

void FUNC6(void) {
	bool raspi = false;
	FILE *f = FUNC1("/sys/firmware/devicetree/base/model", "r");
	if (!f) {
		return;
	}
	char *line = NULL;
	size_t line_size = 0;
	while (FUNC4(&line, &line_size, f) != -1) {
		if (FUNC5(line, "Raspberry Pi")) {
			raspi = true;
			break;
		}
	}
	FUNC0(f);
	FILE *g = FUNC1("/proc/modules", "r");
	if (!g) {
		FUNC3(line);
		return;
	}
	bool vc4 = false;
	while (FUNC4(&line, &line_size, g) != -1) {
		if (FUNC5(line, "vc4")) {
			vc4 = true;
			break;
		}
	}
	FUNC3(line);
	FUNC0(g);
	if (!vc4 && raspi) {
		FUNC2(stderr, "\x1B[1;31mWarning: You have a "
				"Raspberry Pi, but the vc4 Module is "
				"not loaded! Set 'dtoverlay=vc4-kms-v3d'"
				"in /boot/config.txt and reboot.\x1B[0m\n");
	}
}