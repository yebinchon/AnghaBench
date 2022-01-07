
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int current; int has_next; int has_prev; } ;
typedef TYPE_1__ vlc_playlist_t ;
struct vlc_playlist_state {int dummy; } ;


 int on_items_moved ;
 int vlc_playlist_ComputeHasNext (TYPE_1__*) ;
 int vlc_playlist_ComputeHasPrev (TYPE_1__*) ;
 int vlc_playlist_Notify (TYPE_1__*,int ,size_t,size_t,size_t) ;
 int vlc_playlist_state_NotifyChanges (TYPE_1__*,struct vlc_playlist_state*) ;
 int vlc_playlist_state_Save (TYPE_1__*,struct vlc_playlist_state*) ;

__attribute__((used)) static void
vlc_playlist_ItemsMoved(vlc_playlist_t *playlist, size_t index, size_t count,
                        size_t target)
{
    struct vlc_playlist_state state;
    vlc_playlist_state_Save(playlist, &state);

    if (playlist->current != -1) {
        size_t current = (size_t) playlist->current;
        if (index < target)
        {
            if (current >= index && current < index + count)

                playlist->current += target - index;
            else if (current >= index + count && current < target + count)

                playlist->current -= count;

        }
        else
        {
            if (current >= index && current < index + count)

                playlist->current -= index - target;
            else if (current >= target && current < index)

                playlist->current += count;

        }
    }

    playlist->has_prev = vlc_playlist_ComputeHasPrev(playlist);
    playlist->has_next = vlc_playlist_ComputeHasNext(playlist);

    vlc_playlist_Notify(playlist, on_items_moved, index, count, target);
    vlc_playlist_state_NotifyChanges(playlist, &state);
}
