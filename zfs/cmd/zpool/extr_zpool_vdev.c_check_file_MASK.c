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
typedef  int pool_state_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  O_RDONLY ; 
#define  POOL_STATE_ACTIVE 131 
#define  POOL_STATE_EXPORTED 130 
#define  POOL_STATE_POTENTIALLY_ACTIVE 129 
#define  POOL_STATE_SPARE 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  g_zfs ; 
 char* FUNC2 (char*) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,char const*,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int,int*,char**,scalar_t__*) ; 

int
FUNC6(const char *file, boolean_t force, boolean_t isspare)
{
	char  *name;
	int fd;
	int ret = 0;
	pool_state_t state;
	boolean_t inuse;

	if ((fd = FUNC3(file, O_RDONLY)) < 0)
		return (0);

	if (FUNC5(g_zfs, fd, &state, &name, &inuse) == 0 && inuse) {
		const char *desc;

		switch (state) {
		case POOL_STATE_ACTIVE:
			desc = FUNC2("active");
			break;

		case POOL_STATE_EXPORTED:
			desc = FUNC2("exported");
			break;

		case POOL_STATE_POTENTIALLY_ACTIVE:
			desc = FUNC2("potentially active");
			break;

		default:
			desc = FUNC2("unknown");
			break;
		}

		/*
		 * Allow hot spares to be shared between pools.
		 */
		if (state == POOL_STATE_SPARE && isspare) {
			FUNC1(name);
			(void) FUNC0(fd);
			return (0);
		}

		if (state == POOL_STATE_ACTIVE ||
		    state == POOL_STATE_SPARE || !force) {
			switch (state) {
			case POOL_STATE_SPARE:
				FUNC4(FUNC2("%s is reserved as a hot "
				    "spare for pool %s\n"), file, name);
				break;
			default:
				FUNC4(FUNC2("%s is part of %s pool "
				    "'%s'\n"), file, desc, name);
				break;
			}
			ret = -1;
		}

		FUNC1(name);
	}

	(void) FUNC0(fd);
	return (ret);
}