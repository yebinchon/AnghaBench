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
struct TYPE_9__ {int /*<<< orphan*/  io_private; } ;
typedef  TYPE_1__ zio_t ;
typedef  int /*<<< orphan*/  zilog_t ;
struct TYPE_10__ {scalar_t__ zb_level; } ;
typedef  TYPE_2__ zbookmark_phys_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_11__ {scalar_t__ spa_load_verify_bytes; int /*<<< orphan*/  spa_scrub_lock; int /*<<< orphan*/  spa_scrub_io_cv; } ;
typedef  TYPE_3__ spa_t ;
typedef  int /*<<< orphan*/  dnode_phys_t ;
typedef  int /*<<< orphan*/  blkptr_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  B_FALSE ; 
 scalar_t__ ZB_DNODE_LEVEL ; 
 int ZIO_FLAG_CANFAIL ; 
 int ZIO_FLAG_RAW ; 
 int ZIO_FLAG_SCRUB ; 
 int ZIO_FLAG_SPECULATIVE ; 
 int /*<<< orphan*/  ZIO_PRIORITY_SCRUB ; 
 int /*<<< orphan*/  FUNC5 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  spa_load_verify_data ; 
 int /*<<< orphan*/  spa_load_verify_done ; 
 int /*<<< orphan*/  spa_load_verify_metadata ; 
 scalar_t__ spa_load_verify_shift ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,TYPE_3__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,TYPE_2__ const*) ; 

__attribute__((used)) static int
FUNC12(spa_t *spa, zilog_t *zilog, const blkptr_t *bp,
    const zbookmark_phys_t *zb, const dnode_phys_t *dnp, void *arg)
{
	if (zb->zb_level == ZB_DNODE_LEVEL || FUNC2(bp) ||
	    FUNC1(bp) || FUNC4(bp))
		return (0);
	/*
	 * Note: normally this routine will not be called if
	 * spa_load_verify_metadata is not set.  However, it may be useful
	 * to manually set the flag after the traversal has begun.
	 */
	if (!spa_load_verify_metadata)
		return (0);
	if (!FUNC3(bp) && !spa_load_verify_data)
		return (0);

	uint64_t maxinflight_bytes =
	    FUNC6() >> spa_load_verify_shift;
	zio_t *rio = arg;
	size_t size = FUNC0(bp);

	FUNC8(&spa->spa_scrub_lock);
	while (spa->spa_load_verify_bytes >= maxinflight_bytes)
		FUNC7(&spa->spa_scrub_io_cv, &spa->spa_scrub_lock);
	spa->spa_load_verify_bytes += size;
	FUNC9(&spa->spa_scrub_lock);

	FUNC10(FUNC11(rio, spa, bp, FUNC5(size, B_FALSE), size,
	    spa_load_verify_done, rio->io_private, ZIO_PRIORITY_SCRUB,
	    ZIO_FLAG_SPECULATIVE | ZIO_FLAG_CANFAIL |
	    ZIO_FLAG_SCRUB | ZIO_FLAG_RAW, zb));
	return (0);
}