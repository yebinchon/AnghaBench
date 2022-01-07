
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int items; } ;
typedef TYPE_1__ libvlc_media_list_t ;


 int vlc_array_count (int *) ;

int libvlc_media_list_count( libvlc_media_list_t * p_mlist )
{
    return vlc_array_count( &p_mlist->items );
}
