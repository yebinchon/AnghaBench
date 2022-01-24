#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  int /*<<< orphan*/  dva_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_14__ {scalar_t__ blk_birth; int /*<<< orphan*/ * blk_dva; } ;
typedef  TYPE_1__ blkptr_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__ const*) ; 
 scalar_t__ FUNC1 (TYPE_1__ const*) ; 
 scalar_t__ FUNC2 (TYPE_1__ const*) ; 
 scalar_t__ FUNC3 (TYPE_1__ const*) ; 
 scalar_t__ FUNC4 (TYPE_1__ const*) ; 
 int FUNC5 (TYPE_1__ const*) ; 
 scalar_t__ FUNC6 (TYPE_1__ const*) ; 
 scalar_t__ FUNC7 (TYPE_1__ const*) ; 
 scalar_t__ FUNC8 (TYPE_1__ const*) ; 
 scalar_t__ FUNC9 (TYPE_1__ const*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/  const*) ; 
 int* dump_opt ; 
 int /*<<< orphan*/  FUNC13 (char*,int,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*,size_t,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC16 (char*) ; 

__attribute__((used)) static void
FUNC17(char *blkbuf, size_t buflen, const blkptr_t *bp,
    boolean_t bp_freed)
{
	const dva_t *dva = bp->blk_dva;
	int ndvas = dump_opt['d'] > 5 ? FUNC5(bp) : 1;
	int i;

	if (dump_opt['b'] >= 6) {
		FUNC14(blkbuf, buflen, bp);
		if (bp_freed) {
			(void) FUNC13(blkbuf + FUNC16(blkbuf),
			    buflen - FUNC16(blkbuf), " %s", "FREE");
		}
		return;
	}

	if (FUNC7(bp)) {
		(void) FUNC15(blkbuf,
		    "EMBEDDED et=%u %llxL/%llxP B=%llu",
		    (int)FUNC0(bp),
		    (u_longlong_t)FUNC1(bp),
		    (u_longlong_t)FUNC2(bp),
		    (u_longlong_t)bp->blk_birth);
		return;
	}

	blkbuf[0] = '\0';

	for (i = 0; i < ndvas; i++)
		(void) FUNC13(blkbuf + FUNC16(blkbuf),
		    buflen - FUNC16(blkbuf), "%llu:%llx:%llx ",
		    (u_longlong_t)FUNC12(&dva[i]),
		    (u_longlong_t)FUNC11(&dva[i]),
		    (u_longlong_t)FUNC10(&dva[i]));

	if (FUNC8(bp)) {
		(void) FUNC13(blkbuf + FUNC16(blkbuf),
		    buflen - FUNC16(blkbuf),
		    "%llxL B=%llu",
		    (u_longlong_t)FUNC4(bp),
		    (u_longlong_t)bp->blk_birth);
	} else {
		(void) FUNC13(blkbuf + FUNC16(blkbuf),
		    buflen - FUNC16(blkbuf),
		    "%llxL/%llxP F=%llu B=%llu/%llu",
		    (u_longlong_t)FUNC4(bp),
		    (u_longlong_t)FUNC6(bp),
		    (u_longlong_t)FUNC3(bp),
		    (u_longlong_t)bp->blk_birth,
		    (u_longlong_t)FUNC9(bp));
		if (bp_freed)
			(void) FUNC13(blkbuf + FUNC16(blkbuf),
			    buflen - FUNC16(blkbuf), " %s", "FREE");
	}
}