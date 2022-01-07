
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int es_range_table; } ;
struct TYPE_6__ {scalar_t__ rtekind; scalar_t__ relkind; int inh; } ;
typedef TYPE_1__ RangeTblEntry ;
typedef int PlannerInfo ;
typedef int List ;
typedef int Index ;
typedef TYPE_2__ EState ;


 scalar_t__ RELKIND_RELATION ;
 scalar_t__ RTE_RELATION ;
 scalar_t__ excluded_by_constraint (int *,TYPE_1__*,int ,int *) ;
 TYPE_1__* rt_fetch (int ,int ) ;

__attribute__((used)) static bool
can_exclude_chunk(PlannerInfo *root, EState *estate, Index rt_index, List *restrictinfos)
{
 RangeTblEntry *rte = rt_fetch(rt_index, estate->es_range_table);

 return rte->rtekind == RTE_RELATION && rte->relkind == RELKIND_RELATION && !rte->inh &&
     excluded_by_constraint(root, rte, rt_index, restrictinfos);
}
