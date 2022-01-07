
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vlc_renderer_discovery_owner {int member_2; int member_1; TYPE_1__* member_0; } ;
struct TYPE_3__ {int * p_rd; int name; int p_object; } ;
typedef TYPE_1__ libvlc_renderer_discoverer_t ;


 int assert (int ) ;
 int renderer_discovery_item_added ;
 int renderer_discovery_item_removed ;
 int * vlc_rd_new (int ,int ,struct vlc_renderer_discovery_owner*) ;

int
libvlc_renderer_discoverer_start( libvlc_renderer_discoverer_t *p_lrd )
{
    assert( p_lrd->p_rd == ((void*)0) );

    struct vlc_renderer_discovery_owner owner =
    {
        p_lrd,
        renderer_discovery_item_added,
        renderer_discovery_item_removed,
    };

    p_lrd->p_rd = vlc_rd_new( p_lrd->p_object, p_lrd->name, &owner );
    return p_lrd->p_rd != ((void*)0) ? 0 : -1;
}
