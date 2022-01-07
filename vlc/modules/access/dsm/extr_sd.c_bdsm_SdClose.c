
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_object_t ;
struct entry_item {int entry_item_list; int p_item; scalar_t__ p_ns; } ;
struct TYPE_2__ {struct entry_item* p_sys; } ;
typedef TYPE_1__ services_discovery_t ;
typedef struct entry_item services_discovery_sys_t ;


 int free (struct entry_item*) ;
 int input_item_Release (int ) ;
 int netbios_ns_destroy (scalar_t__) ;
 int netbios_ns_discover_stop (scalar_t__) ;
 int vlc_array_clear (int *) ;
 size_t vlc_array_count (int *) ;
 struct entry_item* vlc_array_item_at_index (int *,size_t) ;

void bdsm_SdClose (vlc_object_t *p_this)
{
    services_discovery_t *sd = (services_discovery_t *)p_this;
    services_discovery_sys_t *p_sys = sd->p_sys;

    if( p_sys == ((void*)0) )
        return;

    if( p_sys->p_ns )
    {
        netbios_ns_discover_stop( p_sys->p_ns );
        netbios_ns_destroy( p_sys->p_ns );
    }

    for( size_t i = 0; i < vlc_array_count( &p_sys->entry_item_list ); i++ )
    {
        struct entry_item *p_entry_item;

        p_entry_item = vlc_array_item_at_index( &p_sys->entry_item_list, i );
        input_item_Release( p_entry_item->p_item );
        free( p_entry_item );
    }
    vlc_array_clear( &p_sys->entry_item_list );

    free( p_sys );
}
