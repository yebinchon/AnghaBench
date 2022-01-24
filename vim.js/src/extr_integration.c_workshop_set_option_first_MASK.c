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
typedef  int Boolean ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int save_files ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

void FUNC6(char *name, char *value)
{
	/* Currently value can only be on/off. This may change later (for
	 * example to set an option like "balloon evaluate delay", but
	 * for now just convert it into a boolean */
	Boolean on = !FUNC1(value, "on");

	if (!FUNC1(name, "workshopkeys")) {
		FUNC4(on);
	} else if (!FUNC1(name, "savefiles")) {
		save_files = on;
	} else if (!FUNC1(name, "balloon")) {
		FUNC3(on);
	} else if (!FUNC1(name, "balloondelay")) {
		int delay = FUNC0(value);
		/* Should I validate the number here?? */
		FUNC2(delay);
	} else {
		/* Let editor interpret it */
		FUNC5(name, value);
	}
}