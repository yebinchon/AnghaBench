
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_4__* sys; } ;
struct TYPE_9__ {TYPE_1__ owner; } ;
typedef TYPE_2__ services_discovery_t ;
struct TYPE_10__ {int * p_input_item; } ;
typedef TYPE_3__ libvlc_media_t ;
struct TYPE_11__ {int p_mlist; } ;
typedef TYPE_4__ libvlc_media_discoverer_t ;
typedef int input_item_t ;


 int assert (int ) ;
 int libvlc_media_list_count (int ) ;
 int libvlc_media_list_internal_remove_index (int ,int) ;
 TYPE_3__* libvlc_media_list_item_at_index (int ,int) ;
 int libvlc_media_list_lock (int ) ;
 int libvlc_media_list_unlock (int ) ;
 int libvlc_media_release (TYPE_3__*) ;

__attribute__((used)) static void services_discovery_item_removed( services_discovery_t *sd,
                                             input_item_t *p_item )
{
    libvlc_media_t * p_md;
    libvlc_media_discoverer_t *p_mdis = sd->owner.sys;

    int i, count = libvlc_media_list_count( p_mdis->p_mlist );
    libvlc_media_list_lock( p_mdis->p_mlist );
    for( i = 0; i < count; i++ )
    {
        p_md = libvlc_media_list_item_at_index( p_mdis->p_mlist, i );
        assert(p_md != ((void*)0));
        if( p_md->p_input_item == p_item )
        {
            libvlc_media_list_internal_remove_index( p_mdis->p_mlist, i );
            libvlc_media_release( p_md );
            break;
        }
        libvlc_media_release( p_md );
    }
    libvlc_media_list_unlock( p_mdis->p_mlist );
}
