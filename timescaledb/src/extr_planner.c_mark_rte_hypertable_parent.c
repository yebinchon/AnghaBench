
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ctename; } ;
typedef TYPE_1__ RangeTblEntry ;


 int Assert (int ) ;
 int * CTE_NAME_HYPERTABLES ;

__attribute__((used)) static void
mark_rte_hypertable_parent(RangeTblEntry *rte)
{




 Assert(rte->ctename == ((void*)0));
 rte->ctename = CTE_NAME_HYPERTABLES;
}
