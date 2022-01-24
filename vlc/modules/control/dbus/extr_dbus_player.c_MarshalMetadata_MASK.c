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
typedef  int /*<<< orphan*/  vlc_playlist_item_t ;
typedef  int ssize_t ;
struct TYPE_5__ {TYPE_1__* p_sys; } ;
typedef  TYPE_2__ intf_thread_t ;
struct TYPE_4__ {int /*<<< orphan*/ * playlist; } ;
typedef  int /*<<< orphan*/  DBusMessageIter ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_TYPE_ARRAY ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7( intf_thread_t *p_intf, DBusMessageIter *container )
{
    int result = VLC_SUCCESS;
    vlc_playlist_t *playlist = p_intf->p_sys->playlist;
    FUNC5(playlist);
    ssize_t id = FUNC4(playlist);
    if(id != -1)
    {
        vlc_playlist_item_t *plitem = FUNC3(playlist, id);
        result = FUNC0(playlist, plitem, container);
    }
    else
    {   // avoid breaking the type marshalling
        DBusMessageIter a;
        if( !FUNC2( container, DBUS_TYPE_ARRAY,
                                               "{sv}", &a ) ||
            !FUNC1( container, &a ) )
            result = VLC_ENOMEM;
    }
    FUNC6(playlist);
    return result;
}