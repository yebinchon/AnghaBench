
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
typedef int module_t ;
struct TYPE_2__ {int usage; int lock; int caps_tree; } ;


 int AllocateAllPlugins (int *) ;
 int config_SortConfig () ;
 int config_UnsortConfig () ;
 int module_InitStaticModules () ;
 int module_list_free (int **) ;
 int ** module_list_get (size_t*) ;
 TYPE_1__ modules ;
 int msg_Dbg (int *,char*,...) ;
 int twalk (int ,int ) ;
 int vlc_modcap_sort ;
 int vlc_mutex_unlock (int *) ;

void module_LoadPlugins(vlc_object_t *obj)
{


    if (modules.usage == 1)
    {
        module_InitStaticModules ();




        config_UnsortConfig ();
        config_SortConfig ();

        twalk(modules.caps_tree, vlc_modcap_sort);
    }
    vlc_mutex_unlock (&modules.lock);

    size_t count;
    module_t **list = module_list_get (&count);
    module_list_free (list);
    msg_Dbg (obj, "plug-ins loaded: %zu modules", count);
}
