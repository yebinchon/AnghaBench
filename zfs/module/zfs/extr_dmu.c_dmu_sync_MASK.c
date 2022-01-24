#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_9__ ;
typedef  struct TYPE_32__   TYPE_8__ ;
typedef  struct TYPE_31__   TYPE_7__ ;
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zio_t ;
struct TYPE_28__ {int /*<<< orphan*/  zp_nopwrite; } ;
typedef  TYPE_4__ zio_prop_t ;
struct TYPE_29__ {int /*<<< orphan*/ * zgd_bp; scalar_t__ zgd_db; } ;
typedef  TYPE_5__ zgd_t ;
typedef  int /*<<< orphan*/  zbookmark_phys_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_30__ {int /*<<< orphan*/  os_spa; TYPE_7__* os_dsl_dataset; } ;
typedef  TYPE_6__ objset_t ;
struct TYPE_31__ {int /*<<< orphan*/  ds_object; } ;
typedef  TYPE_7__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  dnode_t ;
typedef  int /*<<< orphan*/  dmu_sync_cb_t ;
struct TYPE_32__ {int /*<<< orphan*/ * dsa_tx; TYPE_5__* dsa_zgd; int /*<<< orphan*/ * dsa_done; TYPE_10__* dsa_dr; } ;
typedef  TYPE_8__ dmu_sync_arg_t ;
struct TYPE_25__ {int /*<<< orphan*/  db_object; } ;
struct TYPE_33__ {int /*<<< orphan*/  db_mtx; int /*<<< orphan*/  db_blkid; int /*<<< orphan*/ * db_blkptr; TYPE_10__* db_last_dirty; int /*<<< orphan*/  db_level; TYPE_1__ db; TYPE_6__* db_objset; } ;
typedef  TYPE_9__ dmu_buf_impl_t ;
struct TYPE_26__ {scalar_t__ dr_override_state; int /*<<< orphan*/  dr_data; } ;
struct TYPE_27__ {TYPE_2__ dl; } ;
struct TYPE_24__ {scalar_t__ dr_txg; TYPE_3__ dt; struct TYPE_24__* dr_next; } ;
typedef  TYPE_10__ dbuf_dirty_record_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_9__*) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__*) ; 
 scalar_t__ DR_IN_DMU_SYNC ; 
 scalar_t__ DR_NOT_OVERRIDDEN ; 
 scalar_t__ DR_OVERRIDDEN ; 
 int /*<<< orphan*/  EALREADY ; 
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WP_DMU_SYNC ; 
 int /*<<< orphan*/  ZIO_FLAG_CANFAIL ; 
 int /*<<< orphan*/  ZIO_PRIORITY_SYNC_WRITE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dmu_sync_done ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ *,TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dmu_sync_ready ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_8__* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

int
FUNC18(zio_t *pio, uint64_t txg, dmu_sync_cb_t *done, zgd_t *zgd)
{
	dmu_buf_impl_t *db = (dmu_buf_impl_t *)zgd->zgd_db;
	objset_t *os = db->db_objset;
	dsl_dataset_t *ds = os->os_dsl_dataset;
	dbuf_dirty_record_t *dr;
	dmu_sync_arg_t *dsa;
	zbookmark_phys_t zb;
	zio_prop_t zp;
	dnode_t *dn;

	FUNC0(pio != NULL);
	FUNC0(txg != 0);

	FUNC5(&zb, ds->ds_object,
	    db->db.db_object, db->db_level, db->db_blkid);

	FUNC3(db);
	dn = FUNC2(db);
	FUNC9(os, dn, db->db_level, WP_DMU_SYNC, &zp);
	FUNC4(db);

	/*
	 * If we're frozen (running ziltest), we always need to generate a bp.
	 */
	if (txg > FUNC14(os->os_spa))
		return (FUNC8(pio, os, done, zgd, &zp, &zb));

	/*
	 * Grabbing db_mtx now provides a barrier between dbuf_sync_leaf()
	 * and us.  If we determine that this txg is not yet syncing,
	 * but it begins to sync a moment later, that's OK because the
	 * sync thread will block in dbuf_sync_leaf() until we drop db_mtx.
	 */
	FUNC12(&db->db_mtx);

	if (txg <= FUNC15(os->os_spa)) {
		/*
		 * This txg has already synced.  There's nothing to do.
		 */
		FUNC13(&db->db_mtx);
		return (FUNC6(EEXIST));
	}

	if (txg <= FUNC16(os->os_spa)) {
		/*
		 * This txg is currently syncing, so we can't mess with
		 * the dirty record anymore; just write a new log block.
		 */
		FUNC13(&db->db_mtx);
		return (FUNC8(pio, os, done, zgd, &zp, &zb));
	}

	dr = db->db_last_dirty;
	while (dr && dr->dr_txg != txg)
		dr = dr->dr_next;

	if (dr == NULL) {
		/*
		 * There's no dr for this dbuf, so it must have been freed.
		 * There's no need to log writes to freed blocks, so we're done.
		 */
		FUNC13(&db->db_mtx);
		return (FUNC6(ENOENT));
	}

	FUNC0(dr->dr_next == NULL || dr->dr_next->dr_txg < txg);

	if (db->db_blkptr != NULL) {
		/*
		 * We need to fill in zgd_bp with the current blkptr so that
		 * the nopwrite code can check if we're writing the same
		 * data that's already on disk.  We can only nopwrite if we
		 * are sure that after making the copy, db_blkptr will not
		 * change until our i/o completes.  We ensure this by
		 * holding the db_mtx, and only allowing nopwrite if the
		 * block is not already dirty (see below).  This is verified
		 * by dmu_sync_done(), which VERIFYs that the db_blkptr has
		 * not changed.
		 */
		*zgd->zgd_bp = *db->db_blkptr;
	}

	/*
	 * Assume the on-disk data is X, the current syncing data (in
	 * txg - 1) is Y, and the current in-memory data is Z (currently
	 * in dmu_sync).
	 *
	 * We usually want to perform a nopwrite if X and Z are the
	 * same.  However, if Y is different (i.e. the BP is going to
	 * change before this write takes effect), then a nopwrite will
	 * be incorrect - we would override with X, which could have
	 * been freed when Y was written.
	 *
	 * (Note that this is not a concern when we are nop-writing from
	 * syncing context, because X and Y must be identical, because
	 * all previous txgs have been synced.)
	 *
	 * Therefore, we disable nopwrite if the current BP could change
	 * before this TXG.  There are two ways it could change: by
	 * being dirty (dr_next is non-NULL), or by being freed
	 * (dnode_block_freed()).  This behavior is verified by
	 * zio_done(), which VERIFYs that the override BP is identical
	 * to the on-disk BP.
	 */
	FUNC3(db);
	dn = FUNC2(db);
	if (dr->dr_next != NULL || FUNC10(dn, db->db_blkid))
		zp.zp_nopwrite = B_FALSE;
	FUNC4(db);

	FUNC0(dr->dr_txg == txg);
	if (dr->dt.dl.dr_override_state == DR_IN_DMU_SYNC ||
	    dr->dt.dl.dr_override_state == DR_OVERRIDDEN) {
		/*
		 * We have already issued a sync write for this buffer,
		 * or this buffer has already been synced.  It could not
		 * have been dirtied since, or we would have cleared the state.
		 */
		FUNC13(&db->db_mtx);
		return (FUNC6(EALREADY));
	}

	FUNC0(dr->dt.dl.dr_override_state == DR_NOT_OVERRIDDEN);
	dr->dt.dl.dr_override_state = DR_IN_DMU_SYNC;
	FUNC13(&db->db_mtx);

	dsa = FUNC11(sizeof (dmu_sync_arg_t), KM_SLEEP);
	dsa->dsa_dr = dr;
	dsa->dsa_done = done;
	dsa->dsa_zgd = zgd;
	dsa->dsa_tx = NULL;

	FUNC17(FUNC7(pio, os->os_spa, txg,
	    zgd->zgd_bp, dr->dt.dl.dr_data, FUNC1(db),
	    &zp, dmu_sync_ready, NULL, NULL, dmu_sync_done, dsa,
	    ZIO_PRIORITY_SYNC_WRITE, ZIO_FLAG_CANFAIL, &zb));

	return (0);
}