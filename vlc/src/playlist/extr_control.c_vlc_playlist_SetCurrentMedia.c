
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__** data; } ;
struct TYPE_8__ {int player; TYPE_2__ items; } ;
typedef TYPE_3__ vlc_playlist_t ;
typedef int ssize_t ;
typedef int input_item_t ;
struct TYPE_6__ {int * media; } ;


 int vlc_player_SetCurrentMedia (int ,int *) ;
 int vlc_playlist_AssertLocked (TYPE_3__*) ;

int
vlc_playlist_SetCurrentMedia(vlc_playlist_t *playlist, ssize_t index)
{
    vlc_playlist_AssertLocked(playlist);

    input_item_t *media = index != -1
                        ? playlist->items.data[index]->media
                        : ((void*)0);
    return vlc_player_SetCurrentMedia(playlist->player, media);
}
