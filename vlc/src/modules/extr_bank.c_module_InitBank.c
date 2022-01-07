
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_plugin_t ;
struct TYPE_2__ {scalar_t__ usage; int lock; } ;


 int config_SortConfig () ;
 scalar_t__ likely (int ) ;
 int * module_InitStatic (int ) ;
 TYPE_1__ modules ;
 int vlc_entry__core ;
 int vlc_mutex_lock (int *) ;
 int vlc_plugin_store (int *) ;

void module_InitBank (void)
{
    vlc_mutex_lock (&modules.lock);

    if (modules.usage == 0)
    {





        vlc_plugin_t *plugin = module_InitStatic(vlc_entry__core);
        if (likely(plugin != ((void*)0)))
            vlc_plugin_store(plugin);
        config_SortConfig ();
    }
    modules.usage++;
}
