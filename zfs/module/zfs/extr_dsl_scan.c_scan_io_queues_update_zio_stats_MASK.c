#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
struct TYPE_6__ {int /*<<< orphan*/  q_zios_this_txg; int /*<<< orphan*/  q_total_zio_size_this_txg; } ;
typedef  TYPE_1__ dsl_scan_io_queue_t ;
struct TYPE_7__ {int /*<<< orphan*/ * blk_dva; } ;
typedef  TYPE_2__ blkptr_t ;

/* Variables and functions */
 int FUNC0 (TYPE_2__ const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(dsl_scan_io_queue_t *q, const blkptr_t *bp)
{
	int i;
	uint64_t cur_size = 0;

	for (i = 0; i < FUNC0(bp); i++) {
		cur_size += FUNC1(&bp->blk_dva[i]);
	}

	q->q_total_zio_size_this_txg += cur_size;
	q->q_zios_this_txg++;
}