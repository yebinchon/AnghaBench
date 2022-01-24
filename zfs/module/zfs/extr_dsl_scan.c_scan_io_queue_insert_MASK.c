#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zbookmark_phys_t ;
struct TYPE_12__ {int sio_flags; int /*<<< orphan*/  sio_zb; } ;
typedef  TYPE_2__ scan_io_t ;
struct TYPE_13__ {int /*<<< orphan*/  scn_bytes_pending; } ;
typedef  TYPE_3__ dsl_scan_t ;
struct TYPE_14__ {TYPE_1__* q_vd; TYPE_3__* q_scn; } ;
typedef  TYPE_4__ dsl_scan_io_queue_t ;
typedef  int /*<<< orphan*/  blkptr_t ;
struct TYPE_11__ {int /*<<< orphan*/  vdev_scan_io_queue_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,TYPE_2__*) ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(dsl_scan_io_queue_t *queue, const blkptr_t *bp, int dva_i,
    int zio_flags, const zbookmark_phys_t *zb)
{
	dsl_scan_t *scn = queue->q_scn;
	scan_io_t *sio = FUNC9(FUNC2(bp));

	FUNC1(FUNC3(bp));
	FUNC0(FUNC4(&queue->q_vd->vdev_scan_io_queue_lock));

	FUNC7(bp, sio, dva_i);
	sio->sio_flags = zio_flags;
	sio->sio_zb = *zb;

	/*
	 * Increment the bytes pending counter now so that we can't
	 * get an integer underflow in case the worker processes the
	 * zio before we get to incrementing this counter.
	 */
	FUNC6(&scn->scn_bytes_pending, FUNC5(sio));

	FUNC8(queue, sio);
}