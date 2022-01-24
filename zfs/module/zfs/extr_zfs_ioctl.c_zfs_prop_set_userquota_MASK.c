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
typedef  int /*<<< orphan*/  zfsvfs_t ;
typedef  int /*<<< orphan*/  zfs_userquota_prop_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 scalar_t__ DATA_TYPE_NVLIST ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ZPROP_VALUE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,unsigned int*) ; 
 char* FUNC7 (char const*,char) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC11(const char *dsname, nvpair_t *pair)
{
	const char *propname = FUNC3(pair);
	uint64_t *valary;
	unsigned int vallen;
	const char *domain;
	char *dash;
	zfs_userquota_prop_t type;
	uint64_t rid;
	uint64_t quota;
	zfsvfs_t *zfsvfs;
	int err;

	if (FUNC4(pair) == DATA_TYPE_NVLIST) {
		nvlist_t *attrs;
		FUNC1(FUNC5(pair, &attrs) == 0);
		if (FUNC2(attrs, ZPROP_VALUE,
		    &pair) != 0)
			return (FUNC0(EINVAL));
	}

	/*
	 * A correctly constructed propname is encoded as
	 * userquota@<rid>-<domain>.
	 */
	if ((dash = FUNC7(propname, '-')) == NULL ||
	    FUNC6(pair, &valary, &vallen) != 0 ||
	    vallen != 3)
		return (FUNC0(EINVAL));

	domain = dash + 1;
	type = valary[0];
	rid = valary[1];
	quota = valary[2];

	err = FUNC9(dsname, FTAG, &zfsvfs, B_FALSE);
	if (err == 0) {
		err = FUNC8(zfsvfs, type, domain, rid, quota);
		FUNC10(zfsvfs, FTAG);
	}

	return (err);
}