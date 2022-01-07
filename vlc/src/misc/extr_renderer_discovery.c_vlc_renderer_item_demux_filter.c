
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* psz_demux_filter; } ;
typedef TYPE_1__ vlc_renderer_item_t ;


 int assert (int ) ;

const char *
vlc_renderer_item_demux_filter(const vlc_renderer_item_t *p_item)
{
    assert(p_item != ((void*)0));

    return p_item->psz_demux_filter;
}
