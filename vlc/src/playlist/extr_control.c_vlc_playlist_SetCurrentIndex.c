
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int has_next; int has_prev; int current; } ;
typedef TYPE_1__ vlc_playlist_t ;
struct vlc_playlist_state {int dummy; } ;
typedef int ssize_t ;


 int vlc_playlist_ComputeHasNext (TYPE_1__*) ;
 int vlc_playlist_ComputeHasPrev (TYPE_1__*) ;
 int vlc_playlist_state_NotifyChanges (TYPE_1__*,struct vlc_playlist_state*) ;
 int vlc_playlist_state_Save (TYPE_1__*,struct vlc_playlist_state*) ;

__attribute__((used)) static void
vlc_playlist_SetCurrentIndex(vlc_playlist_t *playlist, ssize_t index)
{
    struct vlc_playlist_state state;
    vlc_playlist_state_Save(playlist, &state);

    playlist->current = index;
    playlist->has_prev = vlc_playlist_ComputeHasPrev(playlist);
    playlist->has_next = vlc_playlist_ComputeHasNext(playlist);

    vlc_playlist_state_NotifyChanges(playlist, &state);
}
