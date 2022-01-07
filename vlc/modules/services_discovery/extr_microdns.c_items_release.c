
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct item {struct item* psz_uri; int * p_renderer_item; int * p_input_item; } ;
struct discovery_sys {int dummy; } ;


 int assert (int ) ;
 int free (struct item*) ;
 int input_item_Release (int *) ;
 int vlc_renderer_item_release (int *) ;

__attribute__((used)) static void
items_release( struct discovery_sys *p_sys, struct item *p_item )
{
    (void) p_sys;
    if( p_item->p_input_item != ((void*)0) )
    {
        input_item_Release( p_item->p_input_item );
    }
    else
    {
        assert( p_item->p_renderer_item != ((void*)0) );
        vlc_renderer_item_release( p_item->p_renderer_item );
    }

    free( p_item->psz_uri );
    free( p_item );
}
