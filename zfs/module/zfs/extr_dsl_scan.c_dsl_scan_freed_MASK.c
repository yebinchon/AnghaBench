#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* spa_dsl_pool; } ;
typedef  TYPE_1__ spa_t ;
typedef  int /*<<< orphan*/  dsl_scan_t ;
struct TYPE_6__ {int /*<<< orphan*/ * dp_scan; } ;
typedef  TYPE_2__ dsl_pool_t ;
typedef  int /*<<< orphan*/  blkptr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(spa_t *spa, const blkptr_t *bp)
{
	dsl_pool_t *dp = spa->spa_dsl_pool;
	dsl_scan_t *scn = dp->dp_scan;

	FUNC0(!FUNC2(bp));
	FUNC0(scn != NULL);
	if (!FUNC4(scn))
		return;

	for (int i = 0; i < FUNC1(bp); i++)
		FUNC3(spa, bp, i);
}