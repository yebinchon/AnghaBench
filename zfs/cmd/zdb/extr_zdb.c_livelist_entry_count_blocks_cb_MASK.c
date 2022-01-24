#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdb_cb_t ;
struct TYPE_3__ {int /*<<< orphan*/  dle_bpobj; } ;
typedef  TYPE_1__ dsl_deadlist_entry_t ;
typedef  int /*<<< orphan*/  bplist_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  count_block_cb ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(void *args, dsl_deadlist_entry_t *dle)
{
	zdb_cb_t *zbc = args;
	bplist_t blks;
	FUNC1(&blks);
	/* determine which blocks have been alloc'd but not freed */
	FUNC0(FUNC4(&dle->dle_bpobj, &blks, NULL, NULL));
	/* count those blocks */
	(void) FUNC3(&blks, count_block_cb, zbc, NULL);
	FUNC2(&blks);
	return (0);
}