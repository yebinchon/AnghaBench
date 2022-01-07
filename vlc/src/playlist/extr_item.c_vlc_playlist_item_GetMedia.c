
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * media; } ;
typedef TYPE_1__ vlc_playlist_item_t ;
typedef int input_item_t ;



input_item_t *
vlc_playlist_item_GetMedia(vlc_playlist_item_t *item)
{
    return item->media;
}
