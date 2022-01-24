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
typedef  int /*<<< orphan*/  zpool_handle_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  msg ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ EZFS_ISL2CACHE ; 
 scalar_t__ EZFS_ISSPARE ; 
 scalar_t__ EZFS_NODEVICE ; 
 int MAXNAMELEN ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_GUID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,char*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(zpool_handle_t *zhp, nvlist_t *vds,
    nvlist_t *vdev_guids, nvlist_t *guids_to_paths, nvlist_t **vd_errlist)
{
	nvlist_t *errlist = NULL;
	int error = 0;

	for (nvpair_t *elem = FUNC6(vds, NULL); elem != NULL;
	    elem = FUNC6(vds, elem)) {
		boolean_t spare, cache;

		char *vd_path = FUNC7(elem);
		nvlist_t *tgt = FUNC10(zhp, vd_path, &spare, &cache,
		    NULL);

		if ((tgt == NULL) || cache || spare) {
			if (errlist == NULL) {
				errlist = FUNC3();
				error = EINVAL;
			}

			uint64_t err = (tgt == NULL) ? EZFS_NODEVICE :
			    (spare ? EZFS_ISSPARE : EZFS_ISL2CACHE);
			FUNC0(errlist, vd_path, err);
			continue;
		}

		uint64_t guid = FUNC5(tgt, ZPOOL_CONFIG_GUID);
		FUNC2(vdev_guids, vd_path, guid);

		char msg[MAXNAMELEN];
		(void) FUNC8(msg, sizeof (msg), "%llu", (u_longlong_t)guid);
		FUNC1(guids_to_paths, msg, vd_path);
	}

	if (error != 0) {
		FUNC9(errlist != NULL);
		if (vd_errlist != NULL)
			*vd_errlist = errlist;
		else
			FUNC4(errlist);
	}

	return (error);
}