
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int inh; scalar_t__ relkind; } ;
struct TYPE_5__ {scalar_t__ reloptkind; scalar_t__ rtekind; } ;
typedef TYPE_1__ RelOptInfo ;
typedef TYPE_2__ RangeTblEntry ;


 scalar_t__ RELKIND_RELATION ;
 scalar_t__ RELOPT_OTHER_MEMBER_REL ;
 scalar_t__ RTE_RELATION ;

__attribute__((used)) static inline bool
is_append_child(RelOptInfo *rel, RangeTblEntry *rte)
{
 return rel->reloptkind == RELOPT_OTHER_MEMBER_REL && rte->inh == 0 &&
     rel->rtekind == RTE_RELATION && rte->relkind == RELKIND_RELATION;
}
