#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  spa_scrub_lock; } ;
typedef  TYPE_2__ spa_t ;
struct TYPE_11__ {int /*<<< orphan*/  spic_spc; } ;
typedef  TYPE_3__ scan_prefetch_issue_ctx_t ;
struct TYPE_12__ {int /*<<< orphan*/  scn_prefetch_queue; TYPE_1__* scn_dp; } ;
typedef  TYPE_4__ dsl_scan_t ;
struct TYPE_9__ {TYPE_2__* dp_spa; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_4__*) ; 

__attribute__((used)) static void
FUNC5(dsl_scan_t *scn)
{
	spa_t *spa = scn->scn_dp->dp_spa;
	void *cookie = NULL;
	scan_prefetch_issue_ctx_t *spic = NULL;

	FUNC2(&spa->spa_scrub_lock);
	while ((spic = FUNC0(&scn->scn_prefetch_queue,
	    &cookie)) != NULL) {
		FUNC4(spic->spic_spc, scn);
		FUNC1(spic, sizeof (scan_prefetch_issue_ctx_t));
	}
	FUNC3(&spa->spa_scrub_lock);
}