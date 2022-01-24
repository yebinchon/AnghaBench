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
typedef  int /*<<< orphan*/  scan_io_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_6__ {int /*<<< orphan*/  scn_bytes_pending; } ;
typedef  TYPE_2__ dsl_scan_t ;
struct TYPE_7__ {int /*<<< orphan*/  q_exts_by_addr; int /*<<< orphan*/  q_sio_memused; int /*<<< orphan*/  q_sios_by_addr; TYPE_1__* q_vd; TYPE_2__* q_scn; } ;
typedef  TYPE_3__ dsl_scan_io_queue_t ;
typedef  int /*<<< orphan*/  avl_index_t ;
struct TYPE_5__ {int /*<<< orphan*/  vdev_scan_io_queue_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC10(dsl_scan_io_queue_t *queue, scan_io_t *sio)
{
	avl_index_t idx;
	int64_t asize = FUNC2(sio);
	dsl_scan_t *scn = queue->q_scn;

	FUNC0(FUNC1(&queue->q_vd->vdev_scan_io_queue_lock));

	if (FUNC6(&queue->q_sios_by_addr, sio, &idx) != NULL) {
		/* block is already scheduled for reading */
		FUNC5(&scn->scn_bytes_pending, -asize);
		FUNC9(sio);
		return;
	}
	FUNC7(&queue->q_sios_by_addr, sio, idx);
	queue->q_sio_memused += FUNC3(sio);
	FUNC8(queue->q_exts_by_addr, FUNC4(sio), asize);
}