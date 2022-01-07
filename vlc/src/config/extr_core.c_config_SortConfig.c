
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int size; TYPE_3__* items; } ;
struct TYPE_9__ {TYPE_1__ conf; struct TYPE_9__* next; } ;
typedef TYPE_2__ vlc_plugin_t ;
struct TYPE_10__ {int i_type; } ;
typedef TYPE_3__ module_config_t ;
struct TYPE_11__ {size_t count; TYPE_3__** list; } ;


 int CONFIG_ITEM (int ) ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int confcmp ;
 TYPE_7__ config ;
 int qsort (TYPE_3__**,size_t,int,int ) ;
 scalar_t__ unlikely (int ) ;
 TYPE_3__** vlc_alloc (size_t,int) ;
 TYPE_2__* vlc_plugins ;

int config_SortConfig (void)
{
    vlc_plugin_t *p;
    size_t nconf = 0;

    for (p = vlc_plugins; p != ((void*)0); p = p->next)
         nconf += p->conf.size;

    module_config_t **clist = vlc_alloc (nconf, sizeof (*clist));
    if (unlikely(clist == ((void*)0)))
        return VLC_ENOMEM;

    nconf = 0;
    for (p = vlc_plugins; p != ((void*)0); p = p->next)
    {
        module_config_t *item, *end;

        for (item = p->conf.items, end = item + p->conf.size;
             item < end;
             item++)
        {
            if (!CONFIG_ITEM(item->i_type))
                continue;
            clist[nconf++] = item;
        }
    }

    qsort (clist, nconf, sizeof (*clist), confcmp);

    config.list = clist;
    config.count = nconf;
    return VLC_SUCCESS;
}
