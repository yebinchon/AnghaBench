
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int size; int data; } ;
struct TYPE_10__ {int order; scalar_t__ repeat; int player; int has_next; int has_prev; int randomizer; TYPE_1__ items; } ;
typedef TYPE_2__ vlc_playlist_t ;
struct vlc_playlist_state {int dummy; } ;


 char* N_ (char*) ;


 scalar_t__ VLC_PLAYLIST_PLAYBACK_REPEAT_ALL ;
 int VLC_UNUSED (char const*) ;
 int _ (char*) ;
 int assert (int) ;
 int on_playback_order_changed ;
 int randomizer_Add (int *,int ,int ) ;
 int randomizer_Clear (int *) ;
 scalar_t__ randomizer_Count (int *) ;
 int randomizer_SetLoop (int *,int) ;
 int vlc_gettext (char const*) ;
 int vlc_player_osd_Message (int ,int ,int ) ;
 int vlc_playlist_ComputeHasNext (TYPE_2__*) ;
 int vlc_playlist_ComputeHasPrev (TYPE_2__*) ;
 int vlc_playlist_Notify (TYPE_2__*,int ,int) ;
 int vlc_playlist_state_NotifyChanges (TYPE_2__*,struct vlc_playlist_state*) ;
 int vlc_playlist_state_Save (TYPE_2__*,struct vlc_playlist_state*) ;

__attribute__((used)) static void
vlc_playlist_PlaybackOrderChanged(vlc_playlist_t *playlist)
{
    if (playlist->order == 128)
    {

        assert(randomizer_Count(&playlist->randomizer) == 0);
        randomizer_Add(&playlist->randomizer, playlist->items.data,
                       playlist->items.size);

        bool loop = playlist->repeat == VLC_PLAYLIST_PLAYBACK_REPEAT_ALL;
        randomizer_SetLoop(&playlist->randomizer, loop);
    }
    else

        randomizer_Clear(&playlist->randomizer);

    struct vlc_playlist_state state;
    vlc_playlist_state_Save(playlist, &state);

    playlist->has_prev = vlc_playlist_ComputeHasPrev(playlist);
    playlist->has_next = vlc_playlist_ComputeHasNext(playlist);

    vlc_playlist_Notify(playlist, on_playback_order_changed, playlist->order);
    vlc_playlist_state_NotifyChanges(playlist, &state);

    char const *state_text = ((void*)0);
    switch (playlist->order)
    {
        case 129:
            state_text = N_("Off");
            break;
        case 128:
            state_text = N_("On");
            break;
    }
    vlc_player_osd_Message(playlist->player,
                           _("Random: %s"), vlc_gettext(state_text));

    VLC_UNUSED(state_text);
}
