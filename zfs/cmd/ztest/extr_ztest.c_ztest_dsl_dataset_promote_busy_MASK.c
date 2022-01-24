#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* zd_name; } ;
typedef  TYPE_1__ ztest_ds_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  int /*<<< orphan*/  objset_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  DMU_OST_ANY ; 
 int EBUSY ; 
 int EEXIST ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  UMEM_NOFAIL ; 
 int /*<<< orphan*/  ZFS_MAX_DATASET_NAME_LEN ; 
 int FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (char*,scalar_t__) ; 
 int FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*,char) ; 
 char* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int FUNC11 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC12 (char*,scalar_t__) ; 
 int /*<<< orphan*/  ztest_name_lock ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

void
FUNC14(ztest_ds_t *zd, uint64_t id)
{
	objset_t *os;
	char *snap1name;
	char *clone1name;
	char *snap2name;
	char *clone2name;
	char *snap3name;
	char *osname = zd->zd_name;
	int error;

	snap1name  = FUNC9(ZFS_MAX_DATASET_NAME_LEN, UMEM_NOFAIL);
	clone1name = FUNC9(ZFS_MAX_DATASET_NAME_LEN, UMEM_NOFAIL);
	snap2name  = FUNC9(ZFS_MAX_DATASET_NAME_LEN, UMEM_NOFAIL);
	clone2name = FUNC9(ZFS_MAX_DATASET_NAME_LEN, UMEM_NOFAIL);
	snap3name  = FUNC9(ZFS_MAX_DATASET_NAME_LEN, UMEM_NOFAIL);

	(void) FUNC5(&ztest_name_lock);

	FUNC12(osname, id);

	(void) FUNC7(snap1name, ZFS_MAX_DATASET_NAME_LEN,
	    "%s@s1_%llu", osname, (u_longlong_t)id);
	(void) FUNC7(clone1name, ZFS_MAX_DATASET_NAME_LEN,
	    "%s/c1_%llu", osname, (u_longlong_t)id);
	(void) FUNC7(snap2name, ZFS_MAX_DATASET_NAME_LEN,
	    "%s@s2_%llu", clone1name, (u_longlong_t)id);
	(void) FUNC7(clone2name, ZFS_MAX_DATASET_NAME_LEN,
	    "%s/c2_%llu", osname, (u_longlong_t)id);
	(void) FUNC7(snap3name, ZFS_MAX_DATASET_NAME_LEN,
	    "%s@s3_%llu", clone1name, (u_longlong_t)id);

	error = FUNC2(osname, FUNC8(snap1name, '@') + 1);
	if (error && error != EEXIST) {
		if (error == ENOSPC) {
			FUNC13(FTAG);
			goto out;
		}
		FUNC4(0, "dmu_take_snapshot(%s) = %d", snap1name, error);
	}

	error = FUNC0(clone1name, snap1name);
	if (error) {
		if (error == ENOSPC) {
			FUNC13(FTAG);
			goto out;
		}
		FUNC4(0, "dmu_objset_create(%s) = %d", clone1name, error);
	}

	error = FUNC2(clone1name, FUNC8(snap2name, '@') + 1);
	if (error && error != EEXIST) {
		if (error == ENOSPC) {
			FUNC13(FTAG);
			goto out;
		}
		FUNC4(0, "dmu_open_snapshot(%s) = %d", snap2name, error);
	}

	error = FUNC2(clone1name, FUNC8(snap3name, '@') + 1);
	if (error && error != EEXIST) {
		if (error == ENOSPC) {
			FUNC13(FTAG);
			goto out;
		}
		FUNC4(0, "dmu_open_snapshot(%s) = %d", snap3name, error);
	}

	error = FUNC0(clone2name, snap3name);
	if (error) {
		if (error == ENOSPC) {
			FUNC13(FTAG);
			goto out;
		}
		FUNC4(0, "dmu_objset_create(%s) = %d", clone2name, error);
	}

	error = FUNC11(snap2name, DMU_OST_ANY, B_TRUE, B_TRUE,
	    FTAG, &os);
	if (error)
		FUNC4(0, "dmu_objset_own(%s) = %d", snap2name, error);
	error = FUNC3(clone2name, NULL);
	if (error == ENOSPC) {
		FUNC1(os, B_TRUE, FTAG);
		FUNC13(FTAG);
		goto out;
	}
	if (error != EBUSY)
		FUNC4(0, "dsl_dataset_promote(%s), %d, not EBUSY", clone2name,
		    error);
	FUNC1(os, B_TRUE, FTAG);

out:
	FUNC12(osname, id);

	(void) FUNC6(&ztest_name_lock);

	FUNC10(snap1name, ZFS_MAX_DATASET_NAME_LEN);
	FUNC10(clone1name, ZFS_MAX_DATASET_NAME_LEN);
	FUNC10(snap2name, ZFS_MAX_DATASET_NAME_LEN);
	FUNC10(clone2name, ZFS_MAX_DATASET_NAME_LEN);
	FUNC10(snap3name, ZFS_MAX_DATASET_NAME_LEN);
}