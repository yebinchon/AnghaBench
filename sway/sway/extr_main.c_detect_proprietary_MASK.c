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
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  SWAY_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char**,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char*,char*,int) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 

void FUNC8(int allow_unsupported_gpu) {
	FILE *f = FUNC2("/proc/modules", "r");
	if (!f) {
		return;
	}
	char *line = NULL;
	size_t line_size = 0;
	while (FUNC4(&line, &line_size, f) != -1) {
		if (FUNC5(line, "nvidia ", 7) == 0) {
			if (allow_unsupported_gpu) {
				FUNC7(SWAY_ERROR,
						"!!! Proprietary Nvidia drivers are in use !!!");
			} else {
				FUNC7(SWAY_ERROR,
					"Proprietary Nvidia drivers are NOT supported. "
					"Use Nouveau. To launch sway anyway, launch with "
					"--my-next-gpu-wont-be-nvidia and DO NOT report issues.");
				FUNC0(EXIT_FAILURE);
			}
			break;
		}
		if (FUNC6(line, "fglrx")) {
			if (allow_unsupported_gpu) {
				FUNC7(SWAY_ERROR,
						"!!! Proprietary AMD drivers are in use !!!");
			} else {
				FUNC7(SWAY_ERROR, "Proprietary AMD drivers do NOT support "
					"Wayland. Use radeon. To try anyway, launch sway with "
					"--unsupported-gpu and DO NOT report issues.");
				FUNC0(EXIT_FAILURE);
			}
			break;
		}
	}
	FUNC3(line);
	FUNC1(f);
}