
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {size_t modules_count; TYPE_2__* module; struct TYPE_8__* next; } ;
typedef TYPE_1__ vlc_plugin_t ;
struct TYPE_9__ {struct TYPE_9__* next; } ;
typedef TYPE_2__ module_t ;


 int assert (int ) ;
 int free (TYPE_2__**) ;
 TYPE_2__** realloc (TYPE_2__**,size_t) ;
 scalar_t__ unlikely (int ) ;
 TYPE_1__* vlc_plugins ;

module_t **module_list_get (size_t *n)
{
    module_t **tab = ((void*)0);
    size_t i = 0;

    assert (n != ((void*)0));

    for (vlc_plugin_t *lib = vlc_plugins; lib != ((void*)0); lib = lib->next)
    {
        module_t **nt = realloc(tab, (i + lib->modules_count) * sizeof (*tab));
        if (unlikely(nt == ((void*)0)))
        {
            free (tab);
            *n = 0;
            return ((void*)0);
        }

        tab = nt;
        for (module_t *m = lib->module; m != ((void*)0); m = m->next)
            tab[i++] = m;
    }
    *n = i;
    return tab;
}
