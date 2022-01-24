#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_playlist_t ;
typedef  int /*<<< orphan*/  vlc_player_t ;
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  enum vlc_playlist_playback_repeat { ____Placeholder_vlc_playlist_playback_repeat } vlc_playlist_playback_repeat ;
typedef  enum vlc_playlist_playback_order { ____Placeholder_vlc_playlist_playback_order } vlc_playlist_playback_order ;
typedef  enum vlc_player_media_stopped_action { ____Placeholder_vlc_player_media_stopped_action } vlc_player_media_stopped_action ;

/* Variables and functions */
 int VLC_PLAYER_MEDIA_STOPPED_CONTINUE ; 
 int VLC_PLAYER_MEDIA_STOPPED_EXIT ; 
 int VLC_PLAYER_MEDIA_STOPPED_PAUSE ; 
 int VLC_PLAYER_MEDIA_STOPPED_STOP ; 
 int VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL ; 
 int VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM ; 
 int VLC_PLAYLIST_PLAYBACK_REPEAT_ALL ; 
 int VLC_PLAYLIST_PLAYBACK_REPEAT_CURRENT ; 
 int VLC_PLAYLIST_PLAYBACK_REPEAT_NONE ; 
 int FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC9(vlc_playlist_t *playlist, vlc_object_t *obj)
{
    enum vlc_playlist_playback_order order;
    if (FUNC0(obj, "random"))
        order = VLC_PLAYLIST_PLAYBACK_ORDER_RANDOM;
    else
        order = VLC_PLAYLIST_PLAYBACK_ORDER_NORMAL;

    /* repeat = repeat current; loop = repeat all */
    enum vlc_playlist_playback_repeat repeat;
    if (FUNC0(obj, "repeat"))
        repeat = VLC_PLAYLIST_PLAYBACK_REPEAT_CURRENT;
    else if (FUNC0(obj, "loop"))
        repeat = VLC_PLAYLIST_PLAYBACK_REPEAT_ALL;
    else
        repeat = VLC_PLAYLIST_PLAYBACK_REPEAT_NONE;

    enum vlc_player_media_stopped_action media_stopped_action;
    if (FUNC0(obj, "play-and-exit"))
        media_stopped_action = VLC_PLAYER_MEDIA_STOPPED_EXIT;
    else if (FUNC0(obj, "play-and-stop"))
        media_stopped_action = VLC_PLAYER_MEDIA_STOPPED_STOP;
    else if (FUNC0(obj, "play-and-pause"))
        media_stopped_action = VLC_PLAYER_MEDIA_STOPPED_PAUSE;
    else
        media_stopped_action = VLC_PLAYER_MEDIA_STOPPED_CONTINUE;

    bool start_paused = FUNC0(obj, "start-paused");
    bool playlist_cork = FUNC0(obj, "playlist-cork");

    FUNC5(playlist);
    FUNC6(playlist, order);
    FUNC7(playlist, repeat);

    vlc_player_t *player = FUNC4(playlist);

    /* the playlist and the player share the same lock, and this is not an
     * implementation detail */
    FUNC1(player, media_stopped_action);
    FUNC3(player, start_paused);
    FUNC2(player, playlist_cork);

    FUNC8(playlist);
}