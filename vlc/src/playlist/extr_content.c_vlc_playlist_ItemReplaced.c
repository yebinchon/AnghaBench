
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {TYPE_6__** data; } ;
struct TYPE_12__ {TYPE_1__ items; int has_next; int has_prev; } ;
typedef TYPE_2__ vlc_playlist_t ;
struct vlc_playlist_state {int dummy; } ;
struct TYPE_13__ {int media; } ;


 int on_items_updated ;
 int vlc_playlist_AutoPreparse (TYPE_2__*,int ) ;
 int vlc_playlist_ComputeHasNext (TYPE_2__*) ;
 int vlc_playlist_ComputeHasPrev (TYPE_2__*) ;
 int vlc_playlist_Notify (TYPE_2__*,int ,size_t,TYPE_6__**,int) ;
 int vlc_playlist_state_NotifyChanges (TYPE_2__*,struct vlc_playlist_state*) ;
 int vlc_playlist_state_Save (TYPE_2__*,struct vlc_playlist_state*) ;

__attribute__((used)) static void
vlc_playlist_ItemReplaced(vlc_playlist_t *playlist, size_t index)
{
    struct vlc_playlist_state state;
    vlc_playlist_state_Save(playlist, &state);

    playlist->has_prev = vlc_playlist_ComputeHasPrev(playlist);
    playlist->has_next = vlc_playlist_ComputeHasNext(playlist);

    vlc_playlist_Notify(playlist, on_items_updated, index,
                        &playlist->items.data[index], 1);
    vlc_playlist_state_NotifyChanges(playlist, &state);

    vlc_playlist_AutoPreparse(playlist, playlist->items.data[index]->media);
}
