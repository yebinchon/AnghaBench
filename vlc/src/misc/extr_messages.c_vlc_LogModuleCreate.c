
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;
struct vlc_logger {int * ops; } ;
struct vlc_logger_module {struct vlc_logger frontend; } ;


 int VLC_OBJECT (struct vlc_logger_module*) ;
 int module_ops ;
 scalar_t__ unlikely (int ) ;
 struct vlc_logger_module* vlc_custom_create (int *,int,char*) ;
 int vlc_logger_load ;
 int * vlc_module_load (int ,char*,int *,int,int ,struct vlc_logger_module*) ;
 int vlc_object_delete (int ) ;

__attribute__((used)) static struct vlc_logger *vlc_LogModuleCreate(vlc_object_t *parent)
{
    struct vlc_logger_module *module;

    module = vlc_custom_create(parent, sizeof (*module), "logger");
    if (unlikely(module == ((void*)0)))
        return ((void*)0);


    if (vlc_module_load(VLC_OBJECT(module), "logger", ((void*)0), 0,
                        vlc_logger_load, module) == ((void*)0)) {
        vlc_object_delete(VLC_OBJECT(module));
        return ((void*)0);
    }

    module->frontend.ops = &module_ops;
    return &module->frontend;
}
