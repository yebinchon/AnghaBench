
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
struct playlist_state {int has_next; int has_prev; int current; int playlist_size; } ;


 int vlc_playlist_Count (int *) ;
 int vlc_playlist_GetCurrentIndex (int *) ;
 int vlc_playlist_HasNext (int *) ;
 int vlc_playlist_HasPrev (int *) ;

__attribute__((used)) static void
playlist_state_init(struct playlist_state *state, vlc_playlist_t *playlist)
{
    state->playlist_size = vlc_playlist_Count(playlist);
    state->current = vlc_playlist_GetCurrentIndex(playlist);
    state->has_prev = vlc_playlist_HasPrev(playlist);
    state->has_next = vlc_playlist_HasNext(playlist);
}
