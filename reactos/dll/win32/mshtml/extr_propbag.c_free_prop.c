
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* value; struct TYPE_4__* name; int entry; } ;
typedef TYPE_1__ param_prop_t ;


 int heap_free (TYPE_1__*) ;
 int list_remove (int *) ;

__attribute__((used)) static void free_prop(param_prop_t *prop)
{
    list_remove(&prop->entry);

    heap_free(prop->name);
    heap_free(prop->value);
    heap_free(prop);
}
