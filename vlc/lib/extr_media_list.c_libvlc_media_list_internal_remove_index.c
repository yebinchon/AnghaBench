
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int libvlc_media_t ;
struct TYPE_4__ {int items; } ;
typedef TYPE_1__ libvlc_media_list_t ;


 int EventDidHappen ;
 int EventWillHappen ;
 int libvlc_media_release (int *) ;
 int libvlc_printerr (char*) ;
 int notify_item_deletion (TYPE_1__*,int *,int,int ) ;
 size_t vlc_array_count (int *) ;
 int * vlc_array_item_at_index (int *,int) ;
 int vlc_array_remove (int *,int) ;

int libvlc_media_list_internal_remove_index( libvlc_media_list_t * p_mlist,
                                             int index )
{
    libvlc_media_t * p_md;

    if( (size_t) index >= vlc_array_count( &p_mlist->items ))
    {
        libvlc_printerr( "Index out of bounds" );
        return -1;
    }

    p_md = vlc_array_item_at_index( &p_mlist->items, index );

    notify_item_deletion( p_mlist, p_md, index, EventWillHappen );
    vlc_array_remove( &p_mlist->items, index );
    notify_item_deletion( p_mlist, p_md, index, EventDidHappen );

    libvlc_media_release( p_md );
    return 0;
}
