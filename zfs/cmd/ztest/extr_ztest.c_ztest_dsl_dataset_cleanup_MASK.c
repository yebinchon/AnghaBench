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

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int ENOENT ; 
 int /*<<< orphan*/  UMEM_NOFAIL ; 
 int /*<<< orphan*/  ZFS_MAX_DATASET_NAME_LEN ; 
 int FUNC0 (char*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

void
FUNC6(char *osname, uint64_t id)
{
	char *snap1name;
	char *clone1name;
	char *snap2name;
	char *clone2name;
	char *snap3name;
	int error;

	snap1name  = FUNC4(ZFS_MAX_DATASET_NAME_LEN, UMEM_NOFAIL);
	clone1name = FUNC4(ZFS_MAX_DATASET_NAME_LEN, UMEM_NOFAIL);
	snap2name  = FUNC4(ZFS_MAX_DATASET_NAME_LEN, UMEM_NOFAIL);
	clone2name = FUNC4(ZFS_MAX_DATASET_NAME_LEN, UMEM_NOFAIL);
	snap3name  = FUNC4(ZFS_MAX_DATASET_NAME_LEN, UMEM_NOFAIL);

	(void) FUNC3(snap1name, ZFS_MAX_DATASET_NAME_LEN,
	    "%s@s1_%llu", osname, (u_longlong_t)id);
	(void) FUNC3(clone1name, ZFS_MAX_DATASET_NAME_LEN,
	    "%s/c1_%llu", osname, (u_longlong_t)id);
	(void) FUNC3(snap2name, ZFS_MAX_DATASET_NAME_LEN,
	    "%s@s2_%llu", clone1name, (u_longlong_t)id);
	(void) FUNC3(clone2name, ZFS_MAX_DATASET_NAME_LEN,
	    "%s/c2_%llu", osname, (u_longlong_t)id);
	(void) FUNC3(snap3name, ZFS_MAX_DATASET_NAME_LEN,
	    "%s@s3_%llu", clone1name, (u_longlong_t)id);

	error = FUNC0(clone2name);
	if (error && error != ENOENT)
		FUNC2(0, "dsl_destroy_head(%s) = %d", clone2name, error);
	error = FUNC1(snap3name, B_FALSE);
	if (error && error != ENOENT)
		FUNC2(0, "dsl_destroy_snapshot(%s) = %d", snap3name, error);
	error = FUNC1(snap2name, B_FALSE);
	if (error && error != ENOENT)
		FUNC2(0, "dsl_destroy_snapshot(%s) = %d", snap2name, error);
	error = FUNC0(clone1name);
	if (error && error != ENOENT)
		FUNC2(0, "dsl_destroy_head(%s) = %d", clone1name, error);
	error = FUNC1(snap1name, B_FALSE);
	if (error && error != ENOENT)
		FUNC2(0, "dsl_destroy_snapshot(%s) = %d", snap1name, error);

	FUNC5(snap1name, ZFS_MAX_DATASET_NAME_LEN);
	FUNC5(clone1name, ZFS_MAX_DATASET_NAME_LEN);
	FUNC5(snap2name, ZFS_MAX_DATASET_NAME_LEN);
	FUNC5(clone2name, ZFS_MAX_DATASET_NAME_LEN);
	FUNC5(snap3name, ZFS_MAX_DATASET_NAME_LEN);
}