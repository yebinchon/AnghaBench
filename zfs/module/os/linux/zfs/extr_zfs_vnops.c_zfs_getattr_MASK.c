#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_12__ ;

/* Type definitions */
struct TYPE_25__ {int z_pflags; scalar_t__ z_id; scalar_t__ z_blksz; int /*<<< orphan*/  z_sa_hdl; int /*<<< orphan*/  z_lock; int /*<<< orphan*/  z_projid; int /*<<< orphan*/  z_mode; } ;
typedef  TYPE_2__ znode_t ;
struct TYPE_26__ {scalar_t__ z_root; int /*<<< orphan*/  z_max_blksz; scalar_t__ z_use_fuids; } ;
typedef  TYPE_3__ zfsvfs_t ;
typedef  int /*<<< orphan*/  xvattr_t ;
struct TYPE_27__ {int xoa_archive; int xoa_readonly; int xoa_system; int xoa_hidden; int xoa_nounlink; int xoa_immutable; int xoa_appendonly; int xoa_nodump; int xoa_opaque; int xoa_av_quarantined; int xoa_av_modified; int xoa_reparse; int xoa_offline; int xoa_sparse; int xoa_projinherit; int /*<<< orphan*/  xoa_projid; int /*<<< orphan*/  xoa_generation; int /*<<< orphan*/  xoa_createtime; } ;
typedef  TYPE_4__ xoptattr_t ;
struct TYPE_28__ {scalar_t__ va_nodeid; int /*<<< orphan*/  va_blksize; int /*<<< orphan*/  va_nblocks; int /*<<< orphan*/  va_ctime; int /*<<< orphan*/  va_mtime; int /*<<< orphan*/  va_atime; int /*<<< orphan*/  va_seq; int /*<<< orphan*/  va_rdev; int /*<<< orphan*/  va_size; int /*<<< orphan*/  va_nlink; int /*<<< orphan*/  va_fsid; int /*<<< orphan*/  va_mode; int /*<<< orphan*/  va_type; int /*<<< orphan*/  va_uid; int /*<<< orphan*/  va_gid; } ;
typedef  TYPE_5__ vattr_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  times ;
struct inode {int /*<<< orphan*/  i_generation; int /*<<< orphan*/  i_mode; int /*<<< orphan*/  i_rdev; } ;
typedef  int /*<<< orphan*/  sa_bulk_attr_t ;
typedef  int /*<<< orphan*/  cred_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_24__ {int /*<<< orphan*/  s_dev; } ;
struct TYPE_23__ {scalar_t__ i_nlink; TYPE_1__* i_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACE_READ_ATTRIBUTES ; 
 int ATTR_NOACLCHECK ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 TYPE_3__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__**,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XAT_APPENDONLY ; 
 int /*<<< orphan*/  XAT_ARCHIVE ; 
 int /*<<< orphan*/  XAT_AV_MODIFIED ; 
 int /*<<< orphan*/  XAT_AV_QUARANTINED ; 
 int /*<<< orphan*/  XAT_AV_SCANSTAMP ; 
 int /*<<< orphan*/  XAT_CREATETIME ; 
 int /*<<< orphan*/  XAT_GEN ; 
 int /*<<< orphan*/  XAT_HIDDEN ; 
 int /*<<< orphan*/  XAT_IMMUTABLE ; 
 int /*<<< orphan*/  XAT_NODUMP ; 
 int /*<<< orphan*/  XAT_NOUNLINK ; 
 int /*<<< orphan*/  XAT_OFFLINE ; 
 int /*<<< orphan*/  XAT_OPAQUE ; 
 int /*<<< orphan*/  XAT_PROJID ; 
 int /*<<< orphan*/  XAT_PROJINHERIT ; 
 int /*<<< orphan*/  XAT_READONLY ; 
 int /*<<< orphan*/  XAT_REPARSE ; 
 int /*<<< orphan*/  XAT_SPARSE ; 
 int /*<<< orphan*/  XAT_SYSTEM ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int ZFS_ACL_TRIVIAL ; 
 int ZFS_APPENDONLY ; 
 int ZFS_ARCHIVE ; 
 int ZFS_AV_MODIFIED ; 
 int ZFS_AV_QUARANTINED ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int ZFS_HIDDEN ; 
 int ZFS_IMMUTABLE ; 
 int /*<<< orphan*/  ZFS_LINK_MAX ; 
 int ZFS_NODUMP ; 
 int ZFS_NOUNLINK ; 
 int ZFS_OFFLINE ; 
 int ZFS_OPAQUE ; 
 int ZFS_PROJINHERIT ; 
 int ZFS_READONLY ; 
 int ZFS_REPARSE ; 
 int ZFS_SPARSE ; 
 int ZFS_SYSTEM ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*) ; 
 TYPE_12__* FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC27 (TYPE_2__*) ; 
 int FUNC28 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC29(struct inode *ip, vattr_t *vap, int flags, cred_t *cr)
{
	znode_t *zp = FUNC0(ip);
	zfsvfs_t *zfsvfs = FUNC1(ip);
	int	error = 0;
	uint64_t links;
	uint64_t atime[2], mtime[2], ctime[2];
	xvattr_t *xvap = (xvattr_t *)vap;	/* vap may be an xvattr_t * */
	xoptattr_t *xoap = NULL;
	boolean_t skipaclchk = (flags & ATTR_NOACLCHECK) ? B_TRUE : B_FALSE;
	sa_bulk_attr_t bulk[3];
	int count = 0;

	FUNC11(zfsvfs);
	FUNC14(zp);

	FUNC25(zp, cr, &vap->va_uid, &vap->va_gid);

	FUNC3(bulk, count, FUNC4(zfsvfs), NULL, &atime, 16);
	FUNC3(bulk, count, FUNC7(zfsvfs), NULL, &mtime, 16);
	FUNC3(bulk, count, FUNC6(zfsvfs), NULL, &ctime, 16);

	if ((error = FUNC20(zp->z_sa_hdl, bulk, count)) != 0) {
		FUNC12(zfsvfs);
		return (error);
	}

	/*
	 * If ACL is trivial don't bother looking for ACE_READ_ATTRIBUTES.
	 * Also, if we are the owner don't bother, since owner should
	 * always be allowed to read basic attributes of file.
	 */
	if (!(zp->z_pflags & ZFS_ACL_TRIVIAL) &&
	    (vap->va_uid != FUNC16(cr))) {
		if ((error = FUNC28(zp, ACE_READ_ATTRIBUTES, 0,
		    skipaclchk, cr))) {
			FUNC12(zfsvfs);
			return (error);
		}
	}

	/*
	 * Return all attributes.  It's cheaper to provide the answer
	 * than to determine whether we were asked the question.
	 */

	FUNC18(&zp->z_lock);
	vap->va_type = FUNC23(zp->z_mode);
	vap->va_mode = zp->z_mode;
	vap->va_fsid = FUNC15(zp)->i_sb->s_dev;
	vap->va_nodeid = zp->z_id;
	if ((zp->z_id == zfsvfs->z_root) && FUNC27(zp))
		links = FUNC15(zp)->i_nlink + 1;
	else
		links = FUNC15(zp)->i_nlink;
	vap->va_nlink = FUNC2(links, ZFS_LINK_MAX);
	vap->va_size = FUNC17(ip);
	vap->va_rdev = ip->i_rdev;
	vap->va_seq = ip->i_generation;

	/*
	 * Add in any requested optional attributes and the create time.
	 * Also set the corresponding bits in the returned attribute bitmap.
	 */
	if ((xoap = FUNC24(xvap)) != NULL && zfsvfs->z_use_fuids) {
		if (FUNC9(xvap, XAT_ARCHIVE)) {
			xoap->xoa_archive =
			    ((zp->z_pflags & ZFS_ARCHIVE) != 0);
			FUNC10(xvap, XAT_ARCHIVE);
		}

		if (FUNC9(xvap, XAT_READONLY)) {
			xoap->xoa_readonly =
			    ((zp->z_pflags & ZFS_READONLY) != 0);
			FUNC10(xvap, XAT_READONLY);
		}

		if (FUNC9(xvap, XAT_SYSTEM)) {
			xoap->xoa_system =
			    ((zp->z_pflags & ZFS_SYSTEM) != 0);
			FUNC10(xvap, XAT_SYSTEM);
		}

		if (FUNC9(xvap, XAT_HIDDEN)) {
			xoap->xoa_hidden =
			    ((zp->z_pflags & ZFS_HIDDEN) != 0);
			FUNC10(xvap, XAT_HIDDEN);
		}

		if (FUNC9(xvap, XAT_NOUNLINK)) {
			xoap->xoa_nounlink =
			    ((zp->z_pflags & ZFS_NOUNLINK) != 0);
			FUNC10(xvap, XAT_NOUNLINK);
		}

		if (FUNC9(xvap, XAT_IMMUTABLE)) {
			xoap->xoa_immutable =
			    ((zp->z_pflags & ZFS_IMMUTABLE) != 0);
			FUNC10(xvap, XAT_IMMUTABLE);
		}

		if (FUNC9(xvap, XAT_APPENDONLY)) {
			xoap->xoa_appendonly =
			    ((zp->z_pflags & ZFS_APPENDONLY) != 0);
			FUNC10(xvap, XAT_APPENDONLY);
		}

		if (FUNC9(xvap, XAT_NODUMP)) {
			xoap->xoa_nodump =
			    ((zp->z_pflags & ZFS_NODUMP) != 0);
			FUNC10(xvap, XAT_NODUMP);
		}

		if (FUNC9(xvap, XAT_OPAQUE)) {
			xoap->xoa_opaque =
			    ((zp->z_pflags & ZFS_OPAQUE) != 0);
			FUNC10(xvap, XAT_OPAQUE);
		}

		if (FUNC9(xvap, XAT_AV_QUARANTINED)) {
			xoap->xoa_av_quarantined =
			    ((zp->z_pflags & ZFS_AV_QUARANTINED) != 0);
			FUNC10(xvap, XAT_AV_QUARANTINED);
		}

		if (FUNC9(xvap, XAT_AV_MODIFIED)) {
			xoap->xoa_av_modified =
			    ((zp->z_pflags & ZFS_AV_MODIFIED) != 0);
			FUNC10(xvap, XAT_AV_MODIFIED);
		}

		if (FUNC9(xvap, XAT_AV_SCANSTAMP) &&
		    FUNC8(ip->i_mode)) {
			FUNC26(zp, xvap);
		}

		if (FUNC9(xvap, XAT_CREATETIME)) {
			uint64_t times[2];

			(void) FUNC21(zp->z_sa_hdl, FUNC5(zfsvfs),
			    times, sizeof (times));
			FUNC13(&xoap->xoa_createtime, times);
			FUNC10(xvap, XAT_CREATETIME);
		}

		if (FUNC9(xvap, XAT_REPARSE)) {
			xoap->xoa_reparse = ((zp->z_pflags & ZFS_REPARSE) != 0);
			FUNC10(xvap, XAT_REPARSE);
		}
		if (FUNC9(xvap, XAT_GEN)) {
			xoap->xoa_generation = ip->i_generation;
			FUNC10(xvap, XAT_GEN);
		}

		if (FUNC9(xvap, XAT_OFFLINE)) {
			xoap->xoa_offline =
			    ((zp->z_pflags & ZFS_OFFLINE) != 0);
			FUNC10(xvap, XAT_OFFLINE);
		}

		if (FUNC9(xvap, XAT_SPARSE)) {
			xoap->xoa_sparse =
			    ((zp->z_pflags & ZFS_SPARSE) != 0);
			FUNC10(xvap, XAT_SPARSE);
		}

		if (FUNC9(xvap, XAT_PROJINHERIT)) {
			xoap->xoa_projinherit =
			    ((zp->z_pflags & ZFS_PROJINHERIT) != 0);
			FUNC10(xvap, XAT_PROJINHERIT);
		}

		if (FUNC9(xvap, XAT_PROJID)) {
			xoap->xoa_projid = zp->z_projid;
			FUNC10(xvap, XAT_PROJID);
		}
	}

	FUNC13(&vap->va_atime, atime);
	FUNC13(&vap->va_mtime, mtime);
	FUNC13(&vap->va_ctime, ctime);

	FUNC19(&zp->z_lock);

	FUNC22(zp->z_sa_hdl, &vap->va_blksize, &vap->va_nblocks);

	if (zp->z_blksz == 0) {
		/*
		 * Block size hasn't been set; suggest maximal I/O transfers.
		 */
		vap->va_blksize = zfsvfs->z_max_blksz;
	}

	FUNC12(zfsvfs);
	return (0);
}