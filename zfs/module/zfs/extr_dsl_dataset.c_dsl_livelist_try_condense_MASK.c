#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_7__* ds; TYPE_4__* spa; } ;
typedef  TYPE_3__ try_condense_arg_t ;
struct TYPE_14__ {void* cancelled; void* syncing; TYPE_6__* next; TYPE_6__* first; TYPE_7__* ds; } ;
struct TYPE_16__ {int /*<<< orphan*/ * spa_livelist_condense_zthr; TYPE_2__ spa_to_condense; } ;
typedef  TYPE_4__ spa_t ;
struct TYPE_17__ {int /*<<< orphan*/  dl_tree; } ;
typedef  TYPE_5__ dsl_deadlist_t ;
struct TYPE_18__ {int /*<<< orphan*/  dle_node; } ;
typedef  TYPE_6__ dsl_deadlist_entry_t ;
struct TYPE_19__ {int /*<<< orphan*/  ds_dbuf; TYPE_1__* ds_dir; } ;
typedef  TYPE_7__ dsl_dataset_t ;
struct TYPE_13__ {TYPE_5__ dd_livelist; } ;

/* Variables and functions */
 TYPE_6__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* B_FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(void *arg, dsl_deadlist_entry_t *first)
{
	try_condense_arg_t *tca = arg;
	spa_t *spa = tca->spa;
	dsl_dataset_t *ds = tca->ds;
	dsl_deadlist_t *ll = &ds->ds_dir->dd_livelist;
	dsl_deadlist_entry_t *next;

	/* The condense thread has not yet been created at import */
	if (spa->spa_livelist_condense_zthr == NULL)
		return (1);

	/* A condense is already in progress */
	if (spa->spa_to_condense.ds != NULL)
		return (1);

	next = FUNC0(&ll->dl_tree, &first->dle_node);
	/* The livelist has only one entry - don't condense it */
	if (next == NULL)
		return (1);

	/* Next is the newest entry - don't condense it */
	if (FUNC0(&ll->dl_tree, &next->dle_node) == NULL)
		return (1);

	/* This pair is not ready to condense but keep looking */
	if (!FUNC2(first, next))
		return (0);

	/*
	 * Add a ref to prevent the dataset from being evicted while
	 * the condense zthr or synctask are running. Ref will be
	 * released at the end of the condense synctask
	 */
	FUNC1(ds->ds_dbuf, spa);

	spa->spa_to_condense.ds = ds;
	spa->spa_to_condense.first = first;
	spa->spa_to_condense.next = next;
	spa->spa_to_condense.syncing = B_FALSE;
	spa->spa_to_condense.cancelled = B_FALSE;

	FUNC3(spa->spa_livelist_condense_zthr);
	return (1);
}