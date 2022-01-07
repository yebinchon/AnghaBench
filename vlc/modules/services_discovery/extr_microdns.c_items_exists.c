
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {int i_last_seen; int psz_uri; } ;
struct discovery_sys {int items; } ;


 scalar_t__ strcmp (int ,char const*) ;
 size_t vlc_array_count (int *) ;
 struct item* vlc_array_item_at_index (int *,size_t) ;
 int vlc_tick_now () ;

__attribute__((used)) static bool
items_exists( struct discovery_sys *p_sys, const char *psz_uri )
{
    for( size_t i = 0; i < vlc_array_count( &p_sys->items ); ++i )
    {
        struct item *p_item = vlc_array_item_at_index( &p_sys->items, i );
        if( strcmp( p_item->psz_uri, psz_uri ) == 0 )
        {
            p_item->i_last_seen = vlc_tick_now();
            return 1;
        }
    }
    return 0;
}
