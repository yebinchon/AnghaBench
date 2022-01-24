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
typedef  int /*<<< orphan*/  zilog_t ;
struct TYPE_6__ {scalar_t__ zb_level; } ;
typedef  TYPE_1__ zbookmark_phys_t ;
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_7__ {scalar_t__ pd_bytes_fetched; int pd_flags; int /*<<< orphan*/  pd_mtx; int /*<<< orphan*/  pd_cv; scalar_t__ pd_cancel; } ;
typedef  TYPE_2__ prefetch_data_t ;
typedef  int /*<<< orphan*/  dnode_phys_t ;
typedef  int /*<<< orphan*/  blkptr_t ;
typedef  int arc_flags_t ;

/* Variables and functions */
 int ARC_FLAG_NOWAIT ; 
 int ARC_FLAG_PREFETCH ; 
 int ARC_FLAG_PRESCIENT_PREFETCH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  EINTR ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int TRAVERSE_NO_DECRYPT ; 
 scalar_t__ ZB_DNODE_LEVEL ; 
 int ZIO_FLAG_CANFAIL ; 
 int ZIO_FLAG_RAW ; 
 int ZIO_FLAG_SPECULATIVE ; 
 int /*<<< orphan*/  ZIO_PRIORITY_ASYNC_READ ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/  const*) ; 
 scalar_t__ zfs_pd_bytes_max ; 

__attribute__((used)) static int
FUNC10(spa_t *spa, zilog_t *zilog, const blkptr_t *bp,
    const zbookmark_phys_t *zb, const dnode_phys_t *dnp, void *arg)
{
	prefetch_data_t *pfd = arg;
	int zio_flags = ZIO_FLAG_CANFAIL | ZIO_FLAG_SPECULATIVE;
	arc_flags_t aflags = ARC_FLAG_NOWAIT | ARC_FLAG_PREFETCH |
	    ARC_FLAG_PRESCIENT_PREFETCH;

	FUNC0(pfd->pd_bytes_fetched >= 0);
	if (zb->zb_level == ZB_DNODE_LEVEL)
		return (0);
	if (pfd->pd_cancel)
		return (FUNC3(EINTR));

	if (!FUNC9(pfd, bp))
		return (0);

	FUNC7(&pfd->pd_mtx);
	while (!pfd->pd_cancel && pfd->pd_bytes_fetched >= zfs_pd_bytes_max)
		FUNC6(&pfd->pd_cv, &pfd->pd_mtx);
	pfd->pd_bytes_fetched += FUNC1(bp);
	FUNC5(&pfd->pd_cv);
	FUNC8(&pfd->pd_mtx);

	if ((pfd->pd_flags & TRAVERSE_NO_DECRYPT) && FUNC2(bp))
		zio_flags |= ZIO_FLAG_RAW;

	(void) FUNC4(NULL, spa, bp, NULL, NULL, ZIO_PRIORITY_ASYNC_READ,
	    zio_flags, &aflags, zb);

	return (0);
}