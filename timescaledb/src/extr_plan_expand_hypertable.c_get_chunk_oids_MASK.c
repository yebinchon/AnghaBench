#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int appends_ordered; int order_attno; int /*<<< orphan*/ * nested_oids; } ;
typedef  TYPE_2__ TimescaleDBPrivate ;
struct TYPE_21__ {int /*<<< orphan*/  join_conditions; int /*<<< orphan*/  restrictions; int /*<<< orphan*/ * chunk_exclusion_func; } ;
struct TYPE_20__ {TYPE_1__* space; } ;
struct TYPE_19__ {int /*<<< orphan*/ * fdw_private; } ;
struct TYPE_17__ {int num_dimensions; } ;
typedef  TYPE_3__ RelOptInfo ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  HypertableRestrictInfo ;
typedef  TYPE_4__ Hypertable ;
typedef  TYPE_5__ CollectQualCtx ;

/* Variables and functions */
 int /*<<< orphan*/  AccessShareLock ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_5__*,TYPE_4__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_3__*,TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int) ; 

__attribute__((used)) static List *
FUNC6(CollectQualCtx *ctx, PlannerInfo *root, RelOptInfo *rel, Hypertable *ht)
{
	bool reverse;
	int order_attno;

	if (ctx->chunk_exclusion_func == NULL)
	{
		HypertableRestrictInfo *hri = FUNC4(rel, ht);

		/*
		 * This is where the magic happens: use our HypertableRestrictInfo
		 * infrastructure to deduce the appropriate chunks using our range
		 * exclusion
		 */
		FUNC3(hri, root, ctx->restrictions);

		/*
		 * If fdw_private has not been setup by caller there is no point checking
		 * for ordered append as we can't pass the required metadata in fdw_private
		 * to signal that this is safe to transform in ordered append plan in
		 * set_rel_pathlist.
		 */
		if (rel->fdw_private != NULL &&
			FUNC2(root, rel, ht, ctx->join_conditions, &order_attno, &reverse))
		{
			TimescaleDBPrivate *private = (TimescaleDBPrivate *) rel->fdw_private;
			List **nested_oids = NULL;

		  private
			->appends_ordered = true;
		  private
			->order_attno = order_attno;

			/*
			 * for space partitioning we need extra information about the
			 * time slices of the chunks
			 */
			if (ht->space->num_dimensions > 1)
				nested_oids = &private->nested_oids;

			return FUNC5(hri,
																	  ht,
																	  AccessShareLock,
																	  nested_oids,
																	  reverse);
		}
		return FUNC0(hri, ht, AccessShareLock);
	}
	else
		return FUNC1(ctx, ht);
}