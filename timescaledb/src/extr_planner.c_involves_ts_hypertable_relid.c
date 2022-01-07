
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PlannerInfo ;
typedef scalar_t__ Index ;


 int is_rte_hypertable (int ) ;
 int planner_rt_fetch (scalar_t__,int *) ;

__attribute__((used)) static bool
involves_ts_hypertable_relid(PlannerInfo *root, Index relid)
{
 if (relid == 0)
  return 0;

 return is_rte_hypertable(planner_rt_fetch(relid, root));
}
