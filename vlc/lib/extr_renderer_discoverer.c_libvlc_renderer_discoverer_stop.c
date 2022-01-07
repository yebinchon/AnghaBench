
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int i_items; int * pp_items; int * p_rd; } ;
typedef TYPE_1__ libvlc_renderer_discoverer_t ;


 int TAB_CLEAN (int,int *) ;
 int vlc_rd_release (int *) ;
 int vlc_renderer_item_release (int ) ;

void
libvlc_renderer_discoverer_stop( libvlc_renderer_discoverer_t *p_lrd )
{
    if( p_lrd->p_rd != ((void*)0) )
    {
        vlc_rd_release( p_lrd->p_rd );
        p_lrd->p_rd = ((void*)0);
    }

    for( int i = 0; i < p_lrd->i_items; ++i )
        vlc_renderer_item_release( p_lrd->pp_items[i] );
    TAB_CLEAN( p_lrd->i_items, p_lrd->pp_items );
}
