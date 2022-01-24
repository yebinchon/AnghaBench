#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int /*<<< orphan*/  z_lock; int /*<<< orphan*/  z_sa_hdl; int /*<<< orphan*/  z_pflags; int /*<<< orphan*/  z_size; int /*<<< orphan*/  z_id; int /*<<< orphan*/  z_mode; scalar_t__ z_unlinked; } ;
typedef  TYPE_1__ znode_t ;
struct TYPE_21__ {int /*<<< orphan*/  z_os; } ;
typedef  TYPE_2__ zfsvfs_t ;
struct TYPE_22__ {int /*<<< orphan*/  dl_name; TYPE_1__* dl_dzp; } ;
typedef  TYPE_3__ zfs_dirlock_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  sa_bulk_attr_t ;
typedef  int /*<<< orphan*/  mtime ;
typedef  int /*<<< orphan*/  links ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  ctime ;
struct TYPE_23__ {int /*<<< orphan*/  i_nlink; int /*<<< orphan*/  i_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CONTENT_MODIFIED ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATE_CHANGED ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int ZEXISTS ; 
 int ZNEW ; 
 int ZRENAMING ; 
 TYPE_8__* FUNC10 (TYPE_1__*) ; 
 TYPE_2__* FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC20(zfs_dirlock_t *dl, znode_t *zp, dmu_tx_t *tx, int flag)
{
	znode_t *dzp = dl->dl_dzp;
	zfsvfs_t *zfsvfs = FUNC11(zp);
	uint64_t value;
	int zp_is_dir = FUNC9(FUNC10(zp)->i_mode);
	sa_bulk_attr_t bulk[5];
	uint64_t mtime[2], ctime[2];
	uint64_t links;
	int count = 0;
	int error;

	FUNC14(&zp->z_lock);

	if (!(flag & ZRENAMING)) {
		if (zp->z_unlinked) {	/* no new links to unlinked zp */
			FUNC0(!(flag & (ZNEW | ZEXISTS)));
			FUNC15(&zp->z_lock);
			return (FUNC8(ENOENT));
		}
		if (!(flag & ZNEW)) {
			/*
			 * ZNEW nodes come from zfs_mknode() where the link
			 * count has already been initialised
			 */
			FUNC13(FUNC10(zp));
			links = FUNC10(zp)->i_nlink;
			FUNC1(bulk, count, FUNC4(zfsvfs),
			    NULL, &links, sizeof (links));
		}
	}

	value = FUNC18(zp, zp->z_mode);
	error = FUNC17(FUNC11(zp)->z_os, dzp->z_id, dl->dl_name, 8, 1,
	    &value, tx);

	/*
	 * zap_add could fail to add the entry if it exceeds the capacity of the
	 * leaf-block and zap_leaf_split() failed to help.
	 * The caller of this routine is responsible for failing the transaction
	 * which will rollback the SA updates done above.
	 */
	if (error != 0) {
		if (!(flag & ZRENAMING) && !(flag & ZNEW))
			FUNC12(FUNC10(zp));
		FUNC15(&zp->z_lock);
		return (error);
	}

	FUNC1(bulk, count, FUNC6(zfsvfs), NULL,
	    &dzp->z_id, sizeof (dzp->z_id));
	FUNC1(bulk, count, FUNC3(zfsvfs), NULL,
	    &zp->z_pflags, sizeof (zp->z_pflags));

	if (!(flag & ZNEW)) {
		FUNC1(bulk, count, FUNC2(zfsvfs), NULL,
		    ctime, sizeof (ctime));
		FUNC19(zp, STATE_CHANGED, mtime,
		    ctime);
	}
	error = FUNC16(zp->z_sa_hdl, bulk, count, tx);
	FUNC0(error == 0);

	FUNC15(&zp->z_lock);

	FUNC14(&dzp->z_lock);
	dzp->z_size++;
	if (zp_is_dir)
		FUNC13(FUNC10(dzp));
	links = FUNC10(dzp)->i_nlink;
	count = 0;
	FUNC1(bulk, count, FUNC7(zfsvfs), NULL,
	    &dzp->z_size, sizeof (dzp->z_size));
	FUNC1(bulk, count, FUNC4(zfsvfs), NULL,
	    &links, sizeof (links));
	FUNC1(bulk, count, FUNC5(zfsvfs), NULL,
	    mtime, sizeof (mtime));
	FUNC1(bulk, count, FUNC2(zfsvfs), NULL,
	    ctime, sizeof (ctime));
	FUNC1(bulk, count, FUNC3(zfsvfs), NULL,
	    &dzp->z_pflags, sizeof (dzp->z_pflags));
	FUNC19(dzp, CONTENT_MODIFIED, mtime, ctime);
	error = FUNC16(dzp->z_sa_hdl, bulk, count, tx);
	FUNC0(error == 0);
	FUNC15(&dzp->z_lock);

	return (0);
}