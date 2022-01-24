#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
struct TYPE_14__ {int z_acl_count; int z_acl_bytes; int /*<<< orphan*/  z_acl; } ;
typedef  TYPE_1__ zfs_acl_t ;
struct TYPE_15__ {int /*<<< orphan*/  z_ace_data; scalar_t__ z_acl_extern_obj; } ;
typedef  TYPE_2__ zfs_acl_phys_t ;
struct TYPE_16__ {int z_ace_count; int z_size; int /*<<< orphan*/  z_acldata; } ;
typedef  TYPE_3__ zfs_acl_node_t ;
struct znode {int /*<<< orphan*/  z_lock; TYPE_1__* z_acl_cached; int /*<<< orphan*/  z_sa_hdl; int /*<<< orphan*/  z_is_sa; int /*<<< orphan*/  z_acl_lock; } ;
typedef  scalar_t__ boolean_t ;
struct TYPE_13__ {int /*<<< orphan*/  z_os; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  DMU_READ_PREFETCH ; 
 int ECKSUM ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_11__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_11__* FUNC4 (struct znode*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 TYPE_3__* FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int FUNC15 (struct znode*,int*,int*,TYPE_2__*) ; 
 int FUNC16 (struct znode*) ; 

int
FUNC17(struct znode *zp, boolean_t have_lock, zfs_acl_t **aclpp,
    boolean_t will_modify)
{
	zfs_acl_t	*aclp;
	int		aclsize = 0;
	int		acl_count = 0;
	zfs_acl_node_t	*aclnode;
	zfs_acl_phys_t	znode_acl;
	int		version;
	int		error;
	boolean_t	drop_lock = B_FALSE;

	FUNC0(FUNC1(&zp->z_acl_lock));

	if (zp->z_acl_cached && !will_modify) {
		*aclpp = zp->z_acl_cached;
		return (0);
	}

	/*
	 * close race where znode could be upgrade while trying to
	 * read the znode attributes.
	 *
	 * But this could only happen if the file isn't already an SA
	 * znode
	 */
	if (!zp->z_is_sa && !have_lock) {
		FUNC8(&zp->z_lock);
		drop_lock = B_TRUE;
	}
	version = FUNC16(zp);

	if ((error = FUNC15(zp, &aclsize,
	    &acl_count, &znode_acl)) != 0) {
		goto done;
	}

	aclp = FUNC11(version);

	aclp->z_acl_count = acl_count;
	aclp->z_acl_bytes = aclsize;

	aclnode = FUNC13(aclsize);
	aclnode->z_ace_count = aclp->z_acl_count;
	aclnode->z_size = aclsize;

	if (!zp->z_is_sa) {
		if (znode_acl.z_acl_extern_obj) {
			error = FUNC6(FUNC4(zp)->z_os,
			    znode_acl.z_acl_extern_obj, 0, aclnode->z_size,
			    aclnode->z_acldata, DMU_READ_PREFETCH);
		} else {
			FUNC5(znode_acl.z_ace_data, aclnode->z_acldata,
			    aclnode->z_size);
		}
	} else {
		error = FUNC10(zp->z_sa_hdl, FUNC2(FUNC4(zp)),
		    aclnode->z_acldata, aclnode->z_size);
	}

	if (error != 0) {
		FUNC12(aclp);
		FUNC14(aclnode);
		/* convert checksum errors into IO errors */
		if (error == ECKSUM)
			error = FUNC3(EIO);
		goto done;
	}

	FUNC7(&aclp->z_acl, aclnode);

	*aclpp = aclp;
	if (!will_modify)
		zp->z_acl_cached = aclp;
done:
	if (drop_lock)
		FUNC9(&zp->z_lock);
	return (error);
}