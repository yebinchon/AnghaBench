
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {int dummy; } ;
struct discovery_sys {int items; } ;


 int items_release (struct discovery_sys*,struct item*) ;
 int vlc_array_clear (int *) ;
 size_t vlc_array_count (int *) ;
 struct item* vlc_array_item_at_index (int *,size_t) ;

__attribute__((used)) static void
items_clear( struct discovery_sys *p_sys )
{
    for( size_t i = 0; i < vlc_array_count( &p_sys->items ); ++i )
    {
        struct item *p_item = vlc_array_item_at_index( &p_sys->items, i );
        items_release( p_sys, p_item );
    }
    vlc_array_clear( &p_sys->items );
}
