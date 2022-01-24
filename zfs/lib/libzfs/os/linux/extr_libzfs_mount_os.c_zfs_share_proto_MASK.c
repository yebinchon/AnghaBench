#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zprop_source_t ;
typedef  size_t zfs_share_proto_t ;
struct TYPE_12__ {int /*<<< orphan*/  zfs_name; TYPE_2__* zfs_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;
typedef  int /*<<< orphan*/  shareopts ;
typedef  int /*<<< orphan*/ * sa_share_t ;
typedef  int /*<<< orphan*/  mountpoint ;
struct TYPE_13__ {int /*<<< orphan*/  libzfs_sharehdl; int /*<<< orphan*/  libzfs_shareflags; } ;
typedef  TYPE_2__ libzfs_handle_t ;
struct TYPE_11__ {int /*<<< orphan*/  p_share_err; int /*<<< orphan*/  p_name; int /*<<< orphan*/  p_prop; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  EZFS_SHARENFSFAILED ; 
 size_t PROTO_END ; 
 int /*<<< orphan*/  SA_INIT_SHARE_API ; 
 int SA_OK ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  ZFSSHARE_MISS ; 
 int ZFS_MAXPROPLEN ; 
 int /*<<< orphan*/  ZFS_PROP_ZONED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_10__* proto_table ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int
FUNC12(zfs_handle_t *zhp, zfs_share_proto_t *proto)
{
	char mountpoint[ZFS_MAXPROPLEN];
	char shareopts[ZFS_MAXPROPLEN];
	char sourcestr[ZFS_MAXPROPLEN];
	libzfs_handle_t *hdl = zhp->zfs_hdl;
	sa_share_t share;
	zfs_share_proto_t *curr_proto;
	zprop_source_t sourcetype;
	int err, ret;

	if (!FUNC9(zhp, mountpoint, sizeof (mountpoint), NULL, 0))
		return (0);

	for (curr_proto = proto; *curr_proto != PROTO_END; curr_proto++) {
		/*
		 * Return success if there are no share options.
		 */
		if (FUNC10(zhp, proto_table[*curr_proto].p_prop,
		    shareopts, sizeof (shareopts), &sourcetype, sourcestr,
		    ZFS_MAXPROPLEN, B_FALSE) != 0 ||
		    FUNC5(shareopts, "off") == 0)
			continue;

		ret = FUNC8(hdl, SA_INIT_SHARE_API);
		if (ret != SA_OK) {
			(void) FUNC6(hdl, EZFS_SHARENFSFAILED,
			    FUNC0(TEXT_DOMAIN, "cannot share '%s': %s"),
			    FUNC7(zhp), FUNC2(ret));
			return (-1);
		}

		/*
		 * If the 'zoned' property is set, then zfs_is_mountable()
		 * will have already bailed out if we are in the global zone.
		 * But local zones cannot be NFS servers, so we ignore it for
		 * local zones as well.
		 */
		if (FUNC11(zhp, ZFS_PROP_ZONED))
			continue;

		share = FUNC3(hdl->libzfs_sharehdl, mountpoint);
		if (share == NULL) {
			/*
			 * This may be a new file system that was just
			 * created so isn't in the internal cache
			 * (second time through). Rather than
			 * reloading the entire configuration, we can
			 * assume ZFS has done the checking and it is
			 * safe to add this to the internal
			 * configuration.
			 */
			if (FUNC4(hdl->libzfs_sharehdl,
			    NULL, NULL, mountpoint,
			    proto_table[*curr_proto].p_name, sourcetype,
			    shareopts, sourcestr, zhp->zfs_name) != SA_OK) {
				(void) FUNC6(hdl,
				    proto_table[*curr_proto].p_share_err,
				    FUNC0(TEXT_DOMAIN, "cannot share '%s'"),
				    FUNC7(zhp));
				return (-1);
			}
			hdl->libzfs_shareflags |= ZFSSHARE_MISS;
			share = FUNC3(hdl->libzfs_sharehdl,
			    mountpoint);
		}
		if (share != NULL) {
			err = FUNC1(share,
			    proto_table[*curr_proto].p_name);
			if (err != SA_OK) {
				(void) FUNC6(hdl,
				    proto_table[*curr_proto].p_share_err,
				    FUNC0(TEXT_DOMAIN, "cannot share '%s'"),
				    FUNC7(zhp));
				return (-1);
			}
		} else {
			(void) FUNC6(hdl,
			    proto_table[*curr_proto].p_share_err,
			    FUNC0(TEXT_DOMAIN, "cannot share '%s'"),
			    FUNC7(zhp));
			return (-1);
		}

	}
	return (0);
}