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
typedef  int /*<<< orphan*/  DBusWatch ;

/* Variables and functions */
 unsigned int DBUS_WATCH_READABLE ; 
 unsigned int DBUS_WATCH_WRITABLE ; 
 short POLLIN ; 
 short POLLOUT ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static short
FUNC1( DBusWatch *p_watch )
{
    unsigned int i_flags = FUNC0( p_watch );
    short i_events = 0;

    if( i_flags & DBUS_WATCH_READABLE )
        i_events |= POLLIN;
    if( i_flags & DBUS_WATCH_WRITABLE )
        i_events |= POLLOUT;
    return i_events;
}