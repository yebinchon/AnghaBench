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
typedef  int /*<<< orphan*/  uint_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ZFS_IOC_LOAD_KEY ; 
 int /*<<< orphan*/  ZPOOL_HIDDEN_ARGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(const char *fsname, boolean_t noop, uint8_t *wkeydata,
    uint_t wkeylen)
{
	int error;
	nvlist_t *ioc_args;
	nvlist_t *hidden_args;

	if (wkeydata == NULL)
		return (EINVAL);

	ioc_args = FUNC3();
	hidden_args = FUNC3();
	FUNC2(hidden_args, "wkeydata", wkeydata, wkeylen);
	FUNC1(ioc_args, ZPOOL_HIDDEN_ARGS, hidden_args);
	if (noop)
		FUNC0(ioc_args, "noop");
	error = FUNC4(ZFS_IOC_LOAD_KEY, fsname, ioc_args, NULL);
	FUNC5(hidden_args);
	FUNC5(ioc_args);

	return (error);
}