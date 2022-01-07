
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ctename; } ;
typedef TYPE_1__ RangeTblEntry ;


 int CTE_NAME_HYPERTABLES ;
 scalar_t__ strcmp (int *,int ) ;

__attribute__((used)) static bool
is_rte_hypertable(RangeTblEntry *rte)
{
 return rte->ctename != ((void*)0) && strcmp(rte->ctename, CTE_NAME_HYPERTABLES) == 0;
}
