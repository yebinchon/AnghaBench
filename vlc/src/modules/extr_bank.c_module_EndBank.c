
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* next; } ;
typedef TYPE_1__ vlc_plugin_t ;
typedef int block_t ;
struct TYPE_7__ {scalar_t__ usage; int lock; int * caps_tree; int * caches; } ;


 int assert (int) ;
 int block_ChainRelease (int *) ;
 int config_UnsortConfig () ;
 int module_Unmap (TYPE_1__*) ;
 TYPE_4__ modules ;
 int tdestroy (void*,int ) ;
 int vlc_modcap_free ;
 int vlc_mutex_assert (int *) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_plugin_destroy (TYPE_1__*) ;
 TYPE_1__* vlc_plugins ;

void module_EndBank (bool b_plugins)
{
    vlc_plugin_t *libs = ((void*)0);
    block_t *caches = ((void*)0);
    void *caps_tree = ((void*)0);



    if( b_plugins )
        vlc_mutex_lock (&modules.lock);
    else
        vlc_mutex_assert(&modules.lock);

    assert (modules.usage > 0);
    if (--modules.usage == 0)
    {
        config_UnsortConfig ();
        libs = vlc_plugins;
        caches = modules.caches;
        caps_tree = modules.caps_tree;
        vlc_plugins = ((void*)0);
        modules.caches = ((void*)0);
        modules.caps_tree = ((void*)0);
    }
    vlc_mutex_unlock (&modules.lock);

    tdestroy(caps_tree, vlc_modcap_free);

    while (libs != ((void*)0))
    {
        vlc_plugin_t *lib = libs;

        libs = lib->next;
        module_Unmap(lib);
        vlc_plugin_destroy(lib);
    }

    block_ChainRelease(caches);
}
