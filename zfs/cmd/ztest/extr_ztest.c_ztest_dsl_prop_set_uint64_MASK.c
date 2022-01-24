#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zfs_prop_t ;
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_2__ {int zo_verbose; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 int /*<<< orphan*/  UMEM_NOFAIL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZPROP_SRC_LOCAL ; 
 int /*<<< orphan*/  ZPROP_SRC_NONE ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,scalar_t__*,char*) ; 
 int FUNC3 (char*,char const*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char const*,...) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__,char const**) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_1__ ztest_opts ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(char *osname, zfs_prop_t prop, uint64_t value,
    boolean_t inherit)
{
	const char *propname = FUNC8(prop);
	const char *valname;
	char *setpoint;
	uint64_t curval;
	int error;

	error = FUNC3(osname, propname,
	    (inherit ? ZPROP_SRC_NONE : ZPROP_SRC_LOCAL), value);

	if (error == ENOSPC) {
		FUNC9(FTAG);
		return (error);
	}
	FUNC0(error);

	setpoint = FUNC5(MAXPATHLEN, UMEM_NOFAIL);
	FUNC1(FUNC2(osname, propname, &curval, setpoint));

	if (ztest_opts.zo_verbose >= 6) {
		int err;

		err = FUNC7(prop, curval, &valname);
		if (err)
			(void) FUNC4("%s %s = %llu at '%s'\n", osname,
			    propname, (unsigned long long)curval, setpoint);
		else
			(void) FUNC4("%s %s = %s at '%s'\n",
			    osname, propname, valname, setpoint);
	}
	FUNC6(setpoint, MAXPATHLEN);

	return (error);
}