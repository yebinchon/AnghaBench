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
typedef  scalar_t__ zfs_userquota_prop_t ;
typedef  int /*<<< orphan*/  zfs_handle_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ ZFS_PROP_GROUPOBJQUOTA ; 
 scalar_t__ ZFS_PROP_GROUPQUOTA ; 
 scalar_t__ ZFS_PROP_GROUPUSED ; 
 scalar_t__ ZFS_PROP_PROJECTOBJQUOTA ; 
 scalar_t__ ZFS_PROP_PROJECTQUOTA ; 
 scalar_t__ ZFS_PROP_PROJECTUSED ; 
 scalar_t__ ZFS_PROP_USEROBJQUOTA ; 
 scalar_t__ ZFS_PROP_USERQUOTA ; 
 scalar_t__ ZFS_PROP_USERUSED ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,scalar_t__*,scalar_t__*) ; 

int
FUNC5(zfs_handle_t *zhp, const char *propname,
    char *propbuf, int proplen, boolean_t literal)
{
	int err;
	uint64_t propvalue;
	zfs_userquota_prop_t type;

	err = FUNC4(zhp, propname, &propvalue,
	    &type);

	if (err)
		return (err);

	if (literal) {
		(void) FUNC0(propbuf, proplen, "%llu",
		    (u_longlong_t)propvalue);
	} else if (propvalue == 0 &&
	    (type == ZFS_PROP_USERQUOTA || type == ZFS_PROP_GROUPQUOTA ||
	    type == ZFS_PROP_USEROBJQUOTA || type == ZFS_PROP_GROUPOBJQUOTA ||
	    type == ZFS_PROP_PROJECTQUOTA ||
	    type == ZFS_PROP_PROJECTOBJQUOTA)) {
		(void) FUNC1(propbuf, "none", proplen);
	} else if (type == ZFS_PROP_USERQUOTA || type == ZFS_PROP_GROUPQUOTA ||
	    type == ZFS_PROP_USERUSED || type == ZFS_PROP_GROUPUSED ||
	    type == ZFS_PROP_PROJECTUSED || type == ZFS_PROP_PROJECTQUOTA) {
		FUNC2(propvalue, propbuf, proplen);
	} else {
		FUNC3(propvalue, propbuf, proplen);
	}
	return (0);
}