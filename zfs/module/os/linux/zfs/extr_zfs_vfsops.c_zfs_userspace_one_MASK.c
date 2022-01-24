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
struct TYPE_5__ {int /*<<< orphan*/  z_os; } ;
typedef  TYPE_1__ zfsvfs_t ;
typedef  scalar_t__ zfs_userquota_prop_t ;
typedef  scalar_t__ uint64_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  DMU_OBJACCT_PREFIX ; 
 int DMU_OBJACCT_PREFIX_LEN ; 
 int /*<<< orphan*/  EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ZFS_NO_OBJECT ; 
 scalar_t__ ZFS_PROP_GROUPOBJQUOTA ; 
 scalar_t__ ZFS_PROP_GROUPOBJUSED ; 
 scalar_t__ ZFS_PROP_PROJECTOBJQUOTA ; 
 scalar_t__ ZFS_PROP_PROJECTOBJUSED ; 
 scalar_t__ ZFS_PROP_PROJECTQUOTA ; 
 scalar_t__ ZFS_PROP_PROJECTUSED ; 
 scalar_t__ ZFS_PROP_USEROBJQUOTA ; 
 scalar_t__ ZFS_PROP_USEROBJUSED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*,char const*,scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__,char*,int,int,scalar_t__*) ; 
 scalar_t__ FUNC7 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

int
FUNC9(zfsvfs_t *zfsvfs, zfs_userquota_prop_t type,
    const char *domain, uint64_t rid, uint64_t *valp)
{
	char buf[20 + DMU_OBJACCT_PREFIX_LEN];
	int offset = 0;
	int err;
	uint64_t obj;

	*valp = 0;

	if (!FUNC3(zfsvfs->z_os))
		return (FUNC0(ENOTSUP));

	if ((type == ZFS_PROP_USEROBJUSED || type == ZFS_PROP_GROUPOBJUSED ||
	    type == ZFS_PROP_USEROBJQUOTA || type == ZFS_PROP_GROUPOBJQUOTA ||
	    type == ZFS_PROP_PROJECTOBJUSED ||
	    type == ZFS_PROP_PROJECTOBJQUOTA) &&
	    !FUNC2(zfsvfs->z_os))
		return (FUNC0(ENOTSUP));

	if (type == ZFS_PROP_PROJECTQUOTA || type == ZFS_PROP_PROJECTUSED ||
	    type == ZFS_PROP_PROJECTOBJQUOTA ||
	    type == ZFS_PROP_PROJECTOBJUSED) {
		if (!FUNC1(zfsvfs->z_os))
			return (FUNC0(ENOTSUP));
		if (!FUNC8(rid))
			return (FUNC0(EINVAL));
	}

	obj = FUNC7(zfsvfs, type);
	if (obj == ZFS_NO_OBJECT)
		return (0);

	if (type == ZFS_PROP_USEROBJUSED || type == ZFS_PROP_GROUPOBJUSED ||
	    type == ZFS_PROP_PROJECTOBJUSED) {
		FUNC5(buf, DMU_OBJACCT_PREFIX, DMU_OBJACCT_PREFIX_LEN + 1);
		offset = DMU_OBJACCT_PREFIX_LEN;
	}

	err = FUNC4(zfsvfs, domain, rid, buf + offset, B_FALSE);
	if (err)
		return (err);

	err = FUNC6(zfsvfs->z_os, obj, buf, 8, 1, valp);
	if (err == ENOENT)
		err = 0;
	return (err);
}