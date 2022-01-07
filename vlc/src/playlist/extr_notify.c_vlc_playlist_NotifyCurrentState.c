
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int size; int data; } ;
struct TYPE_6__ {int has_next; int has_prev; int current; int order; int repeat; TYPE_1__ items; } ;
typedef TYPE_2__ vlc_playlist_t ;
typedef int vlc_playlist_listener_id ;


 int on_current_index_changed ;
 int on_has_next_changed ;
 int on_has_prev_changed ;
 int on_items_reset ;
 int on_playback_order_changed ;
 int on_playback_repeat_changed ;
 int vlc_playlist_NotifyListener (TYPE_2__*,int *,int ,int ,...) ;

__attribute__((used)) static void
vlc_playlist_NotifyCurrentState(vlc_playlist_t *playlist,
                                vlc_playlist_listener_id *listener)
{
    vlc_playlist_NotifyListener(playlist, listener, on_items_reset,
                                playlist->items.data, playlist->items.size);
    vlc_playlist_NotifyListener(playlist, listener, on_playback_repeat_changed,
                                playlist->repeat);
    vlc_playlist_NotifyListener(playlist, listener, on_playback_order_changed,
                                playlist->order);
    vlc_playlist_NotifyListener(playlist, listener, on_current_index_changed,
                                playlist->current);
    vlc_playlist_NotifyListener(playlist, listener, on_has_prev_changed,
                                playlist->has_prev);
    vlc_playlist_NotifyListener(playlist, listener, on_has_next_changed,
                                playlist->has_next);
}
