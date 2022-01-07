
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ current; scalar_t__ has_prev; scalar_t__ has_next; } ;
typedef TYPE_1__ vlc_playlist_t ;
struct vlc_playlist_state {scalar_t__ current; scalar_t__ has_prev; scalar_t__ has_next; } ;


 int on_current_index_changed ;
 int on_has_next_changed ;
 int on_has_prev_changed ;
 int vlc_playlist_Notify (TYPE_1__*,int ,scalar_t__) ;

void
vlc_playlist_state_NotifyChanges(vlc_playlist_t *playlist,
                                 struct vlc_playlist_state *saved_state)
{
    if (saved_state->current != playlist->current)
        vlc_playlist_Notify(playlist, on_current_index_changed, playlist->current);
    if (saved_state->has_prev != playlist->has_prev)
        vlc_playlist_Notify(playlist, on_has_prev_changed, playlist->has_prev);
    if (saved_state->has_next != playlist->has_next)
        vlc_playlist_Notify(playlist, on_has_next_changed, playlist->has_next);
}
