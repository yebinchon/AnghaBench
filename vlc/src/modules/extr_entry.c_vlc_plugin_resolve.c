
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* module; } ;
typedef TYPE_1__ vlc_plugin_t ;
typedef int vlc_plugin_cb ;
struct TYPE_5__ {void* pf_activate; void* deactivate; int deactivate_name; int activate_name; struct TYPE_5__* next; } ;
typedef TYPE_2__ module_t ;


 int vlc_plugin_free_symbols (void*) ;
 scalar_t__ vlc_plugin_get_symbol (void*,int ,void**) ;
 void* vlc_plugin_get_symbols (int ) ;

int vlc_plugin_resolve(vlc_plugin_t *plugin, vlc_plugin_cb entry)
{
    void *syms = vlc_plugin_get_symbols(entry);
    int ret = 0;


    for (module_t *module = plugin->module;
         module != ((void*)0);
         module = module->next)
    {
        void *deactivate;

        if (vlc_plugin_get_symbol(syms, module->activate_name,
                                  &module->pf_activate)
         || vlc_plugin_get_symbol(syms, module->deactivate_name, &deactivate))
        {
            ret = -1;
            break;
        }

        module->deactivate = deactivate;
    }

    vlc_plugin_free_symbols(syms);
    return ret;
}
