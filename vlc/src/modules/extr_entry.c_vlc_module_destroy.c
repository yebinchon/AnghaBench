
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* pp_shortcuts; struct TYPE_4__* next; } ;
typedef TYPE_1__ module_t ;


 int free (TYPE_1__*) ;

void vlc_module_destroy (module_t *module)
{
    while (module != ((void*)0))
    {
        module_t *next = module->next;

        free(module->pp_shortcuts);
        free(module);
        module = next;
    }
}
