#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {short events; } ;
struct vlc_dbus_watch_data {TYPE_1__ pollfd; } ;
typedef  int /*<<< orphan*/  DBusWatch ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct vlc_dbus_watch_data* FUNC1 (int /*<<< orphan*/ *,void*) ; 
 short FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3( DBusWatch *p_watch, void *p_data )
{
    struct vlc_dbus_watch_data *p_ctx = FUNC1( p_watch, p_data );
    short i_events = FUNC2( p_watch );

    if( FUNC0( p_watch ) )
        p_ctx->pollfd.events |= i_events;
    else
        p_ctx->pollfd.events &= ~i_events;
}