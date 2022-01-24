#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zbookmark_phys_t ;
struct TYPE_11__ {int td_flags; scalar_t__ td_min_txg; int /*<<< orphan*/  td_spa; int /*<<< orphan*/ * td_resume; } ;
typedef  TYPE_1__ traverse_data_t ;
struct TYPE_12__ {scalar_t__ blk_birth; } ;
typedef  TYPE_2__ blkptr_t ;
typedef  int arc_flags_t ;

/* Variables and functions */
 int ARC_FLAG_NOWAIT ; 
 int ARC_FLAG_PREFETCH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_2__ const*) ; 
 scalar_t__ FUNC2 (TYPE_2__ const*) ; 
 scalar_t__ FUNC3 (TYPE_2__ const*) ; 
 scalar_t__ FUNC4 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__ const*) ; 
 scalar_t__ DMU_OT_DNODE ; 
 int TRAVERSE_NO_DECRYPT ; 
 int TRAVERSE_PREFETCH_METADATA ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int ZIO_FLAG_CANFAIL ; 
 int ZIO_FLAG_RAW ; 
 int ZIO_FLAG_SPECULATIVE ; 
 int /*<<< orphan*/  ZIO_PRIORITY_ASYNC_READ ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void
FUNC8(traverse_data_t *td,
    const blkptr_t *bp, const zbookmark_phys_t *zb)
{
	arc_flags_t flags = ARC_FLAG_NOWAIT | ARC_FLAG_PREFETCH;
	int zio_flags = ZIO_FLAG_CANFAIL | ZIO_FLAG_SPECULATIVE;

	if (!(td->td_flags & TRAVERSE_PREFETCH_METADATA))
		return;
	/*
	 * If we are in the process of resuming, don't prefetch, because
	 * some children will not be needed (and in fact may have already
	 * been freed).
	 */
	if (td->td_resume != NULL && !FUNC6(td->td_resume))
		return;
	if (FUNC3(bp) || bp->blk_birth <= td->td_min_txg)
		return;
	if (FUNC1(bp) == 0 && FUNC2(bp) != DMU_OT_DNODE)
		return;
	FUNC0(!FUNC5(bp));

	if ((td->td_flags & TRAVERSE_NO_DECRYPT) && FUNC4(bp))
		zio_flags |= ZIO_FLAG_RAW;

	(void) FUNC7(NULL, td->td_spa, bp, NULL, NULL,
	    ZIO_PRIORITY_ASYNC_READ, zio_flags, &flags, zb);
}