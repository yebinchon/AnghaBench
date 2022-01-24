#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_45__   TYPE_6__ ;
typedef  struct TYPE_44__   TYPE_5__ ;
typedef  struct TYPE_43__   TYPE_4__ ;
typedef  struct TYPE_42__   TYPE_3__ ;
typedef  struct TYPE_41__   TYPE_2__ ;
typedef  struct TYPE_40__   TYPE_1__ ;

/* Type definitions */
struct TYPE_41__ {int z_pflags; int /*<<< orphan*/  z_lock; int /*<<< orphan*/  z_seq; int /*<<< orphan*/  z_sa_hdl; int /*<<< orphan*/  z_id; } ;
typedef  TYPE_2__ znode_t ;
typedef  int /*<<< orphan*/  zilog_t ;
struct TYPE_42__ {scalar_t__ z_use_fuids; TYPE_6__* z_os; int /*<<< orphan*/  z_use_sa; scalar_t__ z_fuid_dirty; scalar_t__ z_utf8; int /*<<< orphan*/ * z_log; } ;
typedef  TYPE_3__ zfsvfs_t ;
typedef  int /*<<< orphan*/  zfs_dirlock_t ;
struct TYPE_43__ {int /*<<< orphan*/  z_fuidp; TYPE_1__* z_aclp; } ;
typedef  TYPE_4__ zfs_acl_ids_t ;
typedef  int /*<<< orphan*/  xvattr_t ;
typedef  int /*<<< orphan*/  vsecattr_t ;
struct TYPE_44__ {int va_mask; scalar_t__ va_size; int /*<<< orphan*/  va_mode; } ;
typedef  TYPE_5__ vattr_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uid_t ;
struct inode {int /*<<< orphan*/  i_mode; } ;
struct TYPE_45__ {scalar_t__ os_sync; } ;
typedef  TYPE_6__ objset_t ;
typedef  int /*<<< orphan*/  gid_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  cred_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_40__ {scalar_t__ z_acl_bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACE_ADD_FILE ; 
 int ATTR_SIZE ; 
 int ATTR_XVATTR ; 
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  DMU_NEW_OBJECT ; 
 int /*<<< orphan*/  EDQUOT ; 
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  EILSEQ ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EISDIR ; 
 int ERESTART ; 
 int FAPPEND ; 
 int FIGNORECASE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 TYPE_3__* FUNC2 (struct inode*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int TXG_NOTHROTTLE ; 
 int TXG_NOWAIT ; 
 int /*<<< orphan*/  TX_CI ; 
 int /*<<< orphan*/  U8_VALIDATE_ENTIRE ; 
 int V_APPEND ; 
 int ZCILOOK ; 
 scalar_t__ ZFS_ACE_SPACE ; 
 int /*<<< orphan*/  ZFS_DEFAULT_PROJID ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 scalar_t__ ZFS_SA_BASE_ATTR_SIZE ; 
 scalar_t__ ZFS_SYNC_ALWAYS ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int ZFS_XATTR ; 
 int /*<<< orphan*/  ZNEW ; 
 struct inode* FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  Z_FILE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*) ; 
 int /*<<< orphan*/  FUNC22 (struct inode*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (struct inode*) ; 
 int FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC27 (char*,char*) ; 
 int /*<<< orphan*/  FUNC28 (char*) ; 
 scalar_t__ FUNC29 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int FUNC30 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_4__*) ; 
 scalar_t__ FUNC32 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC33 (int /*<<< orphan*/ **,TYPE_2__*,char*,TYPE_2__**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *) ; 
 int FUNC35 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC36 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC37 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC38 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC39 (TYPE_2__*) ; 
 int FUNC40 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC43 (TYPE_2__*,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__**,TYPE_4__*) ; 
 int FUNC44 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC45 (TYPE_2__*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC46 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC47 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC48(struct inode *dip, char *name, vattr_t *vap, int excl,
    int mode, struct inode **ipp, cred_t *cr, int flag, vsecattr_t *vsecp)
{
	znode_t		*zp, *dzp = FUNC1(dip);
	zfsvfs_t	*zfsvfs = FUNC2(dip);
	zilog_t		*zilog;
	objset_t	*os;
	zfs_dirlock_t	*dl;
	dmu_tx_t	*tx;
	int		error;
	uid_t		uid;
	gid_t		gid;
	zfs_acl_ids_t   acl_ids;
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

	if (name == NULL)
		return (FUNC3(EINVAL));

	FUNC6(zfsvfs);
	FUNC8(dzp);
	os = zfsvfs->z_os;
	zilog = zfsvfs->z_log;

	if (zfsvfs->z_utf8 && FUNC29(name, FUNC28(name),
	    NULL, U8_VALIDATE_ENTIRE, &error) < 0) {
		FUNC7(zfsvfs);
		return (FUNC3(EILSEQ));
	}

	if (vap->va_mask & ATTR_XVATTR) {
		if ((error = FUNC26((xvattr_t *)vap,
		    FUNC11(cr), cr, vap->va_mode)) != 0) {
			FUNC7(zfsvfs);
			return (error);
		}
	}

top:
	*ipp = NULL;
	if (*name == '\0') {
		/*
		 * Null component name refers to the directory itself.
		 */
		FUNC21(dip);
		zp = dzp;
		dl = NULL;
		error = 0;
	} else {
		/* possible igrab(zp) */
		int zflg = 0;

		if (flag & FIGNORECASE)
			zflg |= ZCILOOK;

		error = FUNC33(&dl, dzp, name, &zp, zflg,
		    NULL, NULL);
		if (error) {
			if (have_acl)
				FUNC31(&acl_ids);
			if (FUNC27(name, "..") == 0)
				error = FUNC3(EISDIR);
			FUNC7(zfsvfs);
			return (error);
		}
	}

	if (zp == NULL) {
		uint64_t txtype;
		uint64_t projid = ZFS_DEFAULT_PROJID;

		/*
		 * Create a new file object and update the directory
		 * to reference it.
		 */
		if ((error = FUNC44(dzp, ACE_ADD_FILE, 0, B_FALSE, cr))) {
			if (have_acl)
				FUNC31(&acl_ids);
			goto out;
		}

		/*
		 * We only support the creation of regular files in
		 * extended attribute directories.
		 */

		if ((dzp->z_pflags & ZFS_XATTR) && !FUNC5(vap->va_mode)) {
			if (have_acl)
				FUNC31(&acl_ids);
			error = FUNC3(EINVAL);
			goto out;
		}

		if (!have_acl && (error = FUNC30(dzp, 0, vap,
		    cr, vsecp, &acl_ids)) != 0)
			goto out;
		have_acl = B_TRUE;

		if (FUNC5(vap->va_mode) || FUNC4(vap->va_mode))
			projid = FUNC38(dzp);
		if (FUNC32(zfsvfs, &acl_ids, projid)) {
			FUNC31(&acl_ids);
			error = FUNC3(EDQUOT);
			goto out;
		}

		tx = FUNC15(os);

		FUNC17(tx, acl_ids.z_aclp->z_acl_bytes +
		    ZFS_SA_BASE_ATTR_SIZE);

		fuid_dirtied = zfsvfs->z_fuid_dirty;
		if (fuid_dirtied)
			FUNC37(zfsvfs, tx);
		FUNC19(tx, dzp->z_id, TRUE, name);
		FUNC16(tx, dzp->z_sa_hdl, B_FALSE);
		if (!zfsvfs->z_use_sa &&
		    acl_ids.z_aclp->z_acl_bytes > ZFS_ACE_SPACE) {
			FUNC18(tx, DMU_NEW_OBJECT,
			    0, acl_ids.z_aclp->z_acl_bytes);
		}

		error = FUNC13(tx,
		    (waited ? TXG_NOTHROTTLE : 0) | TXG_NOWAIT);
		if (error) {
			FUNC34(dl);
			if (error == ERESTART) {
				waited = B_TRUE;
				FUNC20(tx);
				FUNC12(tx);
				goto top;
			}
			FUNC31(&acl_ids);
			FUNC12(tx);
			FUNC7(zfsvfs);
			return (error);
		}
		FUNC43(dzp, vap, tx, cr, 0, &zp, &acl_ids);

		error = FUNC40(dl, zp, tx, ZNEW);
		if (error != 0) {
			/*
			 * Since, we failed to add the directory entry for it,
			 * delete the newly created dnode.
			 */
			FUNC46(zp, tx);
			FUNC25(FUNC9(zp));
			FUNC31(&acl_ids);
			FUNC14(tx);
			goto out;
		}

		if (fuid_dirtied)
			FUNC36(zfsvfs, tx);

		txtype = FUNC42(Z_FILE, vsecp, vap);
		if (flag & FIGNORECASE)
			txtype |= TX_CI;
		FUNC41(zilog, tx, txtype, dzp, zp, name,
		    vsecp, acl_ids.z_fuidp, vap);
		FUNC31(&acl_ids);
		FUNC14(tx);
	} else {
		int aflags = (flag & FAPPEND) ? V_APPEND : 0;

		if (have_acl)
			FUNC31(&acl_ids);
		have_acl = B_FALSE;

		/*
		 * A directory entry already exists for this name.
		 */
		/*
		 * Can't truncate an existing file if in exclusive mode.
		 */
		if (excl) {
			error = FUNC3(EEXIST);
			goto out;
		}
		/*
		 * Can't open a directory for writing.
		 */
		if (FUNC4(FUNC9(zp)->i_mode)) {
			error = FUNC3(EISDIR);
			goto out;
		}
		/*
		 * Verify requested access to file.
		 */
		if (mode && (error = FUNC45(zp, mode, aflags, cr))) {
			goto out;
		}

		FUNC23(&dzp->z_lock);
		dzp->z_seq++;
		FUNC24(&dzp->z_lock);

		/*
		 * Truncate regular files if requested.
		 */
		if (FUNC5(FUNC9(zp)->i_mode) &&
		    (vap->va_mask & ATTR_SIZE) && (vap->va_size == 0)) {
			/* we can't hold any locks when calling zfs_freesp() */
			if (dl) {
				FUNC34(dl);
				dl = NULL;
			}
			error = FUNC35(zp, 0, 0, mode, TRUE);
		}
	}
out:

	if (dl)
		FUNC34(dl);

	if (error) {
		if (zp)
			FUNC22(FUNC9(zp));
	} else {
		FUNC39(dzp);
		FUNC39(zp);
		*ipp = FUNC9(zp);
	}

	if (zfsvfs->z_os->os_sync == ZFS_SYNC_ALWAYS)
		FUNC47(zilog, 0);

	FUNC7(zfsvfs);
	return (error);
}