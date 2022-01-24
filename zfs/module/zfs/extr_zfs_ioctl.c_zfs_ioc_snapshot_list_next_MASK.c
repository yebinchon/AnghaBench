#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ zc_nvlist_src_size; scalar_t__ zc_name; scalar_t__ zc_simple; int /*<<< orphan*/  zc_obj; int /*<<< orphan*/  zc_cookie; int /*<<< orphan*/  zc_iflags; int /*<<< orphan*/  zc_nvlist_src; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;

/* Variables and functions */
 int EINTR ; 
 int ENOENT ; 
 int ESRCH ; 
 int /*<<< orphan*/  FORREAL ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  JUSTLOOKING ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  SNAP_ITER_MAX_TXG ; 
 int /*<<< orphan*/  SNAP_ITER_MIN_TXG ; 
 scalar_t__ ZFS_MAX_DATASET_NAME_LEN ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 char* FUNC13 (scalar_t__,char) ; 
 scalar_t__ FUNC14 (scalar_t__,char*,int) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 int FUNC16 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC17(zfs_cmd_t *zc)
{
	int error;
	objset_t *os, *ossnap;
	dsl_dataset_t *ds;
	uint64_t min_txg = 0, max_txg = 0;

	if (zc->zc_nvlist_src_size != 0) {
		nvlist_t *props = NULL;
		error = FUNC9(zc->zc_nvlist_src, zc->zc_nvlist_src_size,
		    zc->zc_iflags, &props);
		if (error != 0)
			return (error);
		(void) FUNC12(props, SNAP_ITER_MIN_TXG,
		    &min_txg);
		(void) FUNC12(props, SNAP_ITER_MAX_TXG,
		    &max_txg);
		FUNC11(props);
	}

	error = FUNC2(zc->zc_name, FTAG, &os);
	if (error != 0) {
		return (error == ENOENT ? ESRCH : error);
	}

	/*
	 * A dataset name of maximum length cannot have any snapshots,
	 * so exit immediately.
	 */
	if (FUNC14(zc->zc_name, "@", sizeof (zc->zc_name)) >=
	    ZFS_MAX_DATASET_NAME_LEN) {
		FUNC4(os, FTAG);
		return (FUNC0(ESRCH));
	}

	while (error == 0) {
		if (FUNC10(JUSTLOOKING) && FUNC10(FORREAL)) {
			error = FUNC0(EINTR);
			break;
		}

		error = FUNC5(os,
		    sizeof (zc->zc_name) - FUNC15(zc->zc_name),
		    zc->zc_name + FUNC15(zc->zc_name), &zc->zc_obj,
		    &zc->zc_cookie, NULL);
		if (error == ENOENT) {
			error = FUNC0(ESRCH);
			break;
		} else if (error != 0) {
			break;
		}

		error = FUNC6(FUNC3(os), zc->zc_obj,
		    FTAG, &ds);
		if (error != 0)
			break;

		if ((min_txg != 0 && FUNC8(ds) < min_txg) ||
		    (max_txg != 0 && FUNC8(ds) > max_txg)) {
			FUNC7(ds, FTAG);
			/* undo snapshot name append */
			*(FUNC13(zc->zc_name, '@') + 1) = '\0';
			/* skip snapshot */
			continue;
		}

		if (zc->zc_simple) {
			FUNC7(ds, FTAG);
			break;
		}

		if ((error = FUNC1(ds, &ossnap)) != 0) {
			FUNC7(ds, FTAG);
			break;
		}
		if ((error = FUNC16(zc, ossnap)) != 0) {
			FUNC7(ds, FTAG);
			break;
		}
		FUNC7(ds, FTAG);
		break;
	}

	FUNC4(os, FTAG);
	/* if we failed, undo the @ that we tacked on to zc_name */
	if (error != 0)
		*FUNC13(zc->zc_name, '@') = '\0';
	return (error);
}