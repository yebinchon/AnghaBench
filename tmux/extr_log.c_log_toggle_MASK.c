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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int log_level ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

void
FUNC3(const char *name)
{
	if (log_level == 0) {
		log_level = 1;
		FUNC2(name);
		FUNC1("log opened");
	} else {
		FUNC1("log closed");
		log_level = 0;
		FUNC0();
	}
}