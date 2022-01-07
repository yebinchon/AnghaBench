
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__** data; } ;
struct TYPE_9__ {TYPE_2__ items; } ;
typedef TYPE_3__ vlc_playlist_t ;
typedef int ssize_t ;
typedef int input_item_t ;
struct TYPE_7__ {int * media; } ;


 int input_item_Hold (int *) ;
 int vlc_playlist_AssertLocked (TYPE_3__*) ;
 int vlc_playlist_GetNextMediaIndex (TYPE_3__*) ;

input_item_t *
vlc_playlist_GetNextMedia(vlc_playlist_t *playlist)
{

    vlc_playlist_AssertLocked(playlist);

    ssize_t index = vlc_playlist_GetNextMediaIndex(playlist);
    if (index == -1)
        return ((void*)0);

    input_item_t *media = playlist->items.data[index]->media;
    input_item_Hold(media);
    return media;
}
