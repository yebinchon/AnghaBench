#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_playlist_t ;
struct TYPE_5__ {TYPE_1__* p_sys; } ;
typedef  TYPE_2__ intf_thread_t ;
typedef  enum vlc_playlist_playback_repeat { ____Placeholder_vlc_playlist_playback_repeat } vlc_playlist_playback_repeat ;
struct TYPE_4__ {int /*<<< orphan*/ * playlist; } ;
typedef  int /*<<< orphan*/  DBusMessageIter ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_TYPE_STRING ; 
 char* LOOP_STATUS_NONE ; 
 char* LOOP_STATUS_PLAYLIST ; 
 char* LOOP_STATUS_TRACK ; 
 int VLC_ENOMEM ; 
#define  VLC_PLAYLIST_PLAYBACK_REPEAT_ALL 130 
#define  VLC_PLAYLIST_PLAYBACK_REPEAT_CURRENT 129 
#define  VLC_PLAYLIST_PLAYBACK_REPEAT_NONE 128 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5( intf_thread_t *p_intf, DBusMessageIter *container )
{
    vlc_playlist_t *playlist = p_intf->p_sys->playlist;
    FUNC3(playlist);
    enum vlc_playlist_playback_repeat repeat_mode =
        FUNC2(playlist);
    FUNC4(playlist);

    const char *psz_loop_status;
    switch (repeat_mode)
    {
        case VLC_PLAYLIST_PLAYBACK_REPEAT_ALL:
            psz_loop_status = LOOP_STATUS_PLAYLIST;
            break;
        case VLC_PLAYLIST_PLAYBACK_REPEAT_CURRENT:
            psz_loop_status = LOOP_STATUS_TRACK;
            break;
        case VLC_PLAYLIST_PLAYBACK_REPEAT_NONE:
            psz_loop_status = LOOP_STATUS_NONE;
            break;
        default:
            FUNC1();
    }

    if( !FUNC0( container, DBUS_TYPE_STRING,
                                         &psz_loop_status ) )
        return VLC_ENOMEM;

    return VLC_SUCCESS;
}