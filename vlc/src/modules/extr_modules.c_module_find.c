
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ i_shortcuts; int * pp_shortcuts; } ;
typedef TYPE_1__ module_t ;


 int assert (int ) ;
 int module_list_free (TYPE_1__**) ;
 TYPE_1__** module_list_get (size_t*) ;
 int strcmp (int ,char const*) ;
 scalar_t__ unlikely (int) ;

module_t *module_find (const char *name)
{
    size_t count;
    module_t **list = module_list_get (&count);

    assert (name != ((void*)0));

    for (size_t i = 0; i < count; i++)
    {
        module_t *module = list[i];

        if (unlikely(module->i_shortcuts == 0))
            continue;
        if (!strcmp (module->pp_shortcuts[0], name))
        {
            module_list_free (list);
            return module;
        }
    }
    module_list_free (list);
    return ((void*)0);
}
