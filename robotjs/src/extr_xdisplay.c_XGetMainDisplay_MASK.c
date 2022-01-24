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
typedef  int /*<<< orphan*/  Display ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  (*) ()) ; 
 int /*<<< orphan*/ * displayName ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ hasDisplayNameChanged ; 
 int /*<<< orphan*/ * mainDisplay ; 
 int registered ; 
 int /*<<< orphan*/  stderr ; 

Display *FUNC4(void)
{
	/* Close the display if displayName has changed */
	if (hasDisplayNameChanged) {
		FUNC0();
		hasDisplayNameChanged = 0;
	}

	if (mainDisplay == NULL) {
		/* First try the user set displayName */
		mainDisplay = FUNC1(displayName);

		/* Then try using environment variable DISPLAY */
		if (mainDisplay == NULL) {
			mainDisplay = FUNC1(NULL);
		}

		if (mainDisplay == NULL) {
			FUNC3("Could not open main display\n", stderr);
		} else if (!registered) {
			FUNC2(&XCloseMainDisplay);
			registered = 1;
		}
	}

	return mainDisplay;
}