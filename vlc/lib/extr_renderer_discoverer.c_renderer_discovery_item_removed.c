
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vlc_renderer_item_t ;
struct TYPE_11__ {TYPE_5__* sys; } ;
struct TYPE_12__ {TYPE_3__ owner; } ;
typedef TYPE_4__ vlc_renderer_discovery_t ;
typedef int libvlc_renderer_item_t ;
struct TYPE_13__ {int event_manager; int pp_items; int i_items; } ;
typedef TYPE_5__ libvlc_renderer_discoverer_t ;
struct TYPE_9__ {int * item; } ;
struct TYPE_10__ {TYPE_1__ renderer_discoverer_item_deleted; } ;
struct TYPE_14__ {TYPE_2__ u; int type; } ;
typedef TYPE_6__ libvlc_event_t ;


 int TAB_ERASE (int ,int ,int) ;
 int TAB_FIND (int ,int ,int *,int) ;
 int assert (int) ;
 int libvlc_RendererDiscovererItemDeleted ;
 int libvlc_event_send (int *,TYPE_6__*) ;
 int vlc_renderer_item_release (int *) ;

__attribute__((used)) static void renderer_discovery_item_removed( vlc_renderer_discovery_t *rd,
                                             vlc_renderer_item_t *p_item )
{
    libvlc_renderer_discoverer_t *p_lrd = rd->owner.sys;

    int i_idx;
    TAB_FIND( p_lrd->i_items, p_lrd->pp_items, p_item, i_idx );
    assert( i_idx != -1 );
    TAB_ERASE( p_lrd->i_items, p_lrd->pp_items, i_idx );

    libvlc_event_t event = {
        .type = libvlc_RendererDiscovererItemDeleted,
        .u.renderer_discoverer_item_deleted.item =
            (libvlc_renderer_item_t*) p_item,
    };
    libvlc_event_send( &p_lrd->event_manager, &event );

    vlc_renderer_item_release( p_item );
}
