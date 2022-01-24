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
struct TYPE_4__ {int /*<<< orphan*/ * playlist; } ;
typedef  int /*<<< orphan*/  DBusMessageIter ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_TYPE_ARRAY ; 
 int /*<<< orphan*/  DBUS_TYPE_OBJECT_PATH ; 
 int /*<<< orphan*/  MPRIS_TRACKID_FORMAT ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int FUNC0 (char**,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9( intf_thread_t *p_intf, DBusMessageIter *container )
{
    DBusMessageIter tracks;
    char *psz_track_id = NULL;
    vlc_playlist_t *playlist = p_intf->p_sys->playlist;

    FUNC4( container, DBUS_TYPE_ARRAY, "o",
                                      &tracks );

    FUNC7(playlist);
    size_t pl_size = FUNC6(playlist);
    FUNC8(playlist);
    for (size_t i = 0; i < pl_size; i++)
    {
        if (FUNC0(&psz_track_id, MPRIS_TRACKID_FORMAT, i) == -1 ||
            !FUNC2( &tracks,
                                             DBUS_TYPE_OBJECT_PATH,
                                             &psz_track_id ) )
        {
            FUNC1( container, &tracks );
            return VLC_ENOMEM;
        }

        FUNC5( psz_track_id );
    }

    if( !FUNC3( container, &tracks ) )
        return VLC_ENOMEM;

    return VLC_SUCCESS;
}