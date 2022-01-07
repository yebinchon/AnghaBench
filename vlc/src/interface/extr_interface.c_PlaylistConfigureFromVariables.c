
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_playlist_t ;
typedef int vlc_player_t ;
typedef int vlc_object_t ;
typedef enum vlc_playlist_playback_repeat { ____Placeholder_vlc_playlist_playback_repeat } vlc_playlist_playback_repeat ;
typedef enum vlc_playlist_playback_order { ____Placeholder_vlc_playlist_playback_order } vlc_playlist_playback_order ;
typedef enum vlc_player_media_stopped_action { ____Placeholder_vlc_player_media_stopped_action } vlc_player_media_stopped_action ;


 int VLC_PLAYER_MEDIA_STOPPED_CONTINUE ;
 int VLC_PLAYER_MEDIA_STOPPED_EXIT ;
 int VLC_PLAYER_MEDIA_STOPPED_PAUSE ;
 int VLC_PLAYER_MEDIA_STOPPED_STOP ;
 int VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL ;
 int VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM ;
 int VLC_PLAYLIST_PLAYBACK_REPEAT_ALL ;
 int VLC_PLAYLIST_PLAYBACK_REPEAT_CURRENT ;
 int VLC_PLAYLIST_PLAYBACK_REPEAT_NONE ;
 int var_InheritBool (int *,char*) ;
 int vlc_player_SetMediaStoppedAction (int *,int) ;
 int vlc_player_SetPauseOnCork (int *,int) ;
 int vlc_player_SetStartPaused (int *,int) ;
 int * vlc_playlist_GetPlayer (int *) ;
 int vlc_playlist_Lock (int *) ;
 int vlc_playlist_SetPlaybackOrder (int *,int) ;
 int vlc_playlist_SetPlaybackRepeat (int *,int) ;
 int vlc_playlist_Unlock (int *) ;

__attribute__((used)) static void
PlaylistConfigureFromVariables(vlc_playlist_t *playlist, vlc_object_t *obj)
{
    enum vlc_playlist_playback_order order;
    if (var_InheritBool(obj, "random"))
        order = VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM;
    else
        order = VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL;


    enum vlc_playlist_playback_repeat repeat;
    if (var_InheritBool(obj, "repeat"))
        repeat = VLC_PLAYLIST_PLAYBACK_REPEAT_CURRENT;
    else if (var_InheritBool(obj, "loop"))
        repeat = VLC_PLAYLIST_PLAYBACK_REPEAT_ALL;
    else
        repeat = VLC_PLAYLIST_PLAYBACK_REPEAT_NONE;

    enum vlc_player_media_stopped_action media_stopped_action;
    if (var_InheritBool(obj, "play-and-exit"))
        media_stopped_action = VLC_PLAYER_MEDIA_STOPPED_EXIT;
    else if (var_InheritBool(obj, "play-and-stop"))
        media_stopped_action = VLC_PLAYER_MEDIA_STOPPED_STOP;
    else if (var_InheritBool(obj, "play-and-pause"))
        media_stopped_action = VLC_PLAYER_MEDIA_STOPPED_PAUSE;
    else
        media_stopped_action = VLC_PLAYER_MEDIA_STOPPED_CONTINUE;

    bool start_paused = var_InheritBool(obj, "start-paused");
    bool playlist_cork = var_InheritBool(obj, "playlist-cork");

    vlc_playlist_Lock(playlist);
    vlc_playlist_SetPlaybackOrder(playlist, order);
    vlc_playlist_SetPlaybackRepeat(playlist, repeat);

    vlc_player_t *player = vlc_playlist_GetPlayer(playlist);



    vlc_player_SetMediaStoppedAction(player, media_stopped_action);
    vlc_player_SetStartPaused(player, start_paused);
    vlc_player_SetPauseOnCork(player, playlist_cork);

    vlc_playlist_Unlock(playlist);
}
