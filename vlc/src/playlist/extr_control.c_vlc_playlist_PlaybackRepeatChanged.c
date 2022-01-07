
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ order; int repeat; int player; int has_next; int has_prev; int randomizer; } ;
typedef TYPE_1__ vlc_playlist_t ;
struct vlc_playlist_state {int dummy; } ;


 char* N_ (char*) ;
 scalar_t__ VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM ;



 int VLC_UNUSED (char const*) ;
 int _ (char*) ;
 int on_playback_repeat_changed ;
 int randomizer_SetLoop (int *,int) ;
 int vlc_gettext (char const*) ;
 int vlc_player_osd_Message (int ,int ,int ) ;
 int vlc_playlist_ComputeHasNext (TYPE_1__*) ;
 int vlc_playlist_ComputeHasPrev (TYPE_1__*) ;
 int vlc_playlist_Notify (TYPE_1__*,int ,int) ;
 int vlc_playlist_state_NotifyChanges (TYPE_1__*,struct vlc_playlist_state*) ;
 int vlc_playlist_state_Save (TYPE_1__*,struct vlc_playlist_state*) ;

__attribute__((used)) static void
vlc_playlist_PlaybackRepeatChanged(vlc_playlist_t *playlist)
{
    if (playlist->order == VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM)
    {
        bool loop = playlist->repeat == 130;
        randomizer_SetLoop(&playlist->randomizer, loop);
    }

    struct vlc_playlist_state state;
    vlc_playlist_state_Save(playlist, &state);

    playlist->has_prev = vlc_playlist_ComputeHasPrev(playlist);
    playlist->has_next = vlc_playlist_ComputeHasNext(playlist);

    vlc_playlist_Notify(playlist, on_playback_repeat_changed, playlist->repeat);
    vlc_playlist_state_NotifyChanges(playlist, &state);

    char const *state_text = ((void*)0);
    switch (playlist->repeat)
    {
        case 128:
            state_text = N_("Off");
            break;
        case 130:
            state_text = N_("All");
            break;
        case 129:
            state_text = N_("One");
            break;
    }
    vlc_player_osd_Message(playlist->player,
                           _("Loop: %s"), vlc_gettext(state_text));

    VLC_UNUSED(state_text);
}
