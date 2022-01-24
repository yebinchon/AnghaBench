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
typedef  struct TYPE_39__   TYPE_2__ ;
typedef  struct TYPE_38__   TYPE_28__ ;
typedef  struct TYPE_37__   TYPE_1__ ;

/* Type definitions */
struct TYPE_39__ {char z_size; int /*<<< orphan*/  z_sa_hdl; int /*<<< orphan*/  z_lock; scalar_t__ z_is_sa; int /*<<< orphan*/  z_id; } ;
typedef  TYPE_2__ znode_t ;
typedef  int /*<<< orphan*/  zilog_t ;
struct TYPE_40__ {TYPE_28__* z_os; int /*<<< orphan*/  z_use_sa; scalar_t__ z_fuid_dirty; scalar_t__ z_utf8; int /*<<< orphan*/ * z_log; } ;
typedef  TYPE_3__ zfsvfs_t ;
typedef  int /*<<< orphan*/  zfs_dirlock_t ;
struct TYPE_41__ {TYPE_1__* z_aclp; } ;
typedef  TYPE_4__ zfs_acl_ids_t ;
struct TYPE_42__ {int /*<<< orphan*/  va_mode; } ;
typedef  TYPE_5__ vattr_t ;
typedef  scalar_t__ uint64_t ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  cred_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_38__ {scalar_t__ os_sync; } ;
struct TYPE_37__ {scalar_t__ z_acl_bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACE_ADD_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  DMU_NEW_OBJECT ; 
 int /*<<< orphan*/  EDQUOT ; 
 int /*<<< orphan*/  EILSEQ ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int ERESTART ; 
 int FIGNORECASE ; 
 TYPE_2__* FUNC1 (struct inode*) ; 
 TYPE_3__* FUNC2 (struct inode*) ; 
 scalar_t__ FUNC3 (int,scalar_t__) ; 
 scalar_t__ MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int TXG_NOTHROTTLE ; 
 int TXG_NOWAIT ; 
 scalar_t__ TX_CI ; 
 scalar_t__ TX_SYMLINK ; 
 int /*<<< orphan*/  U8_VALIDATE_ENTIRE ; 
 int ZCILOOK ; 
 scalar_t__ ZFS_ACE_SPACE ; 
 int /*<<< orphan*/  ZFS_DEFAULT_PROJID ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 scalar_t__ ZFS_SA_BASE_ATTR_SIZE ; 
 scalar_t__ ZFS_SYNC_ALWAYS ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int ZNEW ; 
 struct inode* FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (TYPE_28__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (struct inode*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (struct inode*) ; 
 int FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC26 (char*) ; 
 scalar_t__ FUNC27 (char*,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int FUNC28 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_4__*) ; 
 scalar_t__ FUNC30 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC31 (int /*<<< orphan*/ **,TYPE_2__*,char*,TYPE_2__**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC33 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC35 (TYPE_2__*) ; 
 int FUNC36 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,TYPE_2__*,TYPE_2__*,char*,char*) ; 
 int /*<<< orphan*/  FUNC38 (TYPE_2__*,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__**,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC39 (TYPE_2__*,char*,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC40 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC41 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC42 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC43(struct inode *dip, char *name, vattr_t *vap, char *link,
    struct inode **ipp, cred_t *cr, int flags)
{
	znode_t		*zp, *dzp = FUNC1(dip);
	zfs_dirlock_t	*dl;
	dmu_tx_t	*tx;
	zfsvfs_t	*zfsvfs = FUNC2(dip);
	zilog_t		*zilog;
	uint64_t	len = FUNC26(link);
	int		error;
	int		zflg = ZNEW;
	zfs_acl_ids_t	acl_ids;
	boolean_t	fuid_dirtied;
	uint64_t	txtype = TX_SYMLINK;
	boolean_t	waited = B_FALSE;

	FUNC0(FUNC7(vap->va_mode));

	if (name == NULL)
		return (FUNC6(EINVAL));

	FUNC8(zfsvfs);
	FUNC10(dzp);
	zilog = zfsvfs->z_log;

	if (zfsvfs->z_utf8 && FUNC27(name, FUNC26(name),
	    NULL, U8_VALIDATE_ENTIRE, &error) < 0) {
		FUNC9(zfsvfs);
		return (FUNC6(EILSEQ));
	}
	if (flags & FIGNORECASE)
		zflg |= ZCILOOK;

	if (len > MAXPATHLEN) {
		FUNC9(zfsvfs);
		return (FUNC6(ENAMETOOLONG));
	}

	if ((error = FUNC28(dzp, 0,
	    vap, cr, NULL, &acl_ids)) != 0) {
		FUNC9(zfsvfs);
		return (error);
	}
top:
	*ipp = NULL;

	/*
	 * Attempt to lock directory; fail if entry already exists.
	 */
	error = FUNC31(&dl, dzp, name, &zp, zflg, NULL, NULL);
	if (error) {
		FUNC29(&acl_ids);
		FUNC9(zfsvfs);
		return (error);
	}

	if ((error = FUNC40(dzp, ACE_ADD_FILE, 0, B_FALSE, cr))) {
		FUNC29(&acl_ids);
		FUNC32(dl);
		FUNC9(zfsvfs);
		return (error);
	}

	if (FUNC30(zfsvfs, &acl_ids, ZFS_DEFAULT_PROJID)) {
		FUNC29(&acl_ids);
		FUNC32(dl);
		FUNC9(zfsvfs);
		return (FUNC6(EDQUOT));
	}
	tx = FUNC15(zfsvfs->z_os);
	fuid_dirtied = zfsvfs->z_fuid_dirty;
	FUNC18(tx, DMU_NEW_OBJECT, 0, FUNC3(1, len));
	FUNC19(tx, dzp->z_id, TRUE, name);
	FUNC17(tx, acl_ids.z_aclp->z_acl_bytes +
	    ZFS_SA_BASE_ATTR_SIZE + len);
	FUNC16(tx, dzp->z_sa_hdl, B_FALSE);
	if (!zfsvfs->z_use_sa && acl_ids.z_aclp->z_acl_bytes > ZFS_ACE_SPACE) {
		FUNC18(tx, DMU_NEW_OBJECT, 0,
		    acl_ids.z_aclp->z_acl_bytes);
	}
	if (fuid_dirtied)
		FUNC34(zfsvfs, tx);
	error = FUNC13(tx, (waited ? TXG_NOTHROTTLE : 0) | TXG_NOWAIT);
	if (error) {
		FUNC32(dl);
		if (error == ERESTART) {
			waited = B_TRUE;
			FUNC20(tx);
			FUNC12(tx);
			goto top;
		}
		FUNC29(&acl_ids);
		FUNC12(tx);
		FUNC9(zfsvfs);
		return (error);
	}

	/*
	 * Create a new object for the symlink.
	 * for version 4 ZPL datsets the symlink will be an SA attribute
	 */
	FUNC38(dzp, vap, tx, cr, 0, &zp, &acl_ids);

	if (fuid_dirtied)
		FUNC33(zfsvfs, tx);

	FUNC22(&zp->z_lock);
	if (zp->z_is_sa)
		error = FUNC25(zp->z_sa_hdl, FUNC5(zfsvfs),
		    link, len, tx);
	else
		FUNC39(zp, link, len, tx);
	FUNC23(&zp->z_lock);

	zp->z_size = len;
	(void) FUNC25(zp->z_sa_hdl, FUNC4(zfsvfs),
	    &zp->z_size, sizeof (zp->z_size), tx);
	/*
	 * Insert the new object into the directory.
	 */
	error = FUNC36(dl, zp, tx, ZNEW);
	if (error != 0) {
		FUNC41(zp, tx);
		FUNC24(FUNC11(zp));
	} else {
		if (flags & FIGNORECASE)
			txtype |= TX_CI;
		FUNC37(zilog, tx, txtype, dzp, zp, name, link);

		FUNC35(dzp);
		FUNC35(zp);
	}

	FUNC29(&acl_ids);

	FUNC14(tx);

	FUNC32(dl);

	if (error == 0) {
		*ipp = FUNC11(zp);

		if (zfsvfs->z_os->os_sync == ZFS_SYNC_ALWAYS)
			FUNC42(zilog, 0);
	} else {
		FUNC21(FUNC11(zp));
	}

	FUNC9(zfsvfs);
	return (error);
}