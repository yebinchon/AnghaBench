#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int z_pflags; scalar_t__ z_size; int z_blksz; int /*<<< orphan*/  z_sa_hdl; scalar_t__ z_is_mapped; int /*<<< orphan*/  z_rangelock; int /*<<< orphan*/  z_id; } ;
typedef  TYPE_2__ znode_t ;
struct TYPE_18__ {int /*<<< orphan*/  z_kstat; scalar_t__ z_log; TYPE_1__* z_os; } ;
typedef  TYPE_3__ zfsvfs_t ;
typedef  int /*<<< orphan*/  zfs_locked_range_t ;
struct TYPE_19__ {scalar_t__ xu_type; } ;
typedef  TYPE_4__ xuio_t ;
struct TYPE_20__ {scalar_t__ uio_loffset; int uio_resid; scalar_t__ uio_extflg; } ;
typedef  TYPE_5__ uio_t ;
typedef  int uint64_t ;
struct inode {int dummy; } ;
typedef  int ssize_t ;
typedef  scalar_t__ offset_t ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  cred_t ;
typedef  int boolean_t ;
struct TYPE_16__ {scalar_t__ os_sync; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int B_FALSE ; 
 int /*<<< orphan*/  EACCES ; 
 int ECKSUM ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EIO ; 
 int FRSYNC ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_2__* FUNC2 (struct inode*) ; 
 TYPE_3__* FUNC3 (struct inode*) ; 
 int FUNC4 (int,scalar_t__) ; 
 int O_DIRECT ; 
 int FUNC5 (int,int) ; 
 scalar_t__ FUNC6 (int,scalar_t__) ; 
 int FUNC7 (int,int) ; 
 int /*<<< orphan*/  RL_READER ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ UIOTYPE_ZEROCOPY ; 
 scalar_t__ UIO_XUIO ; 
 int ZFS_AV_QUARANTINED ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 scalar_t__ ZFS_SYNC_ALWAYS ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int /*<<< orphan*/ ,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,int) ; 
 int FUNC17 (struct inode*,int,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 scalar_t__ FUNC20 (struct inode*) ; 
 int /*<<< orphan*/ * FUNC21 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 scalar_t__ zfs_read_chunk_size ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__,int /*<<< orphan*/ ) ; 

int
FUNC24(struct inode *ip, uio_t *uio, int ioflag, cred_t *cr)
{
	int error = 0;
	boolean_t frsync = B_FALSE;

	znode_t *zp = FUNC2(ip);
	zfsvfs_t *zfsvfs = FUNC3(ip);
	FUNC9(zfsvfs);
	FUNC11(zp);

	if (zp->z_pflags & ZFS_AV_QUARANTINED) {
		FUNC10(zfsvfs);
		return (FUNC8(EACCES));
	}

	/*
	 * Validate file offset
	 */
	if (uio->uio_loffset < (offset_t)0) {
		FUNC10(zfsvfs);
		return (FUNC8(EINVAL));
	}

	/*
	 * Fasttrack empty reads
	 */
	if (uio->uio_resid == 0) {
		FUNC10(zfsvfs);
		return (0);
	}

#ifdef FRSYNC
	/*
	 * If we're in FRSYNC mode, sync out this znode before reading it.
	 * Only do this for non-snapshots.
	 *
	 * Some platforms do not support FRSYNC and instead map it
	 * to FSYNC, which results in unnecessary calls to zil_commit. We
	 * only honor FRSYNC requests on platforms which support it.
	 */
	frsync = !!(ioflag & FRSYNC);
#endif
	if (zfsvfs->z_log &&
	    (frsync || zfsvfs->z_os->os_sync == ZFS_SYNC_ALWAYS))
		FUNC23(zfsvfs->z_log, zp->z_id);

	/*
	 * Lock the range against changes.
	 */
	zfs_locked_range_t *lr = FUNC21(&zp->z_rangelock,
	    uio->uio_loffset, uio->uio_resid, RL_READER);

	/*
	 * If we are reading past end-of-file we can skip
	 * to the end; but we might still need to set atime.
	 */
	if (uio->uio_loffset >= zp->z_size) {
		error = 0;
		goto out;
	}

	FUNC0(uio->uio_loffset < zp->z_size);
	ssize_t n = FUNC4(uio->uio_resid, zp->z_size - uio->uio_loffset);
	ssize_t start_resid = n;

#ifdef HAVE_UIO_ZEROCOPY
	xuio_t *xuio = NULL;
	if ((uio->uio_extflg == UIO_XUIO) &&
	    (((xuio_t *)uio)->xu_type == UIOTYPE_ZEROCOPY)) {
		int nblk;
		int blksz = zp->z_blksz;
		uint64_t offset = uio->uio_loffset;

		xuio = (xuio_t *)uio;
		if ((ISP2(blksz))) {
			nblk = (P2ROUNDUP(offset + n, blksz) - P2ALIGN(offset,
			    blksz)) / blksz;
		} else {
			ASSERT(offset + n <= blksz);
			nblk = 1;
		}
		(void) dmu_xuio_init(xuio, nblk);

		if (vn_has_cached_data(ip)) {
			/*
			 * For simplicity, we always allocate a full buffer
			 * even if we only expect to read a portion of a block.
			 */
			while (--nblk >= 0) {
				(void) dmu_xuio_add(xuio,
				    dmu_request_arcbuf(sa_get_db(zp->z_sa_hdl),
				    blksz), 0, blksz);
			}
		}
	}
#endif /* HAVE_UIO_ZEROCOPY */

	while (n > 0) {
		ssize_t nbytes = FUNC4(n, zfs_read_chunk_size -
		    FUNC6(uio->uio_loffset, zfs_read_chunk_size));

		if (zp->z_is_mapped && !(ioflag & O_DIRECT)) {
			error = FUNC17(ip, nbytes, uio);
		} else {
			error = FUNC13(FUNC18(zp->z_sa_hdl),
			    uio, nbytes);
		}

		if (error) {
			/* convert checksum errors into IO errors */
			if (error == ECKSUM)
				error = FUNC8(EIO);
			break;
		}

		n -= nbytes;
	}

	int64_t nread = start_resid - n;
	FUNC12(&zfsvfs->z_kstat, nread);
	FUNC19(nread);
out:
	FUNC22(lr);

	FUNC10(zfsvfs);
	return (error);
}