#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ tx_txg; } ;
typedef  TYPE_1__ dmu_tx_t ;
typedef  int /*<<< orphan*/  dmu_buf_t ;
struct TYPE_6__ {int /*<<< orphan*/  db_mtx; TYPE_3__* db_last_dirty; } ;
typedef  TYPE_2__ dmu_buf_impl_t ;
struct TYPE_7__ {scalar_t__ dr_txg; struct TYPE_7__* dr_next; } ;
typedef  TYPE_3__ dbuf_dirty_record_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

boolean_t
FUNC2(dmu_buf_t *db_fake, dmu_tx_t *tx)
{
	dmu_buf_impl_t *db = (dmu_buf_impl_t *)db_fake;

	FUNC0(&db->db_mtx);
	for (dbuf_dirty_record_t *dr = db->db_last_dirty;
	    dr != NULL && dr->dr_txg >= tx->tx_txg; dr = dr->dr_next) {
		if (dr->dr_txg == tx->tx_txg) {
			FUNC1(&db->db_mtx);
			return (B_TRUE);
		}
	}
	FUNC1(&db->db_mtx);
	return (B_FALSE);
}