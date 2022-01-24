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
typedef  int /*<<< orphan*/  vdev_state_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  fullpath ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int MAXPATHLEN ; 
 scalar_t__ POOL_STATE_UNAVAIL ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_PATH ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_WHOLE_DISK ; 
 int /*<<< orphan*/  ZPOOL_PROP_AUTOEXPAND ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 char* FUNC4 (char*,char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,...) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC14(zpool_handle_t *zhp, void *data)
{
	char *devname = data;
	boolean_t avail_spare, l2cache;
	nvlist_t *tgt;
	int error;

	FUNC5(LOG_INFO, "zfsdle_vdev_online: searching for '%s' in '%s'",
	    devname, FUNC9(zhp));

	if ((tgt = FUNC8(zhp, devname,
	    &avail_spare, &l2cache, NULL)) != NULL) {
		char *path, fullpath[MAXPATHLEN];
		uint64_t wholedisk;

		error = FUNC1(tgt, ZPOOL_CONFIG_PATH, &path);
		if (error) {
			FUNC7(zhp);
			return (0);
		}

		error = FUNC2(tgt, ZPOOL_CONFIG_WHOLE_DISK,
		    &wholedisk);
		if (error)
			wholedisk = 0;

		if (wholedisk) {
			path = FUNC4(path, '/');
			if (path != NULL) {
				path = FUNC6(path + 1);
				if (path == NULL) {
					FUNC7(zhp);
					return (0);
				}
			} else {
				FUNC7(zhp);
				return (0);
			}

			(void) FUNC3(fullpath, path, sizeof (fullpath));
			FUNC0(path);

			/*
			 * We need to reopen the pool associated with this
			 * device so that the kernel can update the size of
			 * the expanded device.  When expanding there is no
			 * need to restart the scrub from the beginning.
			 */
			boolean_t scrub_restart = B_FALSE;
			(void) FUNC12(zhp, &scrub_restart);
		} else {
			(void) FUNC3(fullpath, path, sizeof (fullpath));
		}

		if (FUNC10(zhp, ZPOOL_PROP_AUTOEXPAND, NULL)) {
			vdev_state_t newstate;

			if (FUNC11(zhp) != POOL_STATE_UNAVAIL) {
				error = FUNC13(zhp, fullpath, 0,
				    &newstate);
				FUNC5(LOG_INFO, "zfsdle_vdev_online: "
				    "setting device '%s' to ONLINE state "
				    "in pool '%s': %d", fullpath,
				    FUNC9(zhp), error);
			}
		}
		FUNC7(zhp);
		return (1);
	}
	FUNC7(zhp);
	return (0);
}