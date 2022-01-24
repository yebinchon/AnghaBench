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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  objset_t ;

/* Variables and functions */
 scalar_t__ B_TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MASTER_NODE_OBJ ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ZFS_FUID_TABLES ; 
 int /*<<< orphan*/  domain_tree ; 
 scalar_t__ fuid_table_loaded ; 
 int /*<<< orphan*/  idx_tree ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(objset_t *os, uint64_t uid, uint64_t gid)
{
	uint32_t uid_idx, gid_idx;

	uid_idx = FUNC0(uid);
	gid_idx = FUNC0(gid);

	/* Load domain table, if not already loaded */
	if (!fuid_table_loaded && (uid_idx || gid_idx)) {
		uint64_t fuid_obj;

		/* first find the fuid object.  It lives in the master node */
		FUNC1(FUNC3(os, MASTER_NODE_OBJ, ZFS_FUID_TABLES,
		    8, 1, &fuid_obj) == 0);
		FUNC4(&idx_tree, &domain_tree);
		(void) FUNC5(os, fuid_obj,
		    &idx_tree, &domain_tree);
		fuid_table_loaded = B_TRUE;
	}

	FUNC2(uid, "uid");
	FUNC2(gid, "gid");
}