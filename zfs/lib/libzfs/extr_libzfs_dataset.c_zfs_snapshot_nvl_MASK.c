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
typedef  int /*<<< orphan*/  pool ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  errbuf ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
#define  EXDEV 128 
 int /*<<< orphan*/  EZFS_EXISTS ; 
 int /*<<< orphan*/  EZFS_INVALIDNAME ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZFS_TYPE_SNAPSHOT ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char const* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,...) ; 
 size_t FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,char*) ; 

int
FUNC16(libzfs_handle_t *hdl, nvlist_t *snaps, nvlist_t *props)
{
	int ret;
	char errbuf[1024];
	nvpair_t *elem;
	nvlist_t *errors;
	zpool_handle_t *zpool_hdl;
	char pool[ZFS_MAX_DATASET_NAME_LEN];

	(void) FUNC6(errbuf, sizeof (errbuf), FUNC0(TEXT_DOMAIN,
	    "cannot create snapshots "));

	elem = NULL;
	while ((elem = FUNC4(snaps, elem)) != NULL) {
		const char *snapname = FUNC5(elem);

		/* validate the target name */
		if (!FUNC13(hdl, snapname, ZFS_TYPE_SNAPSHOT,
		    B_TRUE)) {
			(void) FUNC6(errbuf, sizeof (errbuf),
			    FUNC0(TEXT_DOMAIN,
			    "cannot create snapshot '%s'"), snapname);
			return (FUNC9(hdl, EZFS_INVALIDNAME, errbuf));
		}
	}

	/*
	 * get pool handle for prop validation. assumes all snaps are in the
	 * same pool, as does lzc_snapshot (below).
	 */
	elem = FUNC4(snaps, NULL);
	(void) FUNC8(pool, FUNC5(elem), sizeof (pool));
	pool[FUNC7(pool, "/@")] = '\0';
	zpool_hdl = FUNC15(hdl, pool);
	if (zpool_hdl == NULL)
		return (-1);

	if (props != NULL &&
	    (props = FUNC12(hdl, ZFS_TYPE_SNAPSHOT,
	    props, B_FALSE, NULL, zpool_hdl, B_FALSE, errbuf)) == NULL) {
		FUNC14(zpool_hdl);
		return (-1);
	}
	FUNC14(zpool_hdl);

	ret = FUNC2(snaps, props, &errors);

	if (ret != 0) {
		boolean_t printed = B_FALSE;
		for (elem = FUNC4(errors, NULL);
		    elem != NULL;
		    elem = FUNC4(errors, elem)) {
			(void) FUNC6(errbuf, sizeof (errbuf),
			    FUNC0(TEXT_DOMAIN,
			    "cannot create snapshot '%s'"), FUNC5(elem));
			(void) FUNC11(hdl,
			    FUNC1(elem), errbuf);
			printed = B_TRUE;
		}
		if (!printed) {
			switch (ret) {
			case EXDEV:
				FUNC10(hdl, FUNC0(TEXT_DOMAIN,
				    "multiple snapshots of same "
				    "fs not allowed"));
				(void) FUNC9(hdl, EZFS_EXISTS, errbuf);

				break;
			default:
				(void) FUNC11(hdl, ret, errbuf);
			}
		}
	}

	FUNC3(props);
	FUNC3(errors);
	return (ret);
}