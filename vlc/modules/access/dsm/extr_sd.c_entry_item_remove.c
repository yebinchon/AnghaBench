
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct entry_item {int p_item; int * p_entry; } ;
struct TYPE_5__ {TYPE_2__* p_sys; } ;
typedef TYPE_1__ services_discovery_t ;
struct TYPE_6__ {int entry_item_list; } ;
typedef TYPE_2__ services_discovery_sys_t ;
typedef int netbios_ns_entry ;


 int free (struct entry_item*) ;
 int input_item_Release (int ) ;
 int services_discovery_RemoveItem (TYPE_1__*,int ) ;
 size_t vlc_array_count (int *) ;
 struct entry_item* vlc_array_item_at_index (int *,size_t) ;
 int vlc_array_remove (int *,size_t) ;

__attribute__((used)) static void entry_item_remove( services_discovery_t *p_sd,
                               netbios_ns_entry *p_entry )
{
    services_discovery_sys_t *p_sys = p_sd->p_sys;

    for( size_t i = 0; i < vlc_array_count( &p_sys->entry_item_list ); i++ )
    {
        struct entry_item *p_entry_item;

        p_entry_item = vlc_array_item_at_index( &p_sys->entry_item_list, i );
        if( p_entry_item->p_entry == p_entry )
        {
            services_discovery_RemoveItem( p_sd, p_entry_item->p_item );
            input_item_Release( p_entry_item->p_item );
            vlc_array_remove( &p_sys->entry_item_list, i );
            free( p_entry_item );
            break;
        }
    }
}
