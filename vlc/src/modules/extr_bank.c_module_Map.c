
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_plugin_t ;
struct vlc_logger {int dummy; } ;



int module_Map(struct vlc_logger *log, vlc_plugin_t *plugin)
{
    (void) log; (void) plugin;
    return 0;
}
