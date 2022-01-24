#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {size_t zc_nvlist_src_size; scalar_t__ zc_nvlist_dst; scalar_t__ zc_nvlist_src; int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  UMEM_NOFAIL ; 
 int /*<<< orphan*/  ZFS_DEV ; 
 int /*<<< orphan*/  ZFS_IOC_POOL_SYNC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 char* FUNC3 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 TYPE_1__* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int FUNC11 (int,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC12(void *unused, const char *name, uint64_t guid,
    boolean_t *isactive)
{
	zfs_cmd_t *zcp;
	nvlist_t *innvl;
	char *packed = NULL;
	size_t size = 0;
	int fd, ret;

	/*
	 * Use ZFS_IOC_POOL_SYNC to confirm if a pool is active
	 */

	fd = FUNC7(ZFS_DEV, O_RDWR);
	if (fd < 0)
		return (-1);

	zcp = FUNC10(sizeof (zfs_cmd_t), UMEM_NOFAIL);

	innvl = FUNC2();
	FUNC1(innvl, "force", B_FALSE);

	(void) FUNC8(zcp->zc_name, name, sizeof (zcp->zc_name));
	packed = FUNC3(innvl, &size);
	zcp->zc_nvlist_src = (uint64_t)(uintptr_t)packed;
	zcp->zc_nvlist_src_size = size;

	ret = FUNC11(fd, ZFS_IOC_POOL_SYNC, zcp);

	FUNC4(packed, size);
	FUNC5((void *)(uintptr_t)zcp->zc_nvlist_dst);
	FUNC6(innvl);
	FUNC9(zcp, sizeof (zfs_cmd_t));

	(void) FUNC0(fd);

	*isactive = (ret == 0);

	return (0);
}