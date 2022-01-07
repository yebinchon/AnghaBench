
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
 int notify_item_addition (TYPE_1__*,int *,scalar_t__,int ) ;
 int vlc_array_append_or_abort (int *,int *) ;
 scalar_t__ vlc_array_count (int *) ;

void libvlc_media_list_internal_add_media( libvlc_media_list_t * p_mlist,
                                           libvlc_media_t * p_md )
{
    libvlc_media_retain( p_md );

    notify_item_addition( p_mlist, p_md, vlc_array_count( &p_mlist->items ),
                          EventWillHappen );
    vlc_array_append_or_abort( &p_mlist->items, p_md );
    notify_item_addition( p_mlist, p_md, vlc_array_count( &p_mlist->items )-1,
                          EventDidHappen );
}
