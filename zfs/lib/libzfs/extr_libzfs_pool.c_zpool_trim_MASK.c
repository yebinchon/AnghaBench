#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  zpool_hdl; int /*<<< orphan*/  zpool_name; } ;
typedef  TYPE_1__ zpool_handle_t ;
struct TYPE_7__ {int /*<<< orphan*/  secure; scalar_t__ fullpool; int /*<<< orphan*/  rate; } ;
typedef  TYPE_2__ trimflags_t ;
typedef  int /*<<< orphan*/  pool_trim_func_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  msg ;
typedef  scalar_t__ int64_t ;

/* Variables and functions */
 scalar_t__ EZFS_TRIM_NOTSUP ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  ZPOOL_TRIM_VDEVS ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*,char**) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,scalar_t__,char*,char*) ; 
 int FUNC13 (int /*<<< orphan*/ ,int,char*) ; 
 int FUNC14 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

int
FUNC15(zpool_handle_t *zhp, pool_trim_func_t cmd_type, nvlist_t *vds,
    trimflags_t *trim_flags)
{
	char msg[1024];
	int err;

	nvlist_t *vdev_guids = FUNC1();
	nvlist_t *guids_to_paths = FUNC1();
	nvlist_t *vd_errlist = NULL;
	nvlist_t *errlist;
	nvpair_t *elem;

	err = FUNC14(zhp, vds, vdev_guids,
	    guids_to_paths, &vd_errlist);
	if (err == 0) {
		err = FUNC5(zhp->zpool_name, cmd_type, trim_flags->rate,
		    trim_flags->secure, vdev_guids, &errlist);
		if (err == 0) {
			FUNC2(vdev_guids);
			FUNC2(guids_to_paths);
			return (0);
		}

		if (errlist != NULL) {
			vd_errlist = FUNC3(errlist,
			    ZPOOL_TRIM_VDEVS);
		}

		(void) FUNC9(msg, sizeof (msg),
		    FUNC0(TEXT_DOMAIN, "operation failed"));
	} else {
		FUNC10(vd_errlist != NULL);
	}

	for (elem = FUNC7(vd_errlist, NULL);
	    elem != NULL; elem = FUNC7(vd_errlist, elem)) {
		int64_t vd_error = FUNC11(FUNC4(elem));
		char *path;

		/*
		 * If only the pool was specified, and it was not a secure
		 * trim then suppress warnings for individual vdevs which
		 * do not support trimming.
		 */
		if (vd_error == EZFS_TRIM_NOTSUP &&
		    trim_flags->fullpool &&
		    !trim_flags->secure) {
			continue;
		}

		if (FUNC6(guids_to_paths, FUNC8(elem),
		    &path) != 0)
			path = FUNC8(elem);

		(void) FUNC12(zhp->zpool_hdl, vd_error,
		    "cannot trim '%s'", path);
	}

	FUNC2(vdev_guids);
	FUNC2(guids_to_paths);

	if (vd_errlist != NULL) {
		FUNC2(vd_errlist);
		return (-1);
	}

	return (FUNC13(zhp->zpool_hdl, err, msg));
}