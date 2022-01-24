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
struct TYPE_3__ {char* member_0; char* zc_name; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  snapshot ;
typedef  int /*<<< orphan*/  snapbase ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  dataset ;
typedef  int /*<<< orphan*/  clonesnap ;
typedef  int /*<<< orphan*/  clone ;
typedef  int /*<<< orphan*/  bookmark ;
typedef  int /*<<< orphan*/  backup ;

/* Variables and functions */
 int FUNC0 (size_t*) ; 
 int /*<<< orphan*/  B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  DMU_OST_ZFS ; 
 scalar_t__ ZFS_ERR_IOC_CMD_UNAVAIL ; 
 unsigned int ZFS_IOC_FIRST ; 
 unsigned int ZFS_IOC_LAST ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 size_t* ioc_skip ; 
 scalar_t__* ioc_tested ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,unsigned int,TYPE_1__*) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC14 (char const*,char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (char const*) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC20 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 int /*<<< orphan*/  FUNC24 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 int /*<<< orphan*/  FUNC26 (char const*) ; 
 int /*<<< orphan*/  FUNC27 (char const*) ; 
 int /*<<< orphan*/  FUNC28 (char const*) ; 
 int /*<<< orphan*/  FUNC29 (char const*) ; 
 int /*<<< orphan*/  FUNC30 (char const*) ; 
 int /*<<< orphan*/  FUNC31 (char*,int) ; 
 int /*<<< orphan*/  FUNC32 (char*,char*) ; 
 int /*<<< orphan*/  FUNC33 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC34 (char*) ; 
 int /*<<< orphan*/  FUNC35 (char*,char*) ; 
 int /*<<< orphan*/  FUNC36 (char*,int) ; 
 int /*<<< orphan*/  FUNC37 (char*,char*) ; 
 int /*<<< orphan*/  FUNC38 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC39 (char*) ; 
 int /*<<< orphan*/  FUNC40 (char*) ; 
 int /*<<< orphan*/  FUNC41 (char const*) ; 
 int /*<<< orphan*/  FUNC42 (char const*) ; 
 int /*<<< orphan*/  FUNC43 (char const*) ; 
 int /*<<< orphan*/  FUNC44 (char*) ; 
 int /*<<< orphan*/  FUNC45 (char*) ; 
 int /*<<< orphan*/  zfs_fd ; 

__attribute__((used)) static void
FUNC46(const char *pool)
{
	char filepath[] = "/tmp/ioc_test_file_XXXXXX";
	char dataset[ZFS_MAX_DATASET_NAME_LEN];
	char snapbase[ZFS_MAX_DATASET_NAME_LEN + 32];
	char snapshot[ZFS_MAX_DATASET_NAME_LEN + 32];
	char bookmark[ZFS_MAX_DATASET_NAME_LEN + 32];
	char backup[ZFS_MAX_DATASET_NAME_LEN];
	char clone[ZFS_MAX_DATASET_NAME_LEN];
	char clonesnap[ZFS_MAX_DATASET_NAME_LEN + 32];
	int tmpfd, err;

	/*
	 * Setup names and create a working dataset
	 */
	(void) FUNC11(dataset, sizeof (dataset), "%s/test-fs", pool);
	(void) FUNC11(snapbase, sizeof (snapbase), "%s@snapbase", dataset);
	(void) FUNC11(snapshot, sizeof (snapshot), "%s@snapshot", dataset);
	(void) FUNC11(bookmark, sizeof (bookmark), "%s#bookmark", dataset);
	(void) FUNC11(clone, sizeof (clone), "%s/test-fs-clone", pool);
	(void) FUNC11(clonesnap, sizeof (clonesnap), "%s@snap", clone);
	(void) FUNC11(backup, sizeof (backup), "%s/backup", pool);

	err = FUNC7(dataset, DMU_OST_ZFS, NULL, NULL, 0);
	if (err) {
		(void) FUNC5(stderr, "could not create '%s': %s\n",
		    dataset, FUNC12(errno));
		FUNC2(2);
	}

	tmpfd = FUNC9(filepath);
	if (tmpfd < 0) {
		(void) FUNC5(stderr, "could not create '%s': %s\n",
		    filepath, FUNC12(errno));
		FUNC2(2);
	}

	/*
	 * run a test for each ioctl
	 * Note that some test build on previous test operations
	 */
	FUNC30(pool);
	FUNC29(pool);
	FUNC27(pool);
	FUNC28(pool);
	FUNC26(pool);

	FUNC18(dataset);
	FUNC38(pool, snapbase);
	FUNC38(pool, snapshot);

	FUNC39(snapshot);
	FUNC37(snapbase, snapshot);
	FUNC36(snapshot, tmpfd);
	FUNC31(backup, tmpfd);

	FUNC14(pool, snapshot, bookmark);
	FUNC22(dataset);
	FUNC21(bookmark);
	FUNC19(pool, bookmark);

	FUNC24(pool, snapshot);
	FUNC23(snapshot);
	FUNC33(pool, snapshot);

	FUNC17(snapshot, clone);
	FUNC38(pool, clonesnap);
	FUNC32(snapshot, clonesnap);
	FUNC45(clonesnap);
	FUNC45(clone);

	FUNC35(dataset, snapshot);
	FUNC20(pool, snapshot);
	FUNC20(pool, snapbase);

	FUNC34(dataset);
	FUNC16(pool);

	FUNC25(dataset);
	FUNC15(dataset);
	FUNC40(dataset);

	FUNC41(pool);
	FUNC42(pool);

	FUNC43(pool);

	/*
	 * cleanup
	 */
	zfs_cmd_t zc = {"\0"};

	nvlist_t *snaps = FUNC4();
	FUNC3(snaps, snapshot);
	(void) FUNC8(snaps, B_FALSE, NULL);
	FUNC10(snaps);

	(void) FUNC45(dataset);
	(void) FUNC45(backup);

	(void) FUNC1(tmpfd);
	(void) FUNC44(filepath);

	/*
	 * All the unused slots should yield ZFS_ERR_IOC_CMD_UNAVAIL
	 */
	for (int i = 0; i < FUNC0(ioc_skip); i++) {
		if (ioc_tested[ioc_skip[i] - ZFS_IOC_FIRST])
			(void) FUNC5(stderr, "cmd %d tested, not skipped!\n",
			    (int)(ioc_skip[i] - ZFS_IOC_FIRST));

		ioc_tested[ioc_skip[i] - ZFS_IOC_FIRST] = B_TRUE;
	}

	(void) FUNC13(zc.zc_name, pool, sizeof (zc.zc_name));
	zc.zc_name[sizeof (zc.zc_name) - 1] = '\0';

	for (unsigned ioc = ZFS_IOC_FIRST; ioc < ZFS_IOC_LAST; ioc++) {
		unsigned cmd = ioc - ZFS_IOC_FIRST;

		if (ioc_tested[cmd])
			continue;

		if (FUNC6(zfs_fd, ioc, &zc) != 0 &&
		    errno != ZFS_ERR_IOC_CMD_UNAVAIL) {
			(void) FUNC5(stderr, "cmd %d is missing a test case "
			    "(%ld)\n", cmd, errno);
		}
	}
}