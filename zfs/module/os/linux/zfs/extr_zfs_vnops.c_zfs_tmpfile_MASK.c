#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_5__ ;
typedef  struct TYPE_32__   TYPE_4__ ;
typedef  struct TYPE_31__   TYPE_3__ ;
typedef  struct TYPE_30__   TYPE_2__ ;
typedef  struct TYPE_29__   TYPE_1__ ;

/* Type definitions */
struct TYPE_30__ {void* z_unlinked; } ;
typedef  TYPE_2__ znode_t ;
struct TYPE_31__ {scalar_t__ z_use_fuids; int /*<<< orphan*/  z_use_sa; void* z_fuid_dirty; int /*<<< orphan*/  z_unlinkedobj; int /*<<< orphan*/ * z_os; } ;
typedef  TYPE_3__ zfsvfs_t ;
struct TYPE_32__ {TYPE_1__* z_aclp; } ;
typedef  TYPE_4__ zfs_acl_ids_t ;
typedef  int /*<<< orphan*/  xvattr_t ;
typedef  int /*<<< orphan*/  vsecattr_t ;
struct TYPE_33__ {int va_mask; int /*<<< orphan*/  va_mode; } ;
typedef  TYPE_5__ vattr_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uid_t ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  gid_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  cred_t ;
typedef  void* boolean_t ;
struct TYPE_29__ {scalar_t__ z_acl_bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACE_ADD_FILE ; 
 int ATTR_XVATTR ; 
 scalar_t__ B_FALSE ; 
 void* B_TRUE ; 
 int /*<<< orphan*/  DMU_NEW_OBJECT ; 
 int /*<<< orphan*/  EDQUOT ; 
 int /*<<< orphan*/  EINVAL ; 
 int ERESTART ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IS_TMPFILE ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 TYPE_3__* FUNC2 (struct inode*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int TXG_NOTHROTTLE ; 
 int TXG_NOWAIT ; 
 scalar_t__ ZFS_ACE_SPACE ; 
 int /*<<< orphan*/  ZFS_DEFAULT_PROJID ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 scalar_t__ ZFS_SA_BASE_ATTR_SIZE ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 struct inode* FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*) ; 
 int FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC22 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_4__*) ; 
 scalar_t__ FUNC24 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC28 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_2__*,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__**,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC31 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 

int
FUNC32(struct inode *dip, vattr_t *vap, int excl,
    int mode, struct inode **ipp, cred_t *cr, int flag, vsecattr_t *vsecp)
{
	znode_t		*zp = NULL, *dzp = FUNC1(dip);
	zfsvfs_t	*zfsvfs = FUNC2(dip);
	objset_t	*os;
	dmu_tx_t	*tx;
	int		error;
	uid_t		uid;
	gid_t		gid;
	zfs_acl_ids_t   acl_ids;
	uint64_t	projid = ZFS_DEFAULT_PROJID;
	boolean_t	fuid_dirtied;
	boolean_t	have_acl = B_FALSE;
	boolean_t	waited = B_FALSE;

	/*
	 * If we have an ephemeral id, ACL, or XVATTR then
	 * make sure file system is at proper version
	 */

	gid = FUNC10(cr);
	uid = FUNC11(cr);

	if (zfsvfs->z_use_fuids == B_FALSE &&
	    (vsecp || FUNC0(uid) || FUNC0(gid)))
		return (FUNC3(EINVAL));

	FUNC6(zfsvfs);
	FUNC8(dzp);
	os = zfsvfs->z_os;

	if (vap->va_mask & ATTR_XVATTR) {
		if ((error = FUNC21((xvattr_t *)vap,
		    FUNC11(cr), cr, vap->va_mode)) != 0) {
			FUNC7(zfsvfs);
			return (error);
		}
	}

top:
	*ipp = NULL;

	/*
	 * Create a new file object and update the directory
	 * to reference it.
	 */
	if ((error = FUNC31(dzp, ACE_ADD_FILE, 0, B_FALSE, cr))) {
		if (have_acl)
			FUNC23(&acl_ids);
		goto out;
	}

	if (!have_acl && (error = FUNC22(dzp, 0, vap,
	    cr, vsecp, &acl_ids)) != 0)
		goto out;
	have_acl = B_TRUE;

	if (FUNC5(vap->va_mode) || FUNC4(vap->va_mode))
		projid = FUNC27(dzp);
	if (FUNC24(zfsvfs, &acl_ids, projid)) {
		FUNC23(&acl_ids);
		error = FUNC3(EDQUOT);
		goto out;
	}

	tx = FUNC15(os);

	FUNC16(tx, acl_ids.z_aclp->z_acl_bytes +
	    ZFS_SA_BASE_ATTR_SIZE);
	FUNC18(tx, zfsvfs->z_unlinkedobj, FALSE, NULL);

	fuid_dirtied = zfsvfs->z_fuid_dirty;
	if (fuid_dirtied)
		FUNC26(zfsvfs, tx);
	if (!zfsvfs->z_use_sa &&
	    acl_ids.z_aclp->z_acl_bytes > ZFS_ACE_SPACE) {
		FUNC17(tx, DMU_NEW_OBJECT,
		    0, acl_ids.z_aclp->z_acl_bytes);
	}
	error = FUNC13(tx, (waited ? TXG_NOTHROTTLE : 0) | TXG_NOWAIT);
	if (error) {
		if (error == ERESTART) {
			waited = B_TRUE;
			FUNC19(tx);
			FUNC12(tx);
			goto top;
		}
		FUNC23(&acl_ids);
		FUNC12(tx);
		FUNC7(zfsvfs);
		return (error);
	}
	FUNC29(dzp, vap, tx, cr, IS_TMPFILE, &zp, &acl_ids);

	if (fuid_dirtied)
		FUNC25(zfsvfs, tx);

	/* Add to unlinked set */
	zp->z_unlinked = B_TRUE;
	FUNC30(zp, tx);
	FUNC23(&acl_ids);
	FUNC14(tx);
out:

	if (error) {
		if (zp)
			FUNC20(FUNC9(zp));
	} else {
		FUNC28(dzp);
		FUNC28(zp);
		*ipp = FUNC9(zp);
	}

	FUNC7(zfsvfs);
	return (error);
}