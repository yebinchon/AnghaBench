#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;

/* Type definitions */
struct TYPE_32__ {double rows; double parallel_workers; } ;
struct TYPE_31__ {scalar_t__ exprs; } ;
struct TYPE_30__ {TYPE_4__** upper_targets; TYPE_2__* parse; } ;
struct TYPE_29__ {int /*<<< orphan*/ * havingQual; int /*<<< orphan*/  groupClause; scalar_t__ hasAggs; } ;
struct TYPE_28__ {int /*<<< orphan*/  partial_pathlist; } ;
typedef  int Size ;
typedef  TYPE_1__ RelOptInfo ;
typedef  TYPE_2__ Query ;
typedef  TYPE_3__ PlannerInfo ;
typedef  TYPE_4__ PathTarget ;
typedef  TYPE_5__ Path ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  AggClauseCosts ;

/* Variables and functions */
 int /*<<< orphan*/  AGGSPLIT_FINAL_DESERIAL ; 
 int /*<<< orphan*/  AGGSPLIT_INITIAL_SERIAL ; 
 int /*<<< orphan*/  AGG_HASHED ; 
 int /*<<< orphan*/  FUNC0 (double) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * NIL ; 
 int FUNC2 (int) ; 
 size_t UPPERREL_GROUP_AGG ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_5__*) ; 
 scalar_t__ FUNC5 (TYPE_3__*,TYPE_1__*,TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,double) ; 
 scalar_t__ FUNC6 (TYPE_3__*,TYPE_1__*,TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ *,double*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC8 (int /*<<< orphan*/ ) ; 
 double FUNC9 (TYPE_3__*,double) ; 
 int FUNC10 (TYPE_5__*,int /*<<< orphan*/ *,double) ; 
 TYPE_4__* FUNC11 (TYPE_3__*,TYPE_4__*) ; 
 int work_mem ; 

__attribute__((used)) static void
FUNC12(PlannerInfo *root, RelOptInfo *input_rel, RelOptInfo *output_rel,
						  double d_num_groups)
{
	Query *parse = root->parse;
	Path *cheapest_partial_path = FUNC8(input_rel->partial_pathlist);
	PathTarget *target = root->upper_targets[UPPERREL_GROUP_AGG];
	PathTarget *partial_grouping_target = FUNC11(root, target);
	AggClauseCosts agg_partial_costs;
	AggClauseCosts agg_final_costs;
	Size hashagg_table_size;
	double total_groups;
	Path *partial_path;
	double d_num_partial_groups = FUNC9(root, cheapest_partial_path->rows);

	/* don't have any special estimate */
	if (!FUNC0(d_num_partial_groups))
		return;

	FUNC1(&agg_partial_costs, 0, sizeof(AggClauseCosts));
	FUNC1(&agg_final_costs, 0, sizeof(AggClauseCosts));

	if (parse->hasAggs)
	{
		/* partial phase */
		FUNC7(root,
							 (Node *) partial_grouping_target->exprs,
							 AGGSPLIT_INITIAL_SERIAL,
							 &agg_partial_costs);

		/* final phase */
		FUNC7(root,
							 (Node *) target->exprs,
							 AGGSPLIT_FINAL_DESERIAL,
							 &agg_final_costs);
		FUNC7(root, parse->havingQual, AGGSPLIT_FINAL_DESERIAL, &agg_final_costs);
	}

	hashagg_table_size = FUNC10(cheapest_partial_path,
													   &agg_partial_costs,
													   d_num_partial_groups);

	/*
	 * Tentatively produce a partial HashAgg Path, depending on if it looks as
	 * if the hash table will fit in work_mem.
	 */
	if (hashagg_table_size >= work_mem * FUNC2(1024))
		return;

	FUNC3(output_rel,
					 (Path *) FUNC5(root,
											  output_rel,
											  cheapest_partial_path,
											  partial_grouping_target,
											  AGG_HASHED,
											  AGGSPLIT_INITIAL_SERIAL,
											  parse->groupClause,
											  NIL,
											  &agg_partial_costs,
											  d_num_partial_groups));

	if (!output_rel->partial_pathlist)
		return;

	partial_path = (Path *) FUNC8(output_rel->partial_pathlist);

	total_groups = partial_path->rows * partial_path->parallel_workers;

	partial_path = (Path *) FUNC6(root,
											   output_rel,
											   partial_path,
											   partial_grouping_target,
											   NULL,
											   &total_groups);
	FUNC4(output_rel,
			 (Path *) FUNC5(root,
									  output_rel,
									  partial_path,
									  target,
									  AGG_HASHED,
									  AGGSPLIT_FINAL_DESERIAL,
									  parse->groupClause,
									  (List *) parse->havingQual,
									  &agg_final_costs,
									  d_num_groups));
}