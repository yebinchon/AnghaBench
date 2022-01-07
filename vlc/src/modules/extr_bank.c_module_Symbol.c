
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_plugin_t ;
struct vlc_logger {int dummy; } ;



void *module_Symbol(struct vlc_logger *log,
                    vlc_plugin_t *plugin, const char *name)
{
    (void) log; (void) plugin; (void) name;
    return ((void*)0);
}
