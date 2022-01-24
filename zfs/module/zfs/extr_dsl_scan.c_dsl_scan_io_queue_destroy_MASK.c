#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  scan_io_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_8__ {int /*<<< orphan*/  scn_bytes_pending; } ;
typedef  TYPE_2__ dsl_scan_t ;
struct TYPE_9__ {int /*<<< orphan*/  q_zio_cv; int /*<<< orphan*/  q_sios_by_addr; int /*<<< orphan*/  q_exts_by_addr; int /*<<< orphan*/  q_sio_memused; TYPE_1__* q_vd; TYPE_2__* q_scn; } ;
typedef  TYPE_3__ dsl_scan_io_queue_t ;
struct TYPE_7__ {int /*<<< orphan*/  vdev_scan_io_queue_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

void
FUNC15(dsl_scan_io_queue_t *queue)
{
	dsl_scan_t *scn = queue->q_scn;
	scan_io_t *sio;
	void *cookie = NULL;
	int64_t bytes_dequeued = 0;

	FUNC0(FUNC2(&queue->q_vd->vdev_scan_io_queue_lock));

	while ((sio = FUNC8(&queue->q_sios_by_addr, &cookie)) !=
	    NULL) {
		FUNC0(FUNC11(queue->q_exts_by_addr,
		    FUNC5(sio), FUNC3(sio)));
		bytes_dequeued += FUNC3(sio);
		queue->q_sio_memused -= FUNC4(sio);
		FUNC14(sio);
	}

	FUNC1(queue->q_sio_memused);
	FUNC6(&scn->scn_bytes_pending, -bytes_dequeued);
	FUNC13(queue->q_exts_by_addr, NULL, queue);
	FUNC12(queue->q_exts_by_addr);
	FUNC7(&queue->q_sios_by_addr);
	FUNC9(&queue->q_zio_cv);

	FUNC10(queue, sizeof (*queue));
}