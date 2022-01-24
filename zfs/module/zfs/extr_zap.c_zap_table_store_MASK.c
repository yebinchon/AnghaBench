#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int zt_blk; int zt_nextblk; } ;
typedef  TYPE_1__ zap_table_phys_t ;
struct TYPE_11__ {int /*<<< orphan*/  zap_object; int /*<<< orphan*/  zap_objset; int /*<<< orphan*/  zap_rwlock; } ;
typedef  TYPE_2__ zap_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_12__ {scalar_t__ db_data; } ;
typedef  TYPE_3__ dmu_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMU_READ_NO_PREFETCH ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_3__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int) ; 

__attribute__((used)) static int
FUNC7(zap_t *zap, zap_table_phys_t *tbl, uint64_t idx, uint64_t val,
    dmu_tx_t *tx)
{
	int bs = FUNC1(zap);

	FUNC0(FUNC2(&zap->zap_rwlock));
	FUNC0(tbl->zt_blk != 0);

	FUNC6("storing %llx at index %llx\n", val, idx);

	uint64_t blk = idx >> (bs-3);
	uint64_t off = idx & ((1<<(bs-3))-1);

	dmu_buf_t *db;
	int err = FUNC3(zap->zap_objset, zap->zap_object,
	    (tbl->zt_blk + blk) << bs, FTAG, &db, DMU_READ_NO_PREFETCH);
	if (err != 0)
		return (err);
	FUNC5(db, tx);

	if (tbl->zt_nextblk != 0) {
		uint64_t idx2 = idx * 2;
		uint64_t blk2 = idx2 >> (bs-3);
		uint64_t off2 = idx2 & ((1<<(bs-3))-1);
		dmu_buf_t *db2;

		err = FUNC3(zap->zap_objset, zap->zap_object,
		    (tbl->zt_nextblk + blk2) << bs, FTAG, &db2,
		    DMU_READ_NO_PREFETCH);
		if (err != 0) {
			FUNC4(db, FTAG);
			return (err);
		}
		FUNC5(db2, tx);
		((uint64_t *)db2->db_data)[off2] = val;
		((uint64_t *)db2->db_data)[off2+1] = val;
		FUNC4(db2, FTAG);
	}

	((uint64_t *)db->db_data)[off] = val;
	FUNC4(db, FTAG);

	return (0);
}