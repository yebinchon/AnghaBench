
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int libvlc_media_t ;
struct TYPE_3__ {int items; } ;
typedef TYPE_1__ libvlc_media_list_t ;


 int libvlc_printerr (char*) ;
 int vlc_array_index_of_item (int *,int *) ;

int libvlc_media_list_index_of_item( libvlc_media_list_t * p_mlist,
                                     libvlc_media_t * p_searched_md )
{
    int idx = vlc_array_index_of_item( &p_mlist->items, p_searched_md );
    if( idx == -1 )
        libvlc_printerr( "Media not found" );

    return idx;
}
