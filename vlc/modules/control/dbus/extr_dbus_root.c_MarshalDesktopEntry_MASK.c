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
typedef  int /*<<< orphan*/  intf_thread_t ;
typedef  int /*<<< orphan*/  DBusMessageIter ;

/* Variables and functions */
 int /*<<< orphan*/  DBUS_TYPE_STRING ; 
 char* PACKAGE ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const**) ; 

__attribute__((used)) static int
FUNC2( intf_thread_t *p_intf, DBusMessageIter *container )
{
    FUNC0( p_intf );
    const char* psz_ret = PACKAGE;

    if (!FUNC1( container, DBUS_TYPE_STRING, &psz_ret ))
        return VLC_ENOMEM;

    return VLC_SUCCESS;
}