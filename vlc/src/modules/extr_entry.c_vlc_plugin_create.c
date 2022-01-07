
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ booleans; scalar_t__ count; scalar_t__ size; int * items; } ;
struct TYPE_6__ {int unloadable; int * module; int * path; int * abspath; int handle; TYPE_1__ conf; int * textdomain; scalar_t__ modules_count; } ;
typedef TYPE_2__ vlc_plugin_t ;


 int atomic_init (int *,int ) ;
 TYPE_2__* malloc (int) ;
 scalar_t__ unlikely (int ) ;

vlc_plugin_t *vlc_plugin_create(void)
{
    vlc_plugin_t *plugin = malloc(sizeof (*plugin));
    if (unlikely(plugin == ((void*)0)))
        return ((void*)0);

    plugin->modules_count = 0;
    plugin->textdomain = ((void*)0);
    plugin->conf.items = ((void*)0);
    plugin->conf.size = 0;
    plugin->conf.count = 0;
    plugin->conf.booleans = 0;







    plugin->module = ((void*)0);

    return plugin;
}
