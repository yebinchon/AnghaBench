#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * zpool_hdl; int /*<<< orphan*/  zpool_name; int /*<<< orphan*/  zpool_config; } ;
typedef  TYPE_1__ zpool_handle_t ;
struct TYPE_8__ {char* member_0; uintptr_t zc_nvlist_dst; int zc_nvlist_dst_size; int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_2__ zfs_cmd_t ;
struct TYPE_9__ {scalar_t__ zb_objset; scalar_t__ zb_object; } ;
typedef  TYPE_3__ zbookmark_phys_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  ZFS_IOC_ERROR_LOG ; 
 int /*<<< orphan*/  ZPOOL_CONFIG_ERRCOUNT ; 
 int /*<<< orphan*/  ZPOOL_ERR_DATASET ; 
 int /*<<< orphan*/  ZPOOL_ERR_OBJECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  zbookmark_mem_compare ; 
 void* FUNC11 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC13 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

int
FUNC14(zpool_handle_t *zhp, nvlist_t **nverrlistp)
{
	zfs_cmd_t zc = {"\0"};
	libzfs_handle_t *hdl = zhp->zpool_hdl;
	uint64_t count;
	zbookmark_phys_t *zb = NULL;
	int i;

	/*
	 * Retrieve the raw error list from the kernel.  If the number of errors
	 * has increased, allocate more space and continue until we get the
	 * entire list.
	 */
	FUNC10(FUNC7(zhp->zpool_config, ZPOOL_CONFIG_ERRCOUNT,
	    &count) == 0);
	if (count == 0)
		return (0);
	zc.zc_nvlist_dst = (uintptr_t)FUNC11(zhp->zpool_hdl,
	    count * sizeof (zbookmark_phys_t));
	zc.zc_nvlist_dst_size = count;
	(void) FUNC9(zc.zc_name, zhp->zpool_name);
	for (;;) {
		if (FUNC12(zhp->zpool_hdl, ZFS_IOC_ERROR_LOG,
		    &zc) != 0) {
			FUNC1((void *)(uintptr_t)zc.zc_nvlist_dst);
			if (errno == ENOMEM) {
				void *dst;

				count = zc.zc_nvlist_dst_size;
				dst = FUNC11(zhp->zpool_hdl, count *
				    sizeof (zbookmark_phys_t));
				zc.zc_nvlist_dst = (uintptr_t)dst;
			} else {
				return (FUNC13(hdl, errno,
				    FUNC0(TEXT_DOMAIN, "errors: List of "
				    "errors unavailable")));
			}
		} else {
			break;
		}
	}

	/*
	 * Sort the resulting bookmarks.  This is a little confusing due to the
	 * implementation of ZFS_IOC_ERROR_LOG.  The bookmarks are copied last
	 * to first, and 'zc_nvlist_dst_size' indicates the number of bookmarks
	 * _not_ copied as part of the process.  So we point the start of our
	 * array appropriate and decrement the total number of elements.
	 */
	zb = ((zbookmark_phys_t *)(uintptr_t)zc.zc_nvlist_dst) +
	    zc.zc_nvlist_dst_size;
	count -= zc.zc_nvlist_dst_size;

	FUNC8(zb, count, sizeof (zbookmark_phys_t), zbookmark_mem_compare);

	FUNC10(FUNC5(nverrlistp, 0, KM_SLEEP) == 0);

	/*
	 * Fill in the nverrlistp with nvlist's of dataset and object numbers.
	 */
	for (i = 0; i < count; i++) {
		nvlist_t *nv;

		/* ignoring zb_blkid and zb_level for now */
		if (i > 0 && zb[i-1].zb_objset == zb[i].zb_objset &&
		    zb[i-1].zb_object == zb[i].zb_object)
			continue;

		if (FUNC5(&nv, NV_UNIQUE_NAME, KM_SLEEP) != 0)
			goto nomem;
		if (FUNC4(nv, ZPOOL_ERR_DATASET,
		    zb[i].zb_objset) != 0) {
			FUNC6(nv);
			goto nomem;
		}
		if (FUNC4(nv, ZPOOL_ERR_OBJECT,
		    zb[i].zb_object) != 0) {
			FUNC6(nv);
			goto nomem;
		}
		if (FUNC3(*nverrlistp, "ejk", nv) != 0) {
			FUNC6(nv);
			goto nomem;
		}
		FUNC6(nv);
	}

	FUNC1((void *)(uintptr_t)zc.zc_nvlist_dst);
	return (0);

nomem:
	FUNC1((void *)(uintptr_t)zc.zc_nvlist_dst);
	return (FUNC2(zhp->zpool_hdl));
}