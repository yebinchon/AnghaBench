#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ zv_open_count; scalar_t__ zv_volsize; TYPE_3__* zv_zso; int /*<<< orphan*/  zv_suspend_lock; int /*<<< orphan*/ * zv_zilog; int /*<<< orphan*/  zv_dn; TYPE_11__* zv_objset; } ;
typedef  TYPE_4__ zvol_state_t ;
struct TYPE_17__ {int /*<<< orphan*/  lr; TYPE_4__* zv; struct bio* bio; } ;
typedef  TYPE_5__ zv_request_t ;
struct TYPE_13__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_18__ {scalar_t__ uio_resid; scalar_t__ uio_loffset; int /*<<< orphan*/  member_1; TYPE_1__ member_0; } ;
typedef  TYPE_6__ uio_t ;
typedef  scalar_t__ uint64_t ;
struct bio {int dummy; } ;
typedef  scalar_t__ ssize_t ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int boolean_t ;
struct TYPE_15__ {TYPE_2__* zvo_disk; int /*<<< orphan*/  zvo_queue; int /*<<< orphan*/  zvo_kstat; } ;
struct TYPE_14__ {int /*<<< orphan*/  part0; } ;
struct TYPE_12__ {scalar_t__ os_sync; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int) ; 
 int DMU_MAX_ACCESS ; 
 scalar_t__ FUNC2 (scalar_t__,int) ; 
 int /*<<< orphan*/  TXG_WAIT ; 
 int /*<<< orphan*/  WRITE ; 
 scalar_t__ ZFS_SYNC_ALWAYS ; 
 int /*<<< orphan*/  ZVOL_OBJ ; 
 scalar_t__ FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC11 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int FUNC13 (int /*<<< orphan*/ ,TYPE_6__*,scalar_t__,int /*<<< orphan*/ *) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_6__*,struct bio*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_4__*,int /*<<< orphan*/ *,scalar_t__,scalar_t__,int) ; 

__attribute__((used)) static void
FUNC21(void *arg)
{
	int error = 0;

	zv_request_t *zvr = arg;
	struct bio *bio = zvr->bio;
	uio_t uio = { 0 , 0 };
	FUNC17(&uio, bio);

	zvol_state_t *zv = zvr->zv;
	FUNC0(zv && zv->zv_open_count > 0);
	FUNC0(zv->zv_zilog != NULL);

	ssize_t start_resid = uio.uio_resid;
	unsigned long start_jif = jiffies;
	FUNC6(zv->zv_zso->zvo_queue, WRITE,
	    FUNC4(bio), &zv->zv_zso->zvo_disk->part0);

	boolean_t sync =
	    FUNC3(bio) || zv->zv_objset->os_sync == ZFS_SYNC_ALWAYS;

	uint64_t volsize = zv->zv_volsize;
	while (uio.uio_resid > 0 && uio.uio_loffset < volsize) {
		uint64_t bytes = FUNC2(uio.uio_resid, DMU_MAX_ACCESS >> 1);
		uint64_t off = uio.uio_loffset;
		dmu_tx_t *tx = FUNC11(zv->zv_objset);

		if (bytes > volsize - off)	/* don't write past the end */
			bytes = volsize - off;

		FUNC12(tx, ZVOL_OBJ, off, bytes);

		/* This will only fail for ENOSPC */
		error = FUNC9(tx, TXG_WAIT);
		if (error) {
			FUNC8(tx);
			break;
		}
		error = FUNC13(zv->zv_dn, &uio, bytes, tx);
		if (error == 0) {
			FUNC20(zv, tx, off, bytes, sync);
		}
		FUNC10(tx);

		if (error)
			break;
	}
	FUNC18(zvr->lr);

	int64_t nwritten = start_resid - uio.uio_resid;
	FUNC7(&zv->zv_zso->zvo_kstat, nwritten);
	FUNC16(nwritten);

	if (sync)
		FUNC19(zv->zv_zilog, ZVOL_OBJ);

	FUNC15(&zv->zv_suspend_lock);
	FUNC5(zv->zv_zso->zvo_queue,
	    WRITE, &zv->zv_zso->zvo_disk->part0, start_jif);
	FUNC1(bio, -error);
	FUNC14(zvr, sizeof (zv_request_t));
}