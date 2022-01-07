
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int ** data; } ;
struct TYPE_10__ {scalar_t__ order; int player; TYPE_1__ items; int randomizer; } ;
typedef TYPE_2__ vlc_playlist_t ;
typedef int vlc_playlist_item_t ;
typedef int ssize_t ;


 int VLC_EGENERIC ;
 scalar_t__ VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM ;
 int VLC_SUCCESS ;
 int VLC_UNUSED (int *) ;
 int _ (char*) ;
 int assert (int) ;
 int * randomizer_Prev (int *) ;
 int vlc_player_osd_Message (int ,int ) ;
 int vlc_playlist_AssertLocked (TYPE_2__*) ;
 int vlc_playlist_ComputeHasPrev (TYPE_2__*) ;
 int vlc_playlist_GetPrevIndex (TYPE_2__*) ;
 int vlc_playlist_SetCurrentIndex (TYPE_2__*,int) ;
 int vlc_playlist_SetCurrentMedia (TYPE_2__*,int) ;

int
vlc_playlist_Prev(vlc_playlist_t *playlist)
{
    vlc_playlist_AssertLocked(playlist);

    if (!vlc_playlist_ComputeHasPrev(playlist))
        return VLC_EGENERIC;

    ssize_t index = vlc_playlist_GetPrevIndex(playlist);
    assert(index != -1);

    int ret = vlc_playlist_SetCurrentMedia(playlist, index);
    if (ret != VLC_SUCCESS)
        return ret;

    if (playlist->order == VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM)
    {

        vlc_playlist_item_t *selected = randomizer_Prev(&playlist->randomizer);
        assert(selected == playlist->items.data[index]);
        VLC_UNUSED(selected);
    }

    vlc_playlist_SetCurrentIndex(playlist, index);
    vlc_player_osd_Message(playlist->player, _("Previous"));
    return VLC_SUCCESS;
}
