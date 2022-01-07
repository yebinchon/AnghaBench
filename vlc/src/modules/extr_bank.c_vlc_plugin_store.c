
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* module; struct TYPE_7__* next; } ;
typedef TYPE_1__ vlc_plugin_t ;
struct TYPE_8__ {struct TYPE_8__* next; } ;
typedef TYPE_2__ module_t ;
struct TYPE_9__ {int lock; } ;


 TYPE_6__ modules ;
 int vlc_module_store (TYPE_2__*) ;
 int vlc_mutex_assert (int *) ;
 TYPE_1__* vlc_plugins ;

__attribute__((used)) static void vlc_plugin_store(vlc_plugin_t *lib)
{
    vlc_mutex_assert(&modules.lock);

    lib->next = vlc_plugins;
    vlc_plugins = lib;

    for (module_t *m = lib->module; m != ((void*)0); m = m->next)
        vlc_module_store(m);
}
