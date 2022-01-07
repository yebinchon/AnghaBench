
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * baserestrictinfo; int reloptkind; int relid; int type; } ;
typedef TYPE_1__ RelOptInfo ;
typedef int RangeTblEntry ;
typedef int PlannerInfo ;
typedef int List ;
typedef int Index ;


 int RELOPT_OTHER_MEMBER_REL ;
 int T_RelOptInfo ;
 int relation_excluded_by_constraints (int *,TYPE_1__*,int *) ;

__attribute__((used)) static bool
excluded_by_constraint(PlannerInfo *root, RangeTblEntry *rte, Index rt_index, List *restrictinfos)
{
 RelOptInfo rel = {
  .type = T_RelOptInfo,
  .relid = rt_index,
  .reloptkind = RELOPT_OTHER_MEMBER_REL,
  .baserestrictinfo = restrictinfos,
 };

 return relation_excluded_by_constraints(root, &rel, rte);
}
