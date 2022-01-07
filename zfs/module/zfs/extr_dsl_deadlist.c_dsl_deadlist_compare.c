
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dle_mintxg; } ;
typedef TYPE_1__ dsl_deadlist_entry_t ;


 int TREE_CMP (int ,int ) ;

__attribute__((used)) static int
dsl_deadlist_compare(const void *arg1, const void *arg2)
{
 const dsl_deadlist_entry_t *dle1 = arg1;
 const dsl_deadlist_entry_t *dle2 = arg2;

 return (TREE_CMP(dle1->dle_mintxg, dle2->dle_mintxg));
}
