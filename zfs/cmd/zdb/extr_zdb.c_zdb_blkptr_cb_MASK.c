#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zilog_t ;
struct TYPE_25__ {scalar_t__ zcb_lastprint; int zcb_start; int zcb_totalasize; TYPE_1__** zcb_type; scalar_t__ zcb_readfails; } ;
typedef  TYPE_2__ zdb_cb_t ;
struct TYPE_26__ {scalar_t__ zb_level; scalar_t__ zb_object; scalar_t__ zb_objset; } ;
typedef  TYPE_3__ zbookmark_phys_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
struct TYPE_27__ {scalar_t__ spa_load_verify_bytes; int /*<<< orphan*/  spa_scrub_lock; int /*<<< orphan*/  spa_scrub_io_cv; } ;
typedef  TYPE_4__ spa_t ;
typedef  int /*<<< orphan*/  longlong_t ;
typedef  int /*<<< orphan*/  dnode_phys_t ;
typedef  int dmu_object_type_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int boolean_t ;
struct TYPE_28__ {scalar_t__ blk_birth; } ;
typedef  TYPE_5__ blkptr_t ;
typedef  int /*<<< orphan*/  blkbuf ;
typedef  int /*<<< orphan*/  abd_t ;
struct TYPE_24__ {int zb_asize; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_5__ const*) ; 
 size_t FUNC1 (TYPE_5__ const*) ; 
 int FUNC2 (TYPE_5__ const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__ const*) ; 
 scalar_t__ FUNC4 (TYPE_5__ const*) ; 
 scalar_t__ FUNC5 (TYPE_5__ const*) ; 
 int BP_SPRINTF_LEN ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int) ; 
 int DMU_OT_NEWTYPE ; 
 scalar_t__ NANOSEC ; 
 int NN_NUMBUF_SZ ; 
 scalar_t__ ZB_DNODE_LEVEL ; 
 size_t ZB_TOTAL ; 
 scalar_t__ ZB_ZIL_LEVEL ; 
 int ZDB_OT_OTHER ; 
 size_t ZDB_OT_TOTAL ; 
 int ZIO_FLAG_CANFAIL ; 
 int ZIO_FLAG_RAW ; 
 int ZIO_FLAG_SCRUB ; 
 int ZIO_FLAG_SPECULATIVE ; 
 int /*<<< orphan*/  ZIO_PRIORITY_ASYNC_READ ; 
 int /*<<< orphan*/ * FUNC8 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/  const*,TYPE_5__ const*,TYPE_3__ const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int* dump_opt ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*,char*,int,int,int,int) ; 
 scalar_t__ FUNC12 () ; 
 scalar_t__ max_inflight_bytes ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,TYPE_5__ const*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  zdb_blkptr_done ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_5__ const*,int) ; 
 int /*<<< orphan*/  FUNC18 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_5__ const*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int,TYPE_3__ const*) ; 

__attribute__((used)) static int
FUNC21(spa_t *spa, zilog_t *zilog, const blkptr_t *bp,
    const zbookmark_phys_t *zb, const dnode_phys_t *dnp, void *arg)
{
	zdb_cb_t *zcb = arg;
	dmu_object_type_t type;
	boolean_t is_metadata;

	if (zb->zb_level == ZB_DNODE_LEVEL)
		return (0);

	if (dump_opt['b'] >= 5 && bp->blk_birth > 0) {
		char blkbuf[BP_SPRINTF_LEN];
		FUNC16(blkbuf, sizeof (blkbuf), bp);
		(void) FUNC15("objset %llu object %llu "
		    "level %lld offset 0x%llx %s\n",
		    (u_longlong_t)zb->zb_objset,
		    (u_longlong_t)zb->zb_object,
		    (longlong_t)zb->zb_level,
		    (u_longlong_t)FUNC9(dnp, bp, zb),
		    blkbuf);
	}

	if (FUNC4(bp) || FUNC5(bp))
		return (0);

	type = FUNC2(bp);

	FUNC17(zcb, zilog, bp,
	    (type & DMU_OT_NEWTYPE) ? ZDB_OT_OTHER : type);

	is_metadata = (FUNC0(bp) != 0 || FUNC7(type));

	if (!FUNC3(bp) &&
	    (dump_opt['c'] > 1 || (dump_opt['c'] && is_metadata))) {
		size_t size = FUNC1(bp);
		abd_t *abd = FUNC8(size, B_FALSE);
		int flags = ZIO_FLAG_CANFAIL | ZIO_FLAG_SCRUB | ZIO_FLAG_RAW;

		/* If it's an intent log block, failure is expected. */
		if (zb->zb_level == ZB_ZIL_LEVEL)
			flags |= ZIO_FLAG_SPECULATIVE;

		FUNC13(&spa->spa_scrub_lock);
		while (spa->spa_load_verify_bytes > max_inflight_bytes)
			FUNC10(&spa->spa_scrub_io_cv, &spa->spa_scrub_lock);
		spa->spa_load_verify_bytes += size;
		FUNC14(&spa->spa_scrub_lock);

		FUNC19(FUNC20(NULL, spa, bp, abd, size,
		    zdb_blkptr_done, zcb, ZIO_PRIORITY_ASYNC_READ, flags, zb));
	}

	zcb->zcb_readfails = 0;

	/* only call gethrtime() every 100 blocks */
	static int iters;
	if (++iters > 100)
		iters = 0;
	else
		return (0);

	if (dump_opt['b'] < 5 && FUNC12() > zcb->zcb_lastprint + NANOSEC) {
		uint64_t now = FUNC12();
		char buf[10];
		uint64_t bytes = zcb->zcb_type[ZB_TOTAL][ZDB_OT_TOTAL].zb_asize;
		int kb_per_sec =
		    1 + bytes / (1 + ((now - zcb->zcb_start) / 1000 / 1000));
		int sec_remaining =
		    (zcb->zcb_totalasize - bytes) / 1024 / kb_per_sec;

		/* make sure nicenum has enough space */
		FUNC6(sizeof (buf) >= NN_NUMBUF_SZ);

		FUNC18(bytes, buf, sizeof (buf));
		(void) FUNC11(stderr,
		    "\r%5s completed (%4dMB/s) "
		    "estimated time remaining: %uhr %02umin %02usec        ",
		    buf, kb_per_sec / 1024,
		    sec_remaining / 60 / 60,
		    sec_remaining / 60 % 60,
		    sec_remaining % 60);

		zcb->zcb_lastprint = now;
	}

	return (0);
}