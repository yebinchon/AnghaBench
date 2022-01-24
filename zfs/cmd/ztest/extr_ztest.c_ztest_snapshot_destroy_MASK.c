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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  int /*<<< orphan*/  snapname ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int ENOENT ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static boolean_t
FUNC3(char *osname, uint64_t id)
{
	char snapname[ZFS_MAX_DATASET_NAME_LEN];
	int error;

	(void) FUNC2(snapname, sizeof (snapname), "%s@%llu", osname,
	    (u_longlong_t)id);

	error = FUNC0(snapname, B_FALSE);
	if (error != 0 && error != ENOENT)
		FUNC1(0, "ztest_snapshot_destroy(%s) = %d", snapname, error);
	return (B_TRUE);
}