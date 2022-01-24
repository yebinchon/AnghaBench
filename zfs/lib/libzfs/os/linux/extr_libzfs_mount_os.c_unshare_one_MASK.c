#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  size_t zfs_share_proto_t ;
typedef  int /*<<< orphan*/ * sa_share_t ;
struct TYPE_7__ {int /*<<< orphan*/  libzfs_sharehdl; } ;
typedef  TYPE_1__ libzfs_handle_t ;
struct TYPE_8__ {int /*<<< orphan*/  p_unshare_err; int /*<<< orphan*/  p_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  SA_INIT_SHARE_API ; 
 int SA_OK ; 
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_6__* proto_table ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,...) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (TYPE_1__*,char const*) ; 

int
FUNC8(libzfs_handle_t *hdl, const char *name, const char *mountpoint,
    zfs_share_proto_t proto)
{
	sa_share_t share;
	int err;
	char *mntpt;
	/*
	 * Mountpoint could get trashed if libshare calls getmntany
	 * which it does during API initialization, so strdup the
	 * value.
	 */
	mntpt = FUNC7(hdl, mountpoint);

	/* make sure libshare initialized */
	if ((err = FUNC6(hdl, SA_INIT_SHARE_API)) != SA_OK) {
		FUNC1(mntpt);	/* don't need the copy anymore */
		return (FUNC5(hdl, proto_table[proto].p_unshare_err,
		    FUNC0(TEXT_DOMAIN, "cannot unshare '%s': %s"),
		    name, FUNC3(err)));
	}

	share = FUNC4(hdl->libzfs_sharehdl, mntpt);
	FUNC1(mntpt);	/* don't need the copy anymore */

	if (share != NULL) {
		err = FUNC2(share, proto_table[proto].p_name);
		if (err != SA_OK) {
			return (FUNC5(hdl,
			    proto_table[proto].p_unshare_err,
			    FUNC0(TEXT_DOMAIN, "cannot unshare '%s': %s"),
			    name, FUNC3(err)));
		}
	} else {
		return (FUNC5(hdl, proto_table[proto].p_unshare_err,
		    FUNC0(TEXT_DOMAIN, "cannot unshare '%s': not found"),
		    name));
	}
	return (0);
}