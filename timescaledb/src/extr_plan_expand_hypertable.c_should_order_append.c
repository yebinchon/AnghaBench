
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* parse; } ;
struct TYPE_5__ {scalar_t__ sortClause; } ;
typedef int RelOptInfo ;
typedef TYPE_2__ PlannerInfo ;
typedef int List ;
typedef int Hypertable ;


 scalar_t__ NIL ;
 scalar_t__ ts_guc_disable_optimizations ;
 int ts_guc_enable_chunk_append ;
 int ts_guc_enable_ordered_append ;
 int ts_ordered_append_should_optimize (TYPE_2__*,int *,int *,int *,int*,int*) ;

__attribute__((used)) static bool
should_order_append(PlannerInfo *root, RelOptInfo *rel, Hypertable *ht, List *join_conditions,
     int *order_attno, bool *reverse)
{

 if (ts_guc_disable_optimizations || !ts_guc_enable_ordered_append ||
  !ts_guc_enable_chunk_append)
  return 0;





 if (root->parse->sortClause == NIL)
  return 0;

 return ts_ordered_append_should_optimize(root, rel, ht, join_conditions, order_attno, reverse);
}
