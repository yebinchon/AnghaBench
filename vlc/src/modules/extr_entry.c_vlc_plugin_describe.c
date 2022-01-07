
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_plugin_t ;
typedef scalar_t__ (* vlc_plugin_cb ) (int ,int *) ;


 scalar_t__ unlikely (int ) ;
 int * vlc_plugin_create () ;
 int vlc_plugin_desc_cb ;
 int vlc_plugin_destroy (int *) ;

vlc_plugin_t *vlc_plugin_describe(vlc_plugin_cb entry)
{
    vlc_plugin_t *plugin = vlc_plugin_create();
    if (unlikely(plugin == ((void*)0)))
        return ((void*)0);

    if (entry(vlc_plugin_desc_cb, plugin) != 0)
    {
        vlc_plugin_destroy(plugin);
        plugin = ((void*)0);
    }
    return plugin;
}
