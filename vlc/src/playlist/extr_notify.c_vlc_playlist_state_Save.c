
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int has_next; int has_prev; int current; } ;
typedef TYPE_1__ vlc_playlist_t ;
struct vlc_playlist_state {int has_next; int has_prev; int current; } ;



void
vlc_playlist_state_Save(vlc_playlist_t *playlist,
                        struct vlc_playlist_state *state)
{
    state->current = playlist->current;
    state->has_prev = playlist->has_prev;
    state->has_next = playlist->has_next;
}
