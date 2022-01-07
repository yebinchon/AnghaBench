
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {TYPE_3__** data; } ;
struct TYPE_12__ {int current; scalar_t__ order; int has_next; int has_prev; int randomizer; TYPE_1__ items; } ;
typedef TYPE_2__ vlc_playlist_t ;
struct TYPE_13__ {int * media; } ;
typedef TYPE_3__ vlc_playlist_item_t ;
typedef int vlc_player_t ;
struct vlc_playlist_state {int dummy; } ;
typedef int ssize_t ;
typedef int input_item_t ;


 scalar_t__ VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM ;
 int VLC_UNUSED (int *) ;
 int randomizer_Select (int *,TYPE_3__*) ;
 int vlc_playlist_AssertLocked (TYPE_2__*) ;
 int vlc_playlist_ComputeHasNext (TYPE_2__*) ;
 int vlc_playlist_ComputeHasPrev (TYPE_2__*) ;
 int vlc_playlist_IndexOfMedia (TYPE_2__*,int *) ;
 int vlc_playlist_state_NotifyChanges (TYPE_2__*,struct vlc_playlist_state*) ;
 int vlc_playlist_state_Save (TYPE_2__*,struct vlc_playlist_state*) ;

__attribute__((used)) static void
player_on_current_media_changed(vlc_player_t *player, input_item_t *new_media,
                                void *userdata)
{
    VLC_UNUSED(player);
    vlc_playlist_t *playlist = userdata;


    vlc_playlist_AssertLocked(playlist);

    input_item_t *media = playlist->current != -1
                        ? playlist->items.data[playlist->current]->media
                        : ((void*)0);
    if (new_media == media)

        return;

    ssize_t index;
    if (new_media)
    {
        index = vlc_playlist_IndexOfMedia(playlist, new_media);
        if (index != -1)
        {
            vlc_playlist_item_t *item = playlist->items.data[index];
            if (playlist->order == VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM)
                randomizer_Select(&playlist->randomizer, item);
        }
    }
    else
        index = -1;

    struct vlc_playlist_state state;
    vlc_playlist_state_Save(playlist, &state);

    playlist->current = index;
    playlist->has_prev = vlc_playlist_ComputeHasPrev(playlist);
    playlist->has_next = vlc_playlist_ComputeHasNext(playlist);

    vlc_playlist_state_NotifyChanges(playlist, &state);
}
