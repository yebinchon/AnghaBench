#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ z_version; scalar_t__ z_userquota_obj; scalar_t__ z_groupquota_obj; scalar_t__ z_userobjquota_obj; scalar_t__ z_groupobjquota_obj; scalar_t__ z_projectquota_obj; scalar_t__ z_projectobjquota_obj; int /*<<< orphan*/  z_os; int /*<<< orphan*/  z_lock; scalar_t__ z_fuid_dirty; } ;
typedef  TYPE_1__ zfsvfs_t ;
typedef  int zfs_userquota_prop_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_TRUE ; 
 scalar_t__ DMU_NEW_OBJECT ; 
 int /*<<< orphan*/  DMU_OT_NONE ; 
 int /*<<< orphan*/  DMU_OT_USERGROUP_QUOTA ; 
 int /*<<< orphan*/  EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  ENOTSUP ; 
 scalar_t__ MASTER_NODE_OBJ ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TXG_WAIT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
#define  ZFS_PROP_GROUPOBJQUOTA 133 
#define  ZFS_PROP_GROUPQUOTA 132 
#define  ZFS_PROP_PROJECTOBJQUOTA 131 
#define  ZFS_PROP_PROJECTQUOTA 130 
#define  ZFS_PROP_USEROBJQUOTA 129 
#define  ZFS_PROP_USERQUOTA 128 
 scalar_t__ ZPL_VERSION_USERSPACE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_1__*,char const*,scalar_t__,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ,scalar_t__,char*,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ ,scalar_t__,char*,int,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** zfs_userquota_prop_prefixes ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__) ; 

int
FUNC19(zfsvfs_t *zfsvfs, zfs_userquota_prop_t type,
    const char *domain, uint64_t rid, uint64_t quota)
{
	char buf[32];
	int err;
	dmu_tx_t *tx;
	uint64_t *objp;
	boolean_t fuid_dirtied;

	if (zfsvfs->z_version < ZPL_VERSION_USERSPACE)
		return (FUNC1(ENOTSUP));

	switch (type) {
	case ZFS_PROP_USERQUOTA:
		objp = &zfsvfs->z_userquota_obj;
		break;
	case ZFS_PROP_GROUPQUOTA:
		objp = &zfsvfs->z_groupquota_obj;
		break;
	case ZFS_PROP_USEROBJQUOTA:
		objp = &zfsvfs->z_userobjquota_obj;
		break;
	case ZFS_PROP_GROUPOBJQUOTA:
		objp = &zfsvfs->z_groupobjquota_obj;
		break;
	case ZFS_PROP_PROJECTQUOTA:
		if (!FUNC3(zfsvfs->z_os))
			return (FUNC1(ENOTSUP));
		if (!FUNC18(rid))
			return (FUNC1(EINVAL));

		objp = &zfsvfs->z_projectquota_obj;
		break;
	case ZFS_PROP_PROJECTOBJQUOTA:
		if (!FUNC3(zfsvfs->z_os))
			return (FUNC1(ENOTSUP));
		if (!FUNC18(rid))
			return (FUNC1(EINVAL));

		objp = &zfsvfs->z_projectobjquota_obj;
		break;
	default:
		return (FUNC1(EINVAL));
	}

	err = FUNC9(zfsvfs, domain, rid, buf, B_TRUE);
	if (err)
		return (err);
	fuid_dirtied = zfsvfs->z_fuid_dirty;

	tx = FUNC7(zfsvfs->z_os);
	FUNC8(tx, *objp ? *objp : DMU_NEW_OBJECT, B_TRUE, NULL);
	if (*objp == 0) {
		FUNC8(tx, MASTER_NODE_OBJ, B_TRUE,
		    zfs_userquota_prop_prefixes[type]);
	}
	if (fuid_dirtied)
		FUNC17(zfsvfs, tx);
	err = FUNC5(tx, TXG_WAIT);
	if (err) {
		FUNC4(tx);
		return (err);
	}

	FUNC10(&zfsvfs->z_lock);
	if (*objp == 0) {
		*objp = FUNC13(zfsvfs->z_os, DMU_OT_USERGROUP_QUOTA,
		    DMU_OT_NONE, 0, tx);
		FUNC2(0 == FUNC12(zfsvfs->z_os, MASTER_NODE_OBJ,
		    zfs_userquota_prop_prefixes[type], 8, 1, objp, tx));
	}
	FUNC11(&zfsvfs->z_lock);

	if (quota == 0) {
		err = FUNC14(zfsvfs->z_os, *objp, buf, tx);
		if (err == ENOENT)
			err = 0;
	} else {
		err = FUNC15(zfsvfs->z_os, *objp, buf, 8, 1, &quota, tx);
	}
	FUNC0(err == 0);
	if (fuid_dirtied)
		FUNC16(zfsvfs, tx);
	FUNC6(tx);
	return (err);
}