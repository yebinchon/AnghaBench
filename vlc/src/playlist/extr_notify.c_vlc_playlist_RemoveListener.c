
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_playlist_t ;
struct TYPE_4__ {int node; } ;
typedef TYPE_1__ vlc_playlist_listener_id ;


 int VLC_UNUSED (int *) ;
 int free (TYPE_1__*) ;
 int vlc_list_remove (int *) ;
 int vlc_playlist_AssertLocked (int *) ;

void
vlc_playlist_RemoveListener(vlc_playlist_t *playlist,
                            vlc_playlist_listener_id *listener)
{


    vlc_playlist_AssertLocked(playlist); VLC_UNUSED(playlist);

    vlc_list_remove(&listener->node);
    free(listener);
}
