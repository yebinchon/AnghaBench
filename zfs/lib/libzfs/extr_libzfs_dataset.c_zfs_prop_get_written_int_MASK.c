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
struct TYPE_5__ {char const* zfs_name; int /*<<< orphan*/  zfs_hdl; } ;
typedef  TYPE_1__ zfs_handle_t ;
struct TYPE_6__ {char* member_0; char const* zc_name; char const* zc_value; int /*<<< orphan*/  zc_cookie; } ;
typedef  TYPE_2__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  ZFS_IOC_SPACE_WRITTEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char const*,char) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*,int) ; 
 int FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

int
FUNC7(zfs_handle_t *zhp, const char *propname,
    uint64_t *propvalue)
{
	int err;
	zfs_cmd_t zc = {"\0"};
	const char *snapname;

	(void) FUNC3(zc.zc_name, zhp->zfs_name, sizeof (zc.zc_name));

	FUNC0(FUNC6(propname));
	snapname = propname + FUNC4("written@");
	if (FUNC1(snapname, '@') != NULL || FUNC1(snapname, '#') != NULL) {
		/* full snapshot or bookmark name specified */
		(void) FUNC3(zc.zc_value, snapname, sizeof (zc.zc_value));
	} else {
		/* snapname is the short name, append it to zhp's fsname */
		char *cp;

		(void) FUNC3(zc.zc_value, zhp->zfs_name,
		    sizeof (zc.zc_value));
		cp = FUNC1(zc.zc_value, '@');
		if (cp != NULL)
			*cp = '\0';
		(void) FUNC2(zc.zc_value, snapname - 1, sizeof (zc.zc_value));
	}

	err = FUNC5(zhp->zfs_hdl, ZFS_IOC_SPACE_WRITTEN, &zc);
	if (err)
		return (err);

	*propvalue = zc.zc_cookie;
	return (0);
}