
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {int (* deactivate ) (int *) ;} ;
typedef TYPE_1__ module_t ;


 int module_get_object (TYPE_1__*) ;
 int msg_Dbg (int *,char*,int ) ;
 int stub1 (int *) ;
 int var_Destroy (int *,char*) ;
 int vlc_objres_clear (int *) ;

void module_unneed(vlc_object_t *obj, module_t *module)
{
    msg_Dbg(obj, "removing module \"%s\"", module_get_object(module));
    var_Destroy(obj, "module-name");

    if (module->deactivate != ((void*)0))
        module->deactivate(obj);

    vlc_objres_clear(obj);
}
