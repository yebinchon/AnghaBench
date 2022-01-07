
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ rowMarks; scalar_t__ resultRelation; } ;
struct TYPE_5__ {int inh; } ;
typedef TYPE_1__ RangeTblEntry ;
typedef TYPE_2__ Query ;
typedef int Index ;
typedef int Hypertable ;


 scalar_t__ NIL ;

bool
ts_plan_expand_hypertable_valid_hypertable(Hypertable *ht, Query *parse, Index rti,
             RangeTblEntry *rte)
{
 if (ht == ((void*)0) ||

  rte->inh == 0 ||

  parse->rowMarks != NIL ||

  0 != parse->resultRelation)
  return 0;

 return 1;
}
