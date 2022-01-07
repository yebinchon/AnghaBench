
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dlce_mintxg; } ;
typedef TYPE_1__ dsl_deadlist_cache_entry_t ;


 int TREE_CMP (int ,int ) ;

__attribute__((used)) static int
dsl_deadlist_cache_compare(const void *arg1, const void *arg2)
{
 const dsl_deadlist_cache_entry_t *dlce1 = arg1;
 const dsl_deadlist_cache_entry_t *dlce2 = arg2;

 return (TREE_CMP(dlce1->dlce_mintxg, dlce2->dlce_mintxg));
}
