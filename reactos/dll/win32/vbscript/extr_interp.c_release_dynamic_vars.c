
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; int v; } ;
typedef TYPE_1__ dynamic_var_t ;


 int VariantClear (int *) ;

void release_dynamic_vars(dynamic_var_t *var)
{
    while(var) {
        VariantClear(&var->v);
        var = var->next;
    }
}
