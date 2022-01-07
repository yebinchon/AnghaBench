
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int player; int player_listener; } ;
typedef TYPE_1__ vlc_playlist_t ;
typedef int vlc_object_t ;


 int VLC_PLAYER_LOCK_NORMAL ;
 int player_callbacks ;
 int player_media_provider ;
 scalar_t__ unlikely (int) ;
 int vlc_player_AddListener (int ,int *,TYPE_1__*) ;
 int vlc_player_Delete (int ) ;
 int vlc_player_Lock (int ) ;
 int vlc_player_New (int *,int ,int *,TYPE_1__*) ;
 int vlc_player_Unlock (int ) ;
 int vlc_playlist_AssertLocked (TYPE_1__*) ;

bool
vlc_playlist_PlayerInit(vlc_playlist_t *playlist, vlc_object_t *parent)
{
    playlist->player = vlc_player_New(parent, VLC_PLAYER_LOCK_NORMAL,
                                      &player_media_provider, playlist);
    if (unlikely(!playlist->player))
        return 0;

    vlc_player_Lock(playlist->player);

    vlc_playlist_AssertLocked(playlist);
    playlist->player_listener = vlc_player_AddListener(playlist->player,
                                                       &player_callbacks,
                                                       playlist);
    vlc_player_Unlock(playlist->player);
    if (unlikely(!playlist->player_listener))
    {
        vlc_player_Delete(playlist->player);
        return 0;
    }
    return 1;
}
