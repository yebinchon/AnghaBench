
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* psz_demux_filter; struct TYPE_4__* psz_icon_uri; struct TYPE_4__* psz_sout; struct TYPE_4__* psz_type; struct TYPE_4__* psz_name; } ;
typedef TYPE_1__ vlc_renderer_item_t ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void
item_free(vlc_renderer_item_t *p_item)
{
    free(p_item->psz_name);
    free(p_item->psz_type);
    free(p_item->psz_sout);
    free(p_item->psz_icon_uri);
    free(p_item->psz_demux_filter);
    free(p_item);
}
