
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {size_t size; } ;
struct TYPE_10__ {int current; int has_next; int has_prev; TYPE_1__ items; } ;
typedef TYPE_2__ vlc_playlist_t ;
struct vlc_playlist_state {int dummy; } ;


 int on_items_removed ;
 int vlc_playlist_ComputeHasNext (TYPE_2__*) ;
 int vlc_playlist_ComputeHasPrev (TYPE_2__*) ;
 int vlc_playlist_Notify (TYPE_2__*,int ,size_t,size_t) ;
 int vlc_playlist_state_NotifyChanges (TYPE_2__*,struct vlc_playlist_state*) ;
 int vlc_playlist_state_Save (TYPE_2__*,struct vlc_playlist_state*) ;

__attribute__((used)) static bool
vlc_playlist_ItemsRemoved(vlc_playlist_t *playlist, size_t index, size_t count)
{
    struct vlc_playlist_state state;
    vlc_playlist_state_Save(playlist, &state);

    bool current_media_changed = 0;
    if (playlist->current != -1) {
        size_t current = (size_t) playlist->current;
        if (current >= index && current < index + count) {

            if (index + count < playlist->items.size) {

                playlist->current = index;
            } else {

                playlist->current = -1;
            }
            current_media_changed = 1;
        } else if (current >= index + count) {
            playlist->current -= count;
        }
    }
    playlist->has_prev = vlc_playlist_ComputeHasPrev(playlist);
    playlist->has_next = vlc_playlist_ComputeHasNext(playlist);

    vlc_playlist_Notify(playlist, on_items_removed, index, count);
    vlc_playlist_state_NotifyChanges(playlist, &state);

    return current_media_changed;
}
