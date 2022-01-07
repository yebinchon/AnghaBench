
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int libvlc_media_t ;
struct TYPE_3__ {int items; } ;
typedef TYPE_1__ libvlc_media_list_t ;


 int libvlc_media_retain (int *) ;
 int libvlc_printerr (char*) ;
 size_t vlc_array_count (int *) ;
 int * vlc_array_item_at_index (int *,int) ;

libvlc_media_t *
libvlc_media_list_item_at_index( libvlc_media_list_t * p_mlist,
                                 int index )
{
    libvlc_media_t * p_md;

    if( (size_t) index >= vlc_array_count( &p_mlist->items ))
    {
        libvlc_printerr( "Index out of bounds" );
        return ((void*)0);
    }

    p_md = vlc_array_item_at_index( &p_mlist->items, index );
    libvlc_media_retain( p_md );
    return p_md;
}
