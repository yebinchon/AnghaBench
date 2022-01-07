
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t size; TYPE_3__* items; } ;
struct TYPE_6__ {TYPE_1__ conf; } ;
typedef TYPE_2__ vlc_plugin_t ;
struct TYPE_7__ {scalar_t__ b_removed; int i_type; } ;
typedef TYPE_3__ module_config_t ;


 int CONFIG_ITEM (int ) ;

__attribute__((used)) static bool plugin_show(const vlc_plugin_t *plugin)
{
    for (size_t i = 0; i < plugin->conf.size; i++)
    {
        const module_config_t *item = plugin->conf.items + i;

        if (!CONFIG_ITEM(item->i_type))
            continue;
        if (item->b_removed)
            continue;
        return 1;
    }
    return 0;
}
