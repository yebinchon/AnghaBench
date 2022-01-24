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
 int /*<<< orphan*/  DBUS_TYPE_DOUBLE ; 
 double INPUT_RATE_MIN ; 
 int VLC_ENOMEM ; 
 int VLC_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double*) ; 

__attribute__((used)) static int
FUNC2( intf_thread_t *p_intf, DBusMessageIter *container )
{
    FUNC0( p_intf );
    double d_min_rate = INPUT_RATE_MIN;

    if( !FUNC1( container, DBUS_TYPE_DOUBLE, &d_min_rate ) )
        return VLC_ENOMEM;

    return VLC_SUCCESS;
}