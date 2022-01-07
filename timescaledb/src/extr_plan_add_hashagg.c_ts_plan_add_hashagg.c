
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


struct TYPE_28__ {scalar_t__ numOrderedAggs; scalar_t__ hasNonSerial; scalar_t__ hasNonPartial; } ;
struct TYPE_27__ {int rows; } ;
struct TYPE_26__ {scalar_t__ processed_tlist; int ** upper_targets; TYPE_2__* parse; } ;
struct TYPE_25__ {scalar_t__ groupClause; int * havingQual; int hasAggs; scalar_t__ groupingSets; } ;
struct TYPE_24__ {scalar_t__ partial_pathlist; int consider_parallel; TYPE_4__* cheapest_total_path; } ;
typedef int Size ;
typedef TYPE_1__ RelOptInfo ;
typedef TYPE_2__ Query ;
typedef TYPE_3__ PlannerInfo ;
typedef int PathTarget ;
typedef TYPE_4__ Path ;
typedef int Node ;
typedef int List ;
typedef TYPE_5__ AggClauseCosts ;


 int AGGSPLIT_SIMPLE ;
 int AGG_HASHED ;
 int IS_VALID_ESTIMATE (double) ;
 int MemSet (TYPE_5__*,int ,int) ;
 scalar_t__ NIL ;
 int UINT64CONST (int) ;
 size_t UPPERREL_GROUP_AGG ;
 int add_path (TYPE_1__*,TYPE_4__*) ;
 scalar_t__ create_agg_path (TYPE_3__*,TYPE_1__*,TYPE_4__*,int *,int ,int ,scalar_t__,int *,TYPE_5__*,double) ;
 int get_agg_clause_costs (TYPE_3__*,int *,int ,TYPE_5__*) ;
 scalar_t__ grouping_is_hashable (scalar_t__) ;
 int plan_add_parallel_hashagg (TYPE_3__*,TYPE_1__*,TYPE_1__*,double) ;
 double ts_estimate_group (TYPE_3__*,int ) ;
 int ts_estimate_hashagg_tablesize (TYPE_4__*,TYPE_5__*,double) ;
 int work_mem ;

void
ts_plan_add_hashagg(PlannerInfo *root, RelOptInfo *input_rel, RelOptInfo *output_rel)
{
 Query *parse = root->parse;
 Path *cheapest_path = input_rel->cheapest_total_path;
 AggClauseCosts agg_costs;
 bool can_hash;
 double d_num_groups;
 Size hashaggtablesize;
 PathTarget *target = root->upper_targets[UPPERREL_GROUP_AGG];
 bool try_parallel_aggregation;

 if (parse->groupingSets || !parse->hasAggs || parse->groupClause == NIL)
  return;

 MemSet(&agg_costs, 0, sizeof(AggClauseCosts));
 get_agg_clause_costs(root, (Node *) root->processed_tlist, AGGSPLIT_SIMPLE, &agg_costs);
 get_agg_clause_costs(root, parse->havingQual, AGGSPLIT_SIMPLE, &agg_costs);

 can_hash = (parse->groupClause != NIL && agg_costs.numOrderedAggs == 0 &&
    grouping_is_hashable(parse->groupClause));

 if (!can_hash)
  return;

 d_num_groups = ts_estimate_group(root, cheapest_path->rows);


 if (!IS_VALID_ESTIMATE(d_num_groups))
  return;

 hashaggtablesize = ts_estimate_hashagg_tablesize(cheapest_path, &agg_costs, d_num_groups);

 if (hashaggtablesize >= work_mem * UINT64CONST(1024))
  return;

 if (!output_rel->consider_parallel)
 {

  try_parallel_aggregation = 0;
 }
 else if (output_rel->partial_pathlist == NIL)
 {

  try_parallel_aggregation = 0;
 }
 else if (agg_costs.hasNonPartial || agg_costs.hasNonSerial)
 {

  try_parallel_aggregation = 0;
 }
 else
 {

  try_parallel_aggregation = 1;
 }

 if (try_parallel_aggregation)
  plan_add_parallel_hashagg(root, input_rel, output_rel, d_num_groups);





 add_path(output_rel,
    (Path *) create_agg_path(root,
           output_rel,
           cheapest_path,
           target,
           AGG_HASHED,
           AGGSPLIT_SIMPLE,
           parse->groupClause,
           (List *) parse->havingQual,
           &agg_costs,
           d_num_groups));
}
