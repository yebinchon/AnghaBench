
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;


struct TYPE_32__ {double rows; double parallel_workers; } ;
struct TYPE_31__ {scalar_t__ exprs; } ;
struct TYPE_30__ {TYPE_4__** upper_targets; TYPE_2__* parse; } ;
struct TYPE_29__ {int * havingQual; int groupClause; scalar_t__ hasAggs; } ;
struct TYPE_28__ {int partial_pathlist; } ;
typedef int Size ;
typedef TYPE_1__ RelOptInfo ;
typedef TYPE_2__ Query ;
typedef TYPE_3__ PlannerInfo ;
typedef TYPE_4__ PathTarget ;
typedef TYPE_5__ Path ;
typedef int Node ;
typedef int List ;
typedef int AggClauseCosts ;


 int AGGSPLIT_FINAL_DESERIAL ;
 int AGGSPLIT_INITIAL_SERIAL ;
 int AGG_HASHED ;
 int IS_VALID_ESTIMATE (double) ;
 int MemSet (int *,int ,int) ;
 int * NIL ;
 int UINT64CONST (int) ;
 size_t UPPERREL_GROUP_AGG ;
 int add_partial_path (TYPE_1__*,TYPE_5__*) ;
 int add_path (TYPE_1__*,TYPE_5__*) ;
 scalar_t__ create_agg_path (TYPE_3__*,TYPE_1__*,TYPE_5__*,TYPE_4__*,int ,int ,int ,int *,int *,double) ;
 scalar_t__ create_gather_path (TYPE_3__*,TYPE_1__*,TYPE_5__*,TYPE_4__*,int *,double*) ;
 int get_agg_clause_costs (TYPE_3__*,int *,int ,int *) ;
 TYPE_5__* linitial (int ) ;
 double ts_estimate_group (TYPE_3__*,double) ;
 int ts_estimate_hashagg_tablesize (TYPE_5__*,int *,double) ;
 TYPE_4__* ts_make_partial_grouping_target (TYPE_3__*,TYPE_4__*) ;
 int work_mem ;

__attribute__((used)) static void
plan_add_parallel_hashagg(PlannerInfo *root, RelOptInfo *input_rel, RelOptInfo *output_rel,
        double d_num_groups)
{
 Query *parse = root->parse;
 Path *cheapest_partial_path = linitial(input_rel->partial_pathlist);
 PathTarget *target = root->upper_targets[UPPERREL_GROUP_AGG];
 PathTarget *partial_grouping_target = ts_make_partial_grouping_target(root, target);
 AggClauseCosts agg_partial_costs;
 AggClauseCosts agg_final_costs;
 Size hashagg_table_size;
 double total_groups;
 Path *partial_path;
 double d_num_partial_groups = ts_estimate_group(root, cheapest_partial_path->rows);


 if (!IS_VALID_ESTIMATE(d_num_partial_groups))
  return;

 MemSet(&agg_partial_costs, 0, sizeof(AggClauseCosts));
 MemSet(&agg_final_costs, 0, sizeof(AggClauseCosts));

 if (parse->hasAggs)
 {

  get_agg_clause_costs(root,
        (Node *) partial_grouping_target->exprs,
        AGGSPLIT_INITIAL_SERIAL,
        &agg_partial_costs);


  get_agg_clause_costs(root,
        (Node *) target->exprs,
        AGGSPLIT_FINAL_DESERIAL,
        &agg_final_costs);
  get_agg_clause_costs(root, parse->havingQual, AGGSPLIT_FINAL_DESERIAL, &agg_final_costs);
 }

 hashagg_table_size = ts_estimate_hashagg_tablesize(cheapest_partial_path,
                &agg_partial_costs,
                d_num_partial_groups);





 if (hashagg_table_size >= work_mem * UINT64CONST(1024))
  return;

 add_partial_path(output_rel,
      (Path *) create_agg_path(root,
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

 partial_path = (Path *) linitial(output_rel->partial_pathlist);

 total_groups = partial_path->rows * partial_path->parallel_workers;

 partial_path = (Path *) create_gather_path(root,
              output_rel,
              partial_path,
              partial_grouping_target,
              ((void*)0),
              &total_groups);
 add_path(output_rel,
    (Path *) create_agg_path(root,
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
