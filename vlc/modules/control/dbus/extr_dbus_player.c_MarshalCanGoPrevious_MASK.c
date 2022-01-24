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
typedef  scalar_t__ ssize_t ;
struct TYPE_5__ {TYPE_1__* p_sys; } ;
typedef  TYPE_2__ intf_thread_t ;
typedef  enum vlc_playlist_playback_repeat { ____Placeholder_vlc_playlist_playback_repeat } vlc_playlist_playback_repeat ;
typedef  int dbus_bool_t ;
struct TYPE_4__ {int /*<<< orphan*/ * playlist; } ;
typedef  int /*<<< orphan*/  DBusMessageIter ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_TYPE_BOOLEAN ; 
 int VLC_ENOMEM ; 
 int VLC_PLAYLIST_PLAYBACK_REPEAT_NONE ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6( intf_thread_t *p_intf, DBusMessageIter *container )
{
    vlc_playlist_t *playlist = p_intf->p_sys->playlist;
    FUNC4(playlist);
    size_t count = FUNC1(playlist);
    ssize_t index = FUNC2(playlist);
    enum vlc_playlist_playback_repeat repeat_mode =
        FUNC3(playlist);
    FUNC5(playlist);

    dbus_bool_t b_can_go_previous =
        count != 0 &&
        (index > 0 || repeat_mode != VLC_PLAYLIST_PLAYBACK_REPEAT_NONE);

    if( !FUNC0( container, DBUS_TYPE_BOOLEAN,
                                         &b_can_go_previous ) )
        return VLC_ENOMEM;

    return VLC_SUCCESS;
}