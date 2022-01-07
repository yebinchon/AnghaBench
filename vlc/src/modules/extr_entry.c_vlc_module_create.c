
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int modules_count; TYPE_2__* module; } ;
typedef TYPE_1__ vlc_plugin_t ;
struct TYPE_7__ {int i_score; int * deactivate; int * pf_activate; int * deactivate_name; int * activate_name; int * psz_capability; scalar_t__ i_shortcuts; int * pp_shortcuts; int * psz_help; int * psz_longname; int * psz_shortname; TYPE_1__* plugin; struct TYPE_7__* next; } ;
typedef TYPE_2__ module_t ;


 TYPE_2__* malloc (int) ;

module_t *vlc_module_create(vlc_plugin_t *plugin)
{
    module_t *module = malloc (sizeof (*module));
    if (module == ((void*)0))
        return ((void*)0);





    module_t *parent = plugin->module;
    if (parent == ((void*)0))
    {
        module->next = ((void*)0);
        plugin->module = module;
    }
    else
    {
        module->next = parent->next;
        parent->next = module;
    }

    plugin->modules_count++;
    module->plugin = plugin;

    module->psz_shortname = ((void*)0);
    module->psz_longname = ((void*)0);
    module->psz_help = ((void*)0);
    module->pp_shortcuts = ((void*)0);
    module->i_shortcuts = 0;
    module->psz_capability = ((void*)0);
    module->i_score = (parent != ((void*)0)) ? parent->i_score : 1;
    module->activate_name = ((void*)0);
    module->deactivate_name = ((void*)0);
    module->pf_activate = ((void*)0);
    module->deactivate = ((void*)0);
    return module;
}
