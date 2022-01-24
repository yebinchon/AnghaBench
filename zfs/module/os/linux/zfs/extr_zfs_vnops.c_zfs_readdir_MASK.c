#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int pos; } ;
typedef  TYPE_1__ zpl_dir_context_t ;
struct TYPE_16__ {int z_id; scalar_t__ z_zn_prefetch; scalar_t__ z_unlinked; int /*<<< orphan*/  z_sa_hdl; } ;
typedef  TYPE_2__ znode_t ;
struct TYPE_17__ {int /*<<< orphan*/ * z_os; } ;
typedef  TYPE_3__ zfsvfs_t ;
typedef  int /*<<< orphan*/  zap_cursor_t ;
struct TYPE_18__ {int za_integer_length; scalar_t__ za_num_integers; int /*<<< orphan*/  za_name; int /*<<< orphan*/  za_first_integer; scalar_t__ za_normalization_conflict; } ;
typedef  TYPE_4__ zap_attribute_t ;
typedef  scalar_t__ uint8_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
struct inode {int dummy; } ;
typedef  int /*<<< orphan*/  parent ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 int /*<<< orphan*/  CE_WARN ; 
 scalar_t__ DT_DIR ; 
 int ENOENT ; 
 int /*<<< orphan*/  ENXIO ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 TYPE_3__* FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int ZFSCTL_INO_ROOT ; 
 char* ZFS_CTLDIR_NAME ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  ZIO_PRIORITY_SYNC_READ ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 
 int FUNC18 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 

int
FUNC22(struct inode *ip, zpl_dir_context_t *ctx, cred_t *cr)
{
	znode_t		*zp = FUNC0(ip);
	zfsvfs_t	*zfsvfs = FUNC1(ip);
	objset_t	*os;
	zap_cursor_t	zc;
	zap_attribute_t	zap;
	int		error;
	uint8_t		prefetch;
	uint8_t		type;
	int		done = 0;
	uint64_t	parent;
	uint64_t	offset; /* must be unsigned; checks for < 1 */

	FUNC6(zfsvfs);
	FUNC8(zp);

	if ((error = FUNC11(zp->z_sa_hdl, FUNC2(zfsvfs),
	    &parent, sizeof (parent))) != 0)
		goto out;

	/*
	 * Quit if directory has been removed (posix)
	 */
	if (zp->z_unlinked)
		goto out;

	error = 0;
	os = zfsvfs->z_os;
	offset = ctx->pos;
	prefetch = zp->z_zn_prefetch;

	/*
	 * Initialize the iterator cursor.
	 */
	if (offset <= 3) {
		/*
		 * Start iteration from the beginning of the directory.
		 */
		FUNC16(&zc, os, zp->z_id);
	} else {
		/*
		 * The offset is a serialized cursor.
		 */
		FUNC17(&zc, os, zp->z_id, offset);
	}

	/*
	 * Transform to file-system independent format
	 */
	while (!done) {
		uint64_t objnum;
		/*
		 * Special case `.', `..', and `.zfs'.
		 */
		if (offset == 0) {
			(void) FUNC12(zap.za_name, ".");
			zap.za_normalization_conflict = 0;
			objnum = zp->z_id;
			type = DT_DIR;
		} else if (offset == 1) {
			(void) FUNC12(zap.za_name, "..");
			zap.za_normalization_conflict = 0;
			objnum = parent;
			type = DT_DIR;
		} else if (offset == 2 && FUNC20(zp)) {
			(void) FUNC12(zap.za_name, ZFS_CTLDIR_NAME);
			zap.za_normalization_conflict = 0;
			objnum = ZFSCTL_INO_ROOT;
			type = DT_DIR;
		} else {
			/*
			 * Grab next entry.
			 */
			if ((error = FUNC18(&zc, &zap))) {
				if (error == ENOENT)
					break;
				else
					goto update;
			}

			/*
			 * Allow multiple entries provided the first entry is
			 * the object id.  Non-zpl consumers may safely make
			 * use of the additional space.
			 *
			 * XXX: This should be a feature flag for compatibility
			 */
			if (zap.za_integer_length != 8 ||
			    zap.za_num_integers == 0) {
				FUNC9(CE_WARN, "zap_readdir: bad directory "
				    "entry, obj = %lld, offset = %lld, "
				    "length = %d, num = %lld\n",
				    (u_longlong_t)zp->z_id,
				    (u_longlong_t)offset,
				    zap.za_integer_length,
				    (u_longlong_t)zap.za_num_integers);
				error = FUNC3(ENXIO);
				goto update;
			}

			objnum = FUNC4(zap.za_first_integer);
			type = FUNC5(zap.za_first_integer);
		}

		done = !FUNC21(ctx, zap.za_name, FUNC13(zap.za_name),
		    objnum, type);
		if (done)
			break;

		/* Prefetch znode */
		if (prefetch) {
			FUNC10(os, objnum, 0, 0, 0,
			    ZIO_PRIORITY_SYNC_READ);
		}

		/*
		 * Move to the next entry, fill in the previous offset.
		 */
		if (offset > 2 || (offset == 2 && !FUNC20(zp))) {
			FUNC14(&zc);
			offset = FUNC19(&zc);
		} else {
			offset += 1;
		}
		ctx->pos = offset;
	}
	zp->z_zn_prefetch = B_FALSE; /* a lookup will re-enable pre-fetching */

update:
	FUNC15(&zc);
	if (error == ENOENT)
		error = 0;
out:
	FUNC7(zfsvfs);

	return (error);
}