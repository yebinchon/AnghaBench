#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct TYPE_25__ {scalar_t__ z_id; int /*<<< orphan*/  z_unlinked; int /*<<< orphan*/  z_sa_hdl; int /*<<< orphan*/  z_projid; } ;
typedef  TYPE_2__ znode_t ;
struct TYPE_26__ {int /*<<< orphan*/  z_log; scalar_t__ z_fuid_dirty; int /*<<< orphan*/  z_os; } ;
typedef  TYPE_3__ zfsvfs_t ;
struct TYPE_27__ {int /*<<< orphan*/  z_fuidp; TYPE_1__* z_aclp; } ;
typedef  TYPE_4__ zfs_acl_ids_t ;
typedef  int /*<<< orphan*/  vattr_t ;
typedef  scalar_t__ uint64_t ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  parent ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  cred_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_24__ {scalar_t__ z_acl_bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACE_WRITE_NAMED_ATTRS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  DMU_NEW_OBJECT ; 
 int /*<<< orphan*/  EDQUOT ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IS_XATTR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TXG_WAIT ; 
 int /*<<< orphan*/  TX_MKXATTR ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ ZFS_SA_BASE_ATTR_SIZE ; 
 struct inode* FUNC5 (TYPE_2__*) ; 
 TYPE_3__* FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int,int /*<<< orphan*/ *) ; 
 int FUNC16 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_4__*) ; 
 scalar_t__ FUNC18 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__**,TYPE_4__*) ; 
 int FUNC23 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC24(znode_t *zp, vattr_t *vap, struct inode **xipp, cred_t *cr)
{
	zfsvfs_t *zfsvfs = FUNC6(zp);
	znode_t *xzp;
	dmu_tx_t *tx;
	int error;
	zfs_acl_ids_t acl_ids;
	boolean_t fuid_dirtied;
#ifdef DEBUG
	uint64_t parent;
#endif

	*xipp = NULL;

	if ((error = FUNC23(zp, ACE_WRITE_NAMED_ATTRS, 0, B_FALSE, cr)))
		return (error);

	if ((error = FUNC16(zp, IS_XATTR, vap, cr, NULL,
	    &acl_ids)) != 0)
		return (error);
	if (FUNC18(zfsvfs, &acl_ids, zp->z_projid)) {
		FUNC17(&acl_ids);
		return (FUNC3(EDQUOT));
	}

	tx = FUNC10(zfsvfs->z_os);
	FUNC12(tx, acl_ids.z_aclp->z_acl_bytes +
	    ZFS_SA_BASE_ATTR_SIZE);
	FUNC11(tx, zp->z_sa_hdl, B_TRUE);
	FUNC13(tx, DMU_NEW_OBJECT, FALSE, NULL);
	fuid_dirtied = zfsvfs->z_fuid_dirty;
	if (fuid_dirtied)
		FUNC20(zfsvfs, tx);
	error = FUNC8(tx, TXG_WAIT);
	if (error) {
		FUNC17(&acl_ids);
		FUNC7(tx);
		return (error);
	}
	FUNC22(zp, vap, tx, cr, IS_XATTR, &xzp, &acl_ids);

	if (fuid_dirtied)
		FUNC19(zfsvfs, tx);

#ifdef DEBUG
	error = sa_lookup(xzp->z_sa_hdl, SA_ZPL_PARENT(zfsvfs),
	    &parent, sizeof (parent));
	ASSERT(error == 0 && parent == zp->z_id);
#endif

	FUNC4(0 == FUNC15(zp->z_sa_hdl, FUNC2(zfsvfs), &xzp->z_id,
	    sizeof (xzp->z_id), tx));

	if (!zp->z_unlinked)
		(void) FUNC21(zfsvfs->z_log, tx, TX_MKXATTR, zp,
		    xzp, "", NULL, acl_ids.z_fuidp, vap);

	FUNC17(&acl_ids);
	FUNC9(tx);

	*xipp = FUNC5(xzp);

	return (0);
}