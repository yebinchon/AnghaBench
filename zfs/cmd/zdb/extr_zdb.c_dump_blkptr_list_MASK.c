#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uncomp ;
typedef  scalar_t__ uint64_t ;
struct TYPE_13__ {TYPE_1__* spa_dsl_pool; } ;
typedef  TYPE_3__ spa_t ;
typedef  int /*<<< orphan*/  entries ;
struct TYPE_15__ {scalar_t__ bpo_object; } ;
struct TYPE_14__ {int /*<<< orphan*/  dl_tree; TYPE_2__* dl_phys; TYPE_5__ dl_bpobj; scalar_t__ dl_oldfmt; int /*<<< orphan*/  dl_object; int /*<<< orphan*/  dl_os; } ;
typedef  TYPE_4__ dsl_deadlist_t ;
typedef  int /*<<< orphan*/  comp ;
typedef  int /*<<< orphan*/  bytes ;
struct TYPE_12__ {int /*<<< orphan*/  dl_uncomp; int /*<<< orphan*/  dl_comp; int /*<<< orphan*/  dl_used; } ;
struct TYPE_11__ {scalar_t__ dp_empty_bpobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int NN_NUMBUF_SZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dsl_deadlist_entry_count_refd ; 
 int /*<<< orphan*/  dsl_deadlist_entry_dump ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,char*,int /*<<< orphan*/ ) ; 
 int* dump_opt ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void
FUNC9(dsl_deadlist_t *dl, char *name)
{
	char bytes[32];
	char comp[32];
	char uncomp[32];
	char entries[32];
	spa_t *spa = FUNC3(dl->dl_os);
	uint64_t empty_bpobj = spa->spa_dsl_pool->dp_empty_bpobj;

	if (dl->dl_oldfmt) {
		if (dl->dl_bpobj.bpo_object != empty_bpobj)
			FUNC2(&dl->dl_bpobj);
	} else {
		FUNC6(dl->dl_object);
		FUNC4(dl, dsl_deadlist_entry_count_refd, spa);
	}

	/* make sure nicenum has enough space */
	FUNC0(sizeof (bytes) >= NN_NUMBUF_SZ);
	FUNC0(sizeof (comp) >= NN_NUMBUF_SZ);
	FUNC0(sizeof (uncomp) >= NN_NUMBUF_SZ);
	FUNC0(sizeof (entries) >= NN_NUMBUF_SZ);

	if (dump_opt['d'] < 3)
		return;

	if (dl->dl_oldfmt) {
		FUNC5(&dl->dl_bpobj, "old-format deadlist", 0);
		return;
	}

	FUNC8(dl->dl_phys->dl_used, bytes, sizeof (bytes));
	FUNC8(dl->dl_phys->dl_comp, comp, sizeof (comp));
	FUNC8(dl->dl_phys->dl_uncomp, uncomp, sizeof (uncomp));
	FUNC8(FUNC1(&dl->dl_tree), entries, sizeof (entries));
	(void) FUNC7("\n    %s: %s (%s/%s comp), %s entries\n",
	    name, bytes, comp, uncomp, entries);

	if (dump_opt['d'] < 4)
		return;

	(void) FUNC7("\n");

	FUNC4(dl, dsl_deadlist_entry_dump, NULL);
}