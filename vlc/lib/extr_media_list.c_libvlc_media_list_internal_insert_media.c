
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
 int libvlc_media_retain (int *) ;
 int notify_item_addition (TYPE_1__*,int *,int,int ) ;
 int vlc_array_insert_or_abort (int *,int *,int) ;

void libvlc_media_list_internal_insert_media( libvlc_media_list_t * p_mlist,
                                              libvlc_media_t * p_md,
                                              int index )
{
    libvlc_media_retain( p_md );

    notify_item_addition( p_mlist, p_md, index, EventWillHappen );
    vlc_array_insert_or_abort( &p_mlist->items, p_md, index );
    notify_item_addition( p_mlist, p_md, index, EventDidHappen );
}
