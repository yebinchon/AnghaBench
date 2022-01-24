#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ zv_open_count; scalar_t__ zv_volsize; TYPE_2__* zv_zso; int /*<<< orphan*/  zv_suspend_lock; int /*<<< orphan*/ * zv_zilog; TYPE_7__* zv_objset; int /*<<< orphan*/  zv_volblocksize; } ;
typedef  TYPE_3__ zvol_state_t ;
struct TYPE_12__ {int /*<<< orphan*/  lr; TYPE_3__* zv; struct bio* bio; } ;
typedef  TYPE_4__ zv_request_t ;
typedef  scalar_t__ uint64_t ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int boolean_t ;
struct TYPE_13__ {scalar_t__ os_sync; } ;
struct TYPE_10__ {TYPE_1__* zvo_disk; int /*<<< orphan*/  zvo_queue; } ;
struct TYPE_9__ {int /*<<< orphan*/  part0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct bio*) ; 
 scalar_t__ FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,int) ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  EIO ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TXG_WAIT ; 
 int /*<<< orphan*/  WRITE ; 
 scalar_t__ ZFS_SYNC_ALWAYS ; 
 int /*<<< orphan*/  ZVOL_OBJ ; 
 scalar_t__ FUNC7 (struct bio*) ; 
 int /*<<< orphan*/  FUNC8 (struct bio*) ; 
 int /*<<< orphan*/  FUNC9 (struct bio*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC12 (TYPE_7__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC18 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC23(void *arg)
{
	zv_request_t *zvr = arg;
	struct bio *bio = zvr->bio;
	zvol_state_t *zv = zvr->zv;
	uint64_t start = FUNC1(bio) << 9;
	uint64_t size = FUNC2(bio);
	uint64_t end = start + size;
	boolean_t sync;
	int error = 0;
	dmu_tx_t *tx;
	unsigned long start_jif;

	FUNC0(zv && zv->zv_open_count > 0);
	FUNC0(zv->zv_zilog != NULL);

	start_jif = jiffies;
	FUNC11(zv->zv_zso->zvo_queue, WRITE,
	    FUNC9(bio), &zv->zv_zso->zvo_disk->part0);

	sync = FUNC7(bio) || zv->zv_objset->os_sync == ZFS_SYNC_ALWAYS;

	if (end > zv->zv_volsize) {
		error = FUNC6(EIO);
		goto unlock;
	}

	/*
	 * Align the request to volume block boundaries when a secure erase is
	 * not required.  This will prevent dnode_free_range() from zeroing out
	 * the unaligned parts which is slow (read-modify-write) and useless
	 * since we are not freeing any space by doing so.
	 */
	if (!FUNC8(bio)) {
		start = FUNC5(start, zv->zv_volblocksize);
		end = FUNC4(end, zv->zv_volblocksize);
		size = end - start;
	}

	if (start >= end)
		goto unlock;

	tx = FUNC16(zv->zv_objset);
	FUNC17(tx);
	error = FUNC14(tx, TXG_WAIT);
	if (error != 0) {
		FUNC13(tx);
	} else {
		FUNC22(zv, tx, start, size, B_TRUE);
		FUNC15(tx);
		error = FUNC12(zv->zv_objset,
		    ZVOL_OBJ, start, size);
	}
unlock:
	FUNC20(zvr->lr);

	if (error == 0 && sync)
		FUNC21(zv->zv_zilog, ZVOL_OBJ);

	FUNC19(&zv->zv_suspend_lock);
	FUNC10(zv->zv_zso->zvo_queue, WRITE,
	    &zv->zv_zso->zvo_disk->part0, start_jif);
	FUNC3(bio, -error);
	FUNC18(zvr, sizeof (zv_request_t));
}