#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int zt_blk; int zt_numblks; scalar_t__ zt_nextblk; int zt_blks_copied; int zt_shift; } ;
typedef  TYPE_1__ zap_table_phys_t ;
struct TYPE_12__ {int /*<<< orphan*/  zap_object; int /*<<< orphan*/  zap_objset; int /*<<< orphan*/  zap_rwlock; } ;
typedef  TYPE_2__ zap_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_13__ {uint64_t const* db_data; } ;
typedef  TYPE_3__ dmu_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  DMU_READ_NO_PREFETCH ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  ZIO_PRIORITY_SYNC_READ ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,TYPE_3__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int) ; 
 int FUNC11 (TYPE_2__*,int) ; 

__attribute__((used)) static int
FUNC12(zap_t *zap, zap_table_phys_t *tbl,
    void (*transfer_func)(const uint64_t *src, uint64_t *dst, int n),
    dmu_tx_t *tx)
{
	uint64_t newblk;
	int bs = FUNC2(zap);
	int hepb = 1<<(bs-4);
	/* hepb = half the number of entries in a block */

	FUNC0(FUNC3(&zap->zap_rwlock));
	FUNC0(tbl->zt_blk != 0);
	FUNC0(tbl->zt_numblks > 0);

	if (tbl->zt_nextblk != 0) {
		newblk = tbl->zt_nextblk;
	} else {
		newblk = FUNC11(zap, tbl->zt_numblks * 2);
		tbl->zt_nextblk = newblk;
		FUNC1(tbl->zt_blks_copied);
		FUNC9(zap->zap_objset, zap->zap_object, 0,
		    tbl->zt_blk << bs, tbl->zt_numblks << bs,
		    ZIO_PRIORITY_SYNC_READ);
	}

	/*
	 * Copy the ptrtbl from the old to new location.
	 */

	uint64_t b = tbl->zt_blks_copied;
	dmu_buf_t *db_old;
	int err = FUNC5(zap->zap_objset, zap->zap_object,
	    (tbl->zt_blk + b) << bs, FTAG, &db_old, DMU_READ_NO_PREFETCH);
	if (err != 0)
		return (err);

	/* first half of entries in old[b] go to new[2*b+0] */
	dmu_buf_t *db_new;
	FUNC4(FUNC5(zap->zap_objset, zap->zap_object,
	    (newblk + 2*b+0) << bs, FTAG, &db_new, DMU_READ_NO_PREFETCH));
	FUNC7(db_new, tx);
	transfer_func(db_old->db_data, db_new->db_data, hepb);
	FUNC6(db_new, FTAG);

	/* second half of entries in old[b] go to new[2*b+1] */
	FUNC4(FUNC5(zap->zap_objset, zap->zap_object,
	    (newblk + 2*b+1) << bs, FTAG, &db_new, DMU_READ_NO_PREFETCH));
	FUNC7(db_new, tx);
	transfer_func((uint64_t *)db_old->db_data + hepb,
	    db_new->db_data, hepb);
	FUNC6(db_new, FTAG);

	FUNC6(db_old, FTAG);

	tbl->zt_blks_copied++;

	FUNC10("copied block %llu of %llu\n",
	    tbl->zt_blks_copied, tbl->zt_numblks);

	if (tbl->zt_blks_copied == tbl->zt_numblks) {
		(void) FUNC8(zap->zap_objset, zap->zap_object,
		    tbl->zt_blk << bs, tbl->zt_numblks << bs, tx);

		tbl->zt_blk = newblk;
		tbl->zt_numblks *= 2;
		tbl->zt_shift++;
		tbl->zt_nextblk = 0;
		tbl->zt_blks_copied = 0;

		FUNC10("finished; numblocks now %llu (%uk entries)\n",
		    tbl->zt_numblks, 1<<(tbl->zt_shift-10));
	}

	return (0);
}