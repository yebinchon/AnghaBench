#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* member_0; int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  uint_t ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
struct TYPE_9__ {int /*<<< orphan*/  import; int /*<<< orphan*/  create; } ;
typedef  TYPE_2__ prop_flags_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  msg ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
#define  EBUSY 132 
#define  ENOSPC 131 
#define  ENOTBLK 130 
#define  EOVERFLOW 129 
#define  ERANGE 128 
 int /*<<< orphan*/  EZFS_BADDEV ; 
 int /*<<< orphan*/  EZFS_BADPROP ; 
 int /*<<< orphan*/  EZFS_CRYPTOFAILED ; 
 int /*<<< orphan*/  EZFS_INVALIDNAME ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  SPA_MINDEVSIZE ; 
 int /*<<< orphan*/  SPA_VERSION_1 ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  ZFS_IOC_POOL_CREATE ; 
 int /*<<< orphan*/  ZFS_PROP_SPECIAL_SMALL_BLOCKS ; 
 int /*<<< orphan*/  ZFS_PROP_ZONED ; 
 int /*<<< orphan*/  ZFS_TYPE_FILESYSTEM ; 
 int /*<<< orphan*/  ZPOOL_HIDDEN_ARGS ; 
 int /*<<< orphan*/  ZPOOL_ROOTFS_PROPS ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,char const*) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int FUNC23 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__,char*) ; 

int
FUNC25(libzfs_handle_t *hdl, const char *pool, nvlist_t *nvroot,
    nvlist_t *props, nvlist_t *fsprops)
{
	zfs_cmd_t zc = {"\0"};
	nvlist_t *zc_fsprops = NULL;
	nvlist_t *zc_props = NULL;
	nvlist_t *hidden_args = NULL;
	uint8_t *wkeydata = NULL;
	uint_t wkeylen = 0;
	char msg[1024];
	int ret = -1;

	(void) FUNC8(msg, sizeof (msg), FUNC0(TEXT_DOMAIN,
	    "cannot create '%s'"), pool);

	if (!FUNC22(hdl, B_FALSE, pool))
		return (FUNC15(hdl, EZFS_INVALIDNAME, msg));

	if (FUNC12(hdl, &zc, nvroot) != 0)
		return (-1);

	if (props) {
		prop_flags_t flags = { .create = B_TRUE, .import = B_FALSE };

		if ((zc_props = FUNC24(hdl, pool, props,
		    SPA_VERSION_1, flags, msg)) == NULL) {
			goto create_failed;
		}
	}

	if (fsprops) {
		uint64_t zoned;
		char *zonestr;

		zoned = ((FUNC7(fsprops,
		    FUNC19(ZFS_PROP_ZONED), &zonestr) == 0) &&
		    FUNC9(zonestr, "on") == 0);

		if ((zc_fsprops = FUNC20(hdl, ZFS_TYPE_FILESYSTEM,
		    fsprops, zoned, NULL, NULL, B_TRUE, msg)) == NULL) {
			goto create_failed;
		}

		if (FUNC5(zc_fsprops,
		    FUNC19(ZFS_PROP_SPECIAL_SMALL_BLOCKS)) &&
		    !FUNC21(nvroot)) {
			FUNC16(hdl, FUNC0(TEXT_DOMAIN,
			    "%s property requires a special vdev"),
			    FUNC19(ZFS_PROP_SPECIAL_SMALL_BLOCKS));
			(void) FUNC15(hdl, EZFS_BADPROP, msg);
			goto create_failed;
		}

		if (!zc_props &&
		    (FUNC4(&zc_props, NV_UNIQUE_NAME, 0) != 0)) {
			goto create_failed;
		}
		if (FUNC14(hdl, NULL, zc_fsprops, props, B_TRUE,
		    &wkeydata, &wkeylen) != 0) {
			FUNC15(hdl, EZFS_CRYPTOFAILED, msg);
			goto create_failed;
		}
		if (FUNC2(zc_props,
		    ZPOOL_ROOTFS_PROPS, zc_fsprops) != 0) {
			goto create_failed;
		}
		if (wkeydata != NULL) {
			if (FUNC4(&hidden_args, NV_UNIQUE_NAME, 0) != 0)
				goto create_failed;

			if (FUNC3(hidden_args, "wkeydata",
			    wkeydata, wkeylen) != 0)
				goto create_failed;

			if (FUNC2(zc_props, ZPOOL_HIDDEN_ARGS,
			    hidden_args) != 0)
				goto create_failed;
		}
	}

	if (zc_props && FUNC13(hdl, &zc, zc_props) != 0)
		goto create_failed;

	(void) FUNC10(zc.zc_name, pool, sizeof (zc.zc_name));

	if ((ret = FUNC17(hdl, ZFS_IOC_POOL_CREATE, &zc)) != 0) {

		FUNC11(&zc);
		FUNC6(zc_props);
		FUNC6(zc_fsprops);
		FUNC6(hidden_args);
		if (wkeydata != NULL)
			FUNC1(wkeydata);

		switch (errno) {
		case EBUSY:
			/*
			 * This can happen if the user has specified the same
			 * device multiple times.  We can't reliably detect this
			 * until we try to add it and see we already have a
			 * label.  This can also happen under if the device is
			 * part of an active md or lvm device.
			 */
			FUNC16(hdl, FUNC0(TEXT_DOMAIN,
			    "one or more vdevs refer to the same device, or "
			    "one of\nthe devices is part of an active md or "
			    "lvm device"));
			return (FUNC15(hdl, EZFS_BADDEV, msg));

		case ERANGE:
			/*
			 * This happens if the record size is smaller or larger
			 * than the allowed size range, or not a power of 2.
			 *
			 * NOTE: although zfs_valid_proplist is called earlier,
			 * this case may have slipped through since the
			 * pool does not exist yet and it is therefore
			 * impossible to read properties e.g. max blocksize
			 * from the pool.
			 */
			FUNC16(hdl, FUNC0(TEXT_DOMAIN,
			    "record size invalid"));
			return (FUNC15(hdl, EZFS_BADPROP, msg));

		case EOVERFLOW:
			/*
			 * This occurs when one of the devices is below
			 * SPA_MINDEVSIZE.  Unfortunately, we can't detect which
			 * device was the problem device since there's no
			 * reliable way to determine device size from userland.
			 */
			{
				char buf[64];

				FUNC18(SPA_MINDEVSIZE, buf,
				    sizeof (buf));

				FUNC16(hdl, FUNC0(TEXT_DOMAIN,
				    "one or more devices is less than the "
				    "minimum size (%s)"), buf);
			}
			return (FUNC15(hdl, EZFS_BADDEV, msg));

		case ENOSPC:
			FUNC16(hdl, FUNC0(TEXT_DOMAIN,
			    "one or more devices is out of space"));
			return (FUNC15(hdl, EZFS_BADDEV, msg));

		case ENOTBLK:
			FUNC16(hdl, FUNC0(TEXT_DOMAIN,
			    "cache device must be a disk or disk slice"));
			return (FUNC15(hdl, EZFS_BADDEV, msg));

		default:
			return (FUNC23(hdl, errno, msg));
		}
	}

create_failed:
	FUNC11(&zc);
	FUNC6(zc_props);
	FUNC6(zc_fsprops);
	FUNC6(hidden_args);
	if (wkeydata != NULL)
		FUNC1(wkeydata);
	return (ret);
}