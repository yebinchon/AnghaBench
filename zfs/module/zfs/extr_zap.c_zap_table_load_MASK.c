#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int zt_blk; int zt_nextblk; } ;
typedef  TYPE_1__ zap_table_phys_t ;
struct TYPE_10__ {int /*<<< orphan*/  zap_dbuf; int /*<<< orphan*/  zap_rwlock; } ;
typedef  TYPE_2__ zap_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  dnode_t ;
struct TYPE_11__ {scalar_t__ db_data; } ;
typedef  TYPE_3__ dmu_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DMU_READ_NO_PREFETCH ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_3__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(zap_t *zap, zap_table_phys_t *tbl, uint64_t idx, uint64_t *valp)
{
	int bs = FUNC1(zap);

	FUNC0(FUNC2(&zap->zap_rwlock));

	uint64_t blk = idx >> (bs-3);
	uint64_t off = idx & ((1<<(bs-3))-1);

	/*
	 * Note: this is equivalent to dmu_buf_hold(), but we use
	 * _dnode_enter / _by_dnode because it's faster because we don't
	 * have to hold the dnode.
	 */
	dnode_t *dn = FUNC3(zap->zap_dbuf);
	dmu_buf_t *db;
	int err = FUNC5(dn,
	    (tbl->zt_blk + blk) << bs, FTAG, &db, DMU_READ_NO_PREFETCH);
	FUNC4(zap->zap_dbuf);
	if (err != 0)
		return (err);
	*valp = ((uint64_t *)db->db_data)[off];
	FUNC6(db, FTAG);

	if (tbl->zt_nextblk != 0) {
		/*
		 * read the nextblk for the sake of i/o error checking,
		 * so that zap_table_load() will catch errors for
		 * zap_table_store.
		 */
		blk = (idx*2) >> (bs-3);

		dn = FUNC3(zap->zap_dbuf);
		err = FUNC5(dn,
		    (tbl->zt_nextblk + blk) << bs, FTAG, &db,
		    DMU_READ_NO_PREFETCH);
		FUNC4(zap->zap_dbuf);
		if (err == 0)
			FUNC6(db, FTAG);
	}
	return (err);
}