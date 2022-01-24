#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ zfs_type; int /*<<< orphan*/  zfs_name; int /*<<< orphan*/ * zfs_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;
struct TYPE_6__ {char* member_0; size_t zc_nvlist_src_size; uintptr_t zc_nvlist_src; int /*<<< orphan*/  zc_name; int /*<<< orphan*/  zc_perm_action; } ;
typedef  TYPE_2__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  errbuf ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
#define  EINVAL 130 
#define  ENOENT 129 
#define  ENOTSUP 128 
 int /*<<< orphan*/  EZFS_BADTYPE ; 
 int /*<<< orphan*/  EZFS_BADVERSION ; 
 int /*<<< orphan*/  EZFS_NOENT ; 
 int /*<<< orphan*/  NV_ENCODE_NATIVE ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  ZFS_IOC_SET_FSACL ; 
 scalar_t__ ZFS_TYPE_FILESYSTEM ; 
 scalar_t__ ZFS_TYPE_VOLUME ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (size_t) ; 
 int FUNC4 (int /*<<< orphan*/ *,char**,size_t*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int,char*) ; 

int
FUNC12(zfs_handle_t *zhp, boolean_t un, nvlist_t *nvl)
{
	zfs_cmd_t zc = {"\0"};
	libzfs_handle_t *hdl = zhp->zfs_hdl;
	char *nvbuf;
	char errbuf[1024];
	size_t nvsz;
	int err;

	FUNC0(zhp->zfs_type == ZFS_TYPE_VOLUME ||
	    zhp->zfs_type == ZFS_TYPE_FILESYSTEM);

	err = FUNC5(nvl, &nvsz, NV_ENCODE_NATIVE);
	FUNC0(err == 0);

	nvbuf = FUNC3(nvsz);

	err = FUNC4(nvl, &nvbuf, &nvsz, NV_ENCODE_NATIVE, 0);
	FUNC0(err == 0);

	zc.zc_nvlist_src_size = nvsz;
	zc.zc_nvlist_src = (uintptr_t)nvbuf;
	zc.zc_perm_action = un;

	(void) FUNC7(zc.zc_name, zhp->zfs_name, sizeof (zc.zc_name));

	if (FUNC10(hdl, ZFS_IOC_SET_FSACL, &zc) != 0) {
		(void) FUNC6(errbuf, sizeof (errbuf),
		    FUNC1(TEXT_DOMAIN, "cannot set permissions on '%s'"),
		    zc.zc_name);
		switch (errno) {
		case ENOTSUP:
			FUNC9(hdl, FUNC1(TEXT_DOMAIN,
			    "pool must be upgraded"));
			err = FUNC8(hdl, EZFS_BADVERSION, errbuf);
			break;
		case EINVAL:
			err = FUNC8(hdl, EZFS_BADTYPE, errbuf);
			break;
		case ENOENT:
			err = FUNC8(hdl, EZFS_NOENT, errbuf);
			break;
		default:
			err = FUNC11(hdl, errno, errbuf);
			break;
		}
	}

	FUNC2(nvbuf);

	return (err);
}