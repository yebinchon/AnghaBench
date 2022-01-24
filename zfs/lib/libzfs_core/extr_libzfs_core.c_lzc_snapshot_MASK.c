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
typedef  int /*<<< orphan*/  pool ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZFS_IOC_SNAPSHOT ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int) ; 

int
FUNC8(nvlist_t *snaps, nvlist_t *props, nvlist_t **errlist)
{
	nvpair_t *elem;
	nvlist_t *args;
	int error;
	char pool[ZFS_MAX_DATASET_NAME_LEN];

	*errlist = NULL;

	/* determine the pool name */
	elem = FUNC4(snaps, NULL);
	if (elem == NULL)
		return (0);
	(void) FUNC7(pool, FUNC5(elem), sizeof (pool));
	pool[FUNC6(pool, "/@")] = '\0';

	args = FUNC1();
	FUNC0(args, "snaps", snaps);
	if (props != NULL)
		FUNC0(args, "props", props);

	error = FUNC2(ZFS_IOC_SNAPSHOT, pool, args, errlist);
	FUNC3(args);

	return (error);
}