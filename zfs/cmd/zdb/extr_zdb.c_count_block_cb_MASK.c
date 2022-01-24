#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  zdb_cb_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  blkptr_t ;
typedef  int /*<<< orphan*/  blkbuf ;

/* Variables and functions */
 int BP_SPRINTF_LEN ; 
 int /*<<< orphan*/  ZDB_OT_DEFERRED ; 
 int* dump_opt ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(void *arg, const blkptr_t *bp, dmu_tx_t *tx)
{
	zdb_cb_t *zcb = arg;

	if (dump_opt['b'] >= 5) {
		char blkbuf[BP_SPRINTF_LEN];
		FUNC1(blkbuf, sizeof (blkbuf), bp);
		(void) FUNC0("[%s] %s\n",
		    "deferred free", blkbuf);
	}
	FUNC2(zcb, NULL, bp, ZDB_OT_DEFERRED);
	return (0);
}