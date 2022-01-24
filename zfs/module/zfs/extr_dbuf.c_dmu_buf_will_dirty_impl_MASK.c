#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ tx_txg; } ;
typedef  TYPE_1__ dmu_tx_t ;
typedef  int /*<<< orphan*/  dmu_buf_t ;
struct TYPE_15__ {scalar_t__ db_state; int /*<<< orphan*/  db_mtx; TYPE_3__* db_last_dirty; int /*<<< orphan*/  db_holds; } ;
typedef  TYPE_2__ dmu_buf_impl_t ;
struct TYPE_16__ {scalar_t__ dr_txg; struct TYPE_16__* dr_next; } ;
typedef  TYPE_3__ dbuf_dirty_record_t ;
struct TYPE_13__ {int /*<<< orphan*/  dn_struct_rwlock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ DB_CACHED ; 
 TYPE_11__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int DB_RF_HAVESTRUCT ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC11(dmu_buf_t *db_fake, int flags, dmu_tx_t *tx)
{
	dmu_buf_impl_t *db = (dmu_buf_impl_t *)db_fake;

	FUNC0(tx->tx_txg != 0);
	FUNC0(!FUNC10(&db->db_holds));

	/*
	 * Quick check for dirtiness.  For already dirty blocks, this
	 * reduces runtime of this function by >90%, and overall performance
	 * by 50% for some workloads (e.g. file deletion with indirect blocks
	 * cached).
	 */
	FUNC8(&db->db_mtx);

	dbuf_dirty_record_t *dr;
	for (dr = db->db_last_dirty;
	    dr != NULL && dr->dr_txg >= tx->tx_txg; dr = dr->dr_next) {
		/*
		 * It's possible that it is already dirty but not cached,
		 * because there are some calls to dbuf_dirty() that don't
		 * go through dmu_buf_will_dirty().
		 */
		if (dr->dr_txg == tx->tx_txg && db->db_state == DB_CACHED) {
			/* This dbuf is already dirty and cached. */
			FUNC7(dr);
			FUNC9(&db->db_mtx);
			return;
		}
	}
	FUNC9(&db->db_mtx);

	FUNC2(db);
	if (FUNC4(&FUNC1(db)->dn_struct_rwlock))
		flags |= DB_RF_HAVESTRUCT;
	FUNC3(db);
	(void) FUNC6(db, NULL, flags);
	(void) FUNC5(db, tx);
}