
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vlc_tick_t ;
typedef int vlc_renderer_discovery_t ;
struct item {scalar_t__ i_last_seen; int p_renderer_item; int p_input_item; } ;
struct discovery_sys {int items; } ;
typedef int services_discovery_t ;


 scalar_t__ TIMEOUT ;
 int assert (int) ;
 int items_release (struct discovery_sys*,struct item*) ;
 int services_discovery_RemoveItem (int *,int ) ;
 size_t vlc_array_count (int *) ;
 struct item* vlc_array_item_at_index (int *,size_t) ;
 int vlc_array_remove (int *,int ) ;
 int vlc_rd_remove_item (int *,int ) ;
 scalar_t__ vlc_tick_now () ;

__attribute__((used)) static void
items_timeout( struct discovery_sys *p_sys, services_discovery_t *p_sd,
               vlc_renderer_discovery_t *p_rd )
{
    assert( p_rd != ((void*)0) || p_sd != ((void*)0) );
    vlc_tick_t i_now = vlc_tick_now();


    for( size_t i = 0; i < vlc_array_count( &p_sys->items ); ++i )
    {
        struct item *p_item = vlc_array_item_at_index( &p_sys->items, i );
        if( i_now - p_item->i_last_seen > TIMEOUT )
        {
            if( p_sd != ((void*)0) )
                services_discovery_RemoveItem( p_sd, p_item->p_input_item );
            else
                vlc_rd_remove_item( p_rd, p_item->p_renderer_item );
            items_release( p_sys, p_item );
            vlc_array_remove( &p_sys->items, i-- );
        }
    }
}
