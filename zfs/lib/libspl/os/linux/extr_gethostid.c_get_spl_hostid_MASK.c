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
 unsigned long HOSTID_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,unsigned long*) ; 
 char* FUNC3 (char*) ; 
 unsigned long FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long
FUNC5(void)
{
	FILE *f;
	unsigned long hostid;
	char *env;

	/*
	 * Allow the hostid to be subverted for testing.
	 */
	env = FUNC3("ZFS_HOSTID");
	if (env) {
		hostid = FUNC4(env, NULL, 0);
		return (hostid & HOSTID_MASK);
	}

	f = FUNC1("/sys/module/spl/parameters/spl_hostid", "r");
	if (!f)
		return (0);

	if (FUNC2(f, "%lu", &hostid) != 1)
		hostid = 0;

	FUNC0(f);

	return (hostid & HOSTID_MASK);
}