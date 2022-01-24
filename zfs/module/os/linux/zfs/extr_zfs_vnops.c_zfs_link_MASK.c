#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_12__ ;

/* Type definitions */
struct TYPE_22__ {int z_pflags; scalar_t__ z_projid; void* z_unlinked; int /*<<< orphan*/  z_id; int /*<<< orphan*/  z_sa_hdl; } ;
typedef  TYPE_1__ znode_t ;
typedef  int /*<<< orphan*/  zilog_t ;
struct TYPE_23__ {scalar_t__ z_shares_dir; TYPE_12__* z_os; int /*<<< orphan*/  z_unlinkedobj; scalar_t__ z_utf8; int /*<<< orphan*/ * z_log; } ;
typedef  TYPE_2__ zfsvfs_t ;
typedef  int /*<<< orphan*/  zfs_dirlock_t ;
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uid_t ;
struct inode {scalar_t__ i_nlink; int i_state; scalar_t__ i_sb; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_mode; } ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  cred_t ;
typedef  int boolean_t ;
struct TYPE_21__ {scalar_t__ os_sync; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACE_ADD_FILE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 void* B_FALSE ; 
 void* B_TRUE ; 
 int /*<<< orphan*/  EILSEQ ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EPERM ; 
 int ERESTART ; 
 int /*<<< orphan*/  EXDEV ; 
 int /*<<< orphan*/  FALSE ; 
 int FIGNORECASE ; 
 TYPE_1__* FUNC1 (struct inode*) ; 
 TYPE_2__* FUNC2 (struct inode*) ; 
 int I_LINKABLE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int TXG_NOTHROTTLE ; 
 int TXG_NOWAIT ; 
 scalar_t__ TX_CI ; 
 scalar_t__ TX_LINK ; 
 int /*<<< orphan*/  U8_VALIDATE_ENTIRE ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int ZCILOOK ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  ZFS_OWNER ; 
 int ZFS_PROJINHERIT ; 
 scalar_t__ ZFS_SYNC_ALWAYS ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int ZFS_XATTR ; 
 int ZNEW ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (TYPE_12__*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC25 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC26 (TYPE_12__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC27 (int /*<<< orphan*/ **,TYPE_1__*,char*,TYPE_1__**,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC29 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_1__*) ; 
 int FUNC31 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,TYPE_1__*,TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC34 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC35 (struct inode*) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC37(struct inode *tdip, struct inode *sip, char *name, cred_t *cr,
    int flags)
{
	znode_t		*dzp = FUNC1(tdip);
	znode_t		*tzp, *szp;
	zfsvfs_t	*zfsvfs = FUNC2(tdip);
	zilog_t		*zilog;
	zfs_dirlock_t	*dl;
	dmu_tx_t	*tx;
	int		error;
	int		zf = ZNEW;
	uint64_t	parent;
	uid_t		owner;
	boolean_t	waited = B_FALSE;
	boolean_t	is_tmpfile = 0;
	uint64_t	txg;
#ifdef HAVE_TMPFILE
	is_tmpfile = (sip->i_nlink == 0 && (sip->i_state & I_LINKABLE));
#endif
	FUNC0(FUNC6(tdip->i_mode));

	if (name == NULL)
		return (FUNC5(EINVAL));

	FUNC8(zfsvfs);
	FUNC10(dzp);
	zilog = zfsvfs->z_log;

	/*
	 * POSIX dictates that we return EPERM here.
	 * Better choices include ENOTSUP or EISDIR.
	 */
	if (FUNC6(sip->i_mode)) {
		FUNC9(zfsvfs);
		return (FUNC5(EPERM));
	}

	szp = FUNC1(sip);
	FUNC10(szp);

	/*
	 * If we are using project inheritance, means if the directory has
	 * ZFS_PROJINHERIT set, then its descendant directories will inherit
	 * not only the project ID, but also the ZFS_PROJINHERIT flag. Under
	 * such case, we only allow hard link creation in our tree when the
	 * project IDs are the same.
	 */
	if (dzp->z_pflags & ZFS_PROJINHERIT && dzp->z_projid != szp->z_projid) {
		FUNC9(zfsvfs);
		return (FUNC5(EXDEV));
	}

	/*
	 * We check i_sb because snapshots and the ctldir must have different
	 * super blocks.
	 */
	if (sip->i_sb != tdip->i_sb || FUNC35(sip)) {
		FUNC9(zfsvfs);
		return (FUNC5(EXDEV));
	}

	/* Prevent links to .zfs/shares files */

	if ((error = FUNC21(szp->z_sa_hdl, FUNC4(zfsvfs),
	    &parent, sizeof (uint64_t))) != 0) {
		FUNC9(zfsvfs);
		return (error);
	}
	if (parent == zfsvfs->z_shares_dir) {
		FUNC9(zfsvfs);
		return (FUNC5(EPERM));
	}

	if (zfsvfs->z_utf8 && FUNC25(name,
	    FUNC23(name), NULL, U8_VALIDATE_ENTIRE, &error) < 0) {
		FUNC9(zfsvfs);
		return (FUNC5(EILSEQ));
	}
	if (flags & FIGNORECASE)
		zf |= ZCILOOK;

	/*
	 * We do not support links between attributes and non-attributes
	 * because of the potential security risk of creating links
	 * into "normal" file space in order to circumvent restrictions
	 * imposed in attribute space.
	 */
	if ((szp->z_pflags & ZFS_XATTR) != (dzp->z_pflags & ZFS_XATTR)) {
		FUNC9(zfsvfs);
		return (FUNC5(EINVAL));
	}

	owner = FUNC29(zfsvfs, FUNC3(sip->i_uid),
	    cr, ZFS_OWNER);
	if (owner != FUNC11(cr) && FUNC22(cr) != 0) {
		FUNC9(zfsvfs);
		return (FUNC5(EPERM));
	}

	if ((error = FUNC34(dzp, ACE_ADD_FILE, 0, B_FALSE, cr))) {
		FUNC9(zfsvfs);
		return (error);
	}

top:
	/*
	 * Attempt to lock directory; fail if entry already exists.
	 */
	error = FUNC27(&dl, dzp, name, &tzp, zf, NULL, NULL);
	if (error) {
		FUNC9(zfsvfs);
		return (error);
	}

	tx = FUNC16(zfsvfs->z_os);
	FUNC18(tx, szp->z_sa_hdl, B_FALSE);
	FUNC19(tx, dzp->z_id, TRUE, name);
	if (is_tmpfile)
		FUNC19(tx, zfsvfs->z_unlinkedobj, FALSE, NULL);

	FUNC33(tx, szp);
	FUNC33(tx, dzp);
	error = FUNC14(tx, (waited ? TXG_NOTHROTTLE : 0) | TXG_NOWAIT);
	if (error) {
		FUNC28(dl);
		if (error == ERESTART) {
			waited = B_TRUE;
			FUNC20(tx);
			FUNC13(tx);
			goto top;
		}
		FUNC13(tx);
		FUNC9(zfsvfs);
		return (error);
	}
	/* unmark z_unlinked so zfs_link_create will not reject */
	if (is_tmpfile)
		szp->z_unlinked = B_FALSE;
	error = FUNC31(dl, szp, tx, 0);

	if (error == 0) {
		uint64_t txtype = TX_LINK;
		/*
		 * tmpfile is created to be in z_unlinkedobj, so remove it.
		 * Also, we don't log in ZIL, because all previous file
		 * operation on the tmpfile are ignored by ZIL. Instead we
		 * always wait for txg to sync to make sure all previous
		 * operation are sync safe.
		 */
		if (is_tmpfile) {
			FUNC7(FUNC26(zfsvfs->z_os,
			    zfsvfs->z_unlinkedobj, szp->z_id, tx) == 0);
		} else {
			if (flags & FIGNORECASE)
				txtype |= TX_CI;
			FUNC32(zilog, tx, txtype, dzp, szp, name);
		}
	} else if (is_tmpfile) {
		/* restore z_unlinked since when linking failed */
		szp->z_unlinked = B_TRUE;
	}
	txg = FUNC17(tx);
	FUNC15(tx);

	FUNC28(dl);

	if (!is_tmpfile && zfsvfs->z_os->os_sync == ZFS_SYNC_ALWAYS)
		FUNC36(zilog, 0);

	if (is_tmpfile)
		FUNC24(FUNC12(zfsvfs->z_os), txg);

	FUNC30(dzp);
	FUNC30(szp);
	FUNC9(zfsvfs);
	return (error);
}