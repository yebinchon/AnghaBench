
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int unloadable; int handle; } ;
typedef TYPE_1__ vlc_plugin_t ;
typedef int vlc_plugin_cb ;


 int atomic_init (int *,int ) ;
 scalar_t__ unlikely (int ) ;
 TYPE_1__* vlc_plugin_describe (int ) ;

__attribute__((used)) static vlc_plugin_t *module_InitStatic(vlc_plugin_cb entry)
{

    vlc_plugin_t *lib = vlc_plugin_describe (entry);
    if (unlikely(lib == ((void*)0)))
        return ((void*)0);





    return lib;
}
