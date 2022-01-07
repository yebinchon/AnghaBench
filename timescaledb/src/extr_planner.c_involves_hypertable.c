
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int reloptkind; int relids; int relid; } ;
typedef TYPE_1__ RelOptInfo ;
typedef int RangeTblEntry ;
typedef int PlannerInfo ;





 int involves_hypertable_relid_set (int *,int ) ;
 int involves_ts_hypertable_relid (int *,int ) ;
 int is_append_child (TYPE_1__*,int *) ;
 int is_append_parent (TYPE_1__*,int *) ;
 int * planner_rt_fetch (int ,int *) ;

__attribute__((used)) static bool
involves_hypertable(PlannerInfo *root, RelOptInfo *rel)
{
 RangeTblEntry *rte;

 switch (rel->reloptkind)
 {
  case 130:
  case 128:

   rte = planner_rt_fetch(rel->relid, root);
   if (!(is_append_parent(rel, rte) || is_append_child(rel, rte)))
    return 0;

   return involves_ts_hypertable_relid(root, rel->relid);
  case 129:
   return involves_hypertable_relid_set(root, rel->relids);
  default:
   return 0;
 }
}
