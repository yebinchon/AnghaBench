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
typedef  scalar_t__ u_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC2 (char*,char*) ; 

int
FUNC3(void)
{
	u_int regs[4];
	u_int cpu_vendor[4];

	FUNC0(0, regs);
	cpu_vendor[0] = regs[1];
	cpu_vendor[1] = regs[3];
	cpu_vendor[2] = regs[2];
	cpu_vendor[3] = 0;

	if (FUNC2(((char *) cpu_vendor), "GenuineIntel") == 0) {
		return 0;
	} else {
		FUNC1(stderr, "Unknown cpu vendor \"%s\"\n", ((char *) cpu_vendor));
		return (-1);
	}
}