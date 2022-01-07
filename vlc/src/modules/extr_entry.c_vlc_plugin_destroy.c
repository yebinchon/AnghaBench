
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size; int items; } ;
struct TYPE_6__ {struct TYPE_6__* path; struct TYPE_6__* abspath; TYPE_1__ conf; int * module; int handle; int unloadable; } ;
typedef TYPE_2__ vlc_plugin_t ;


 int assert (int) ;
 scalar_t__ atomic_load (int *) ;
 int config_Free (int ,int ) ;
 int free (TYPE_2__*) ;
 int vlc_module_destroy (int *) ;

void vlc_plugin_destroy(vlc_plugin_t *plugin)
{
    assert(plugin != ((void*)0));




    if (plugin->module != ((void*)0))
        vlc_module_destroy(plugin->module);

    config_Free(plugin->conf.items, plugin->conf.size);




    free(plugin);
}
