
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int force; int logger; } ;
typedef TYPE_1__ vlc_object_t ;
typedef int module_t ;


 int VLC_VAR_STRING ;
 int generic_start ;
 int module_get_object (int *) ;
 int var_Create (TYPE_1__*,char*,int ) ;
 int var_SetString (TYPE_1__*,char*,int ) ;
 int * vlc_module_load (int ,char const*,char const*,int,int ,TYPE_1__*) ;

module_t *module_need(vlc_object_t *obj, const char *cap, const char *name,
                      bool strict)
{
    const bool b_force_backup = obj->force;
    module_t *module = vlc_module_load(obj->logger, cap, name, strict,
                                       generic_start, obj);
    if (module != ((void*)0)) {
        var_Create(obj, "module-name", VLC_VAR_STRING);
        var_SetString(obj, "module-name", module_get_object(module));
    }

    obj->force = b_force_backup;
    return module;
}
