#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_42__   TYPE_5__ ;
typedef  struct TYPE_41__   TYPE_4__ ;
typedef  struct TYPE_40__   TYPE_3__ ;
typedef  struct TYPE_39__   TYPE_30__ ;
typedef  struct TYPE_38__   TYPE_2__ ;
typedef  struct TYPE_37__   TYPE_1__ ;

/* Type definitions */
struct TYPE_38__ {int z_pflags; int /*<<< orphan*/  z_id; } ;
typedef  TYPE_2__ znode_t ;
typedef  int /*<<< orphan*/  zilog_t ;
struct TYPE_40__ {scalar_t__ z_use_fuids; TYPE_30__* z_os; int /*<<< orphan*/  z_use_sa; scalar_t__ z_fuid_dirty; scalar_t__ z_utf8; int /*<<< orphan*/ * z_log; } ;
typedef  TYPE_3__ zfsvfs_t ;
typedef  int /*<<< orphan*/  zfs_dirlock_t ;
struct TYPE_41__ {int /*<<< orphan*/  z_fuidp; TYPE_1__* z_aclp; } ;
typedef  TYPE_4__ zfs_acl_ids_t ;
typedef  int /*<<< orphan*/  xvattr_t ;
typedef  int /*<<< orphan*/  vsecattr_t ;
struct TYPE_42__ {int va_mask; int /*<<< orphan*/  va_mode; } ;
typedef  TYPE_5__ vattr_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uid_t ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  gid_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  cred_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_39__ {scalar_t__ os_sync; } ;
struct TYPE_37__ {scalar_t__ z_acl_bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACE_ADD_SUBDIRECTORY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ATTR_XVATTR ; 
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  DMU_NEW_OBJECT ; 
 int /*<<< orphan*/  EDQUOT ; 
 int /*<<< orphan*/  EILSEQ ; 
 int /*<<< orphan*/  EINVAL ; 
 int ERESTART ; 
 int /*<<< orphan*/  FALSE ; 
 int FIGNORECASE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (struct inode*) ; 
 TYPE_3__* FUNC3 (struct inode*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int TXG_NOTHROTTLE ; 
 int TXG_NOWAIT ; 
 int /*<<< orphan*/  TX_CI ; 
 int /*<<< orphan*/  U8_VALIDATE_ENTIRE ; 
 int ZCILOOK ; 
 scalar_t__ ZFS_ACE_SPACE ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 scalar_t__ ZFS_SA_BASE_ATTR_SIZE ; 
 scalar_t__ ZFS_SYNC_ALWAYS ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int ZFS_XATTR ; 
 int ZNEW ; 
 struct inode* FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  Z_DIR ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (TYPE_30__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct inode*) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*) ; 
 int FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 scalar_t__ FUNC24 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int FUNC25 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_4__*) ; 
 scalar_t__ FUNC27 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC28 (int /*<<< orphan*/ **,TYPE_2__*,char*,TYPE_2__**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_2__*) ; 
 int FUNC34 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC37 (TYPE_2__*,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__**,TYPE_4__*) ; 
 int FUNC38 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC39 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC41(struct inode *dip, char *dirname, vattr_t *vap, struct inode **ipp,
    cred_t *cr, int flags, vsecattr_t *vsecp)
{
	znode_t		*zp, *dzp = FUNC2(dip);
	zfsvfs_t	*zfsvfs = FUNC3(dip);
	zilog_t		*zilog;
	zfs_dirlock_t	*dl;
	uint64_t	txtype;
	dmu_tx_t	*tx;
	int		error;
	int		zf = ZNEW;
	uid_t		uid;
	gid_t		gid = FUNC10(cr);
	zfs_acl_ids_t   acl_ids;
	boolean_t	fuid_dirtied;
	boolean_t	waited = B_FALSE;

	FUNC0(FUNC5(vap->va_mode));

	/*
	 * If we have an ephemeral id, ACL, or XVATTR then
	 * make sure file system is at proper version
	 */

	uid = FUNC11(cr);
	if (zfsvfs->z_use_fuids == B_FALSE &&
	    (vsecp || FUNC1(uid) || FUNC1(gid)))
		return (FUNC4(EINVAL));

	if (dirname == NULL)
		return (FUNC4(EINVAL));

	FUNC6(zfsvfs);
	FUNC8(dzp);
	zilog = zfsvfs->z_log;

	if (dzp->z_pflags & ZFS_XATTR) {
		FUNC7(zfsvfs);
		return (FUNC4(EINVAL));
	}

	if (zfsvfs->z_utf8 && FUNC24(dirname,
	    FUNC23(dirname), NULL, U8_VALIDATE_ENTIRE, &error) < 0) {
		FUNC7(zfsvfs);
		return (FUNC4(EILSEQ));
	}
	if (flags & FIGNORECASE)
		zf |= ZCILOOK;

	if (vap->va_mask & ATTR_XVATTR) {
		if ((error = FUNC22((xvattr_t *)vap,
		    FUNC11(cr), cr, vap->va_mode)) != 0) {
			FUNC7(zfsvfs);
			return (error);
		}
	}

	if ((error = FUNC25(dzp, 0, vap, cr,
	    vsecp, &acl_ids)) != 0) {
		FUNC7(zfsvfs);
		return (error);
	}
	/*
	 * First make sure the new directory doesn't exist.
	 *
	 * Existence is checked first to make sure we don't return
	 * EACCES instead of EEXIST which can cause some applications
	 * to fail.
	 */
top:
	*ipp = NULL;

	if ((error = FUNC28(&dl, dzp, dirname, &zp, zf,
	    NULL, NULL))) {
		FUNC26(&acl_ids);
		FUNC7(zfsvfs);
		return (error);
	}

	if ((error = FUNC38(dzp, ACE_ADD_SUBDIRECTORY, 0, B_FALSE, cr))) {
		FUNC26(&acl_ids);
		FUNC29(dl);
		FUNC7(zfsvfs);
		return (error);
	}

	if (FUNC27(zfsvfs, &acl_ids, FUNC32(dzp))) {
		FUNC26(&acl_ids);
		FUNC29(dl);
		FUNC7(zfsvfs);
		return (FUNC4(EDQUOT));
	}

	/*
	 * Add a new entry to the directory.
	 */
	tx = FUNC15(zfsvfs->z_os);
	FUNC18(tx, dzp->z_id, TRUE, dirname);
	FUNC18(tx, DMU_NEW_OBJECT, FALSE, NULL);
	fuid_dirtied = zfsvfs->z_fuid_dirty;
	if (fuid_dirtied)
		FUNC31(zfsvfs, tx);
	if (!zfsvfs->z_use_sa && acl_ids.z_aclp->z_acl_bytes > ZFS_ACE_SPACE) {
		FUNC17(tx, DMU_NEW_OBJECT, 0,
		    acl_ids.z_aclp->z_acl_bytes);
	}

	FUNC16(tx, acl_ids.z_aclp->z_acl_bytes +
	    ZFS_SA_BASE_ATTR_SIZE);

	error = FUNC13(tx, (waited ? TXG_NOTHROTTLE : 0) | TXG_NOWAIT);
	if (error) {
		FUNC29(dl);
		if (error == ERESTART) {
			waited = B_TRUE;
			FUNC19(tx);
			FUNC12(tx);
			goto top;
		}
		FUNC26(&acl_ids);
		FUNC12(tx);
		FUNC7(zfsvfs);
		return (error);
	}

	/*
	 * Create new node.
	 */
	FUNC37(dzp, vap, tx, cr, 0, &zp, &acl_ids);

	/*
	 * Now put new name in parent dir.
	 */
	error = FUNC34(dl, zp, tx, ZNEW);
	if (error != 0) {
		FUNC39(zp, tx);
		FUNC21(FUNC9(zp));
		goto out;
	}

	if (fuid_dirtied)
		FUNC30(zfsvfs, tx);

	*ipp = FUNC9(zp);

	txtype = FUNC36(Z_DIR, vsecp, vap);
	if (flags & FIGNORECASE)
		txtype |= TX_CI;
	FUNC35(zilog, tx, txtype, dzp, zp, dirname, vsecp,
	    acl_ids.z_fuidp, vap);

out:
	FUNC26(&acl_ids);

	FUNC14(tx);

	FUNC29(dl);

	if (zfsvfs->z_os->os_sync == ZFS_SYNC_ALWAYS)
		FUNC40(zilog, 0);

	if (error != 0) {
		FUNC20(FUNC9(zp));
	} else {
		FUNC33(dzp);
		FUNC33(zp);
	}
	FUNC7(zfsvfs);
	return (error);
}