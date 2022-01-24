#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_dictionary_t ;
struct TYPE_6__ {TYPE_1__* p_sys; } ;
typedef  TYPE_2__ intf_thread_t ;
struct TYPE_5__ {int /*<<< orphan*/ * p_conn; } ;
typedef  int /*<<< orphan*/  DBusMessageIter ;
typedef  int /*<<< orphan*/  DBusHandlerResult ;
typedef  int /*<<< orphan*/  DBusConnection ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const**) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DBUS_HANDLER_RESULT_NEED_MEMORY ; 
 int /*<<< orphan*/  DBUS_INTERFACE_PROPERTIES ; 
 int /*<<< orphan*/  DBUS_MPRIS_OBJECT_PATH ; 
 char* DBUS_MPRIS_ROOT_INTERFACE ; 
 int /*<<< orphan*/  DBUS_TYPE_ARRAY ; 
 int /*<<< orphan*/  MarshalFullscreen ; 
 int /*<<< orphan*/  OUT_ARGUMENTS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  SIGNAL_SEND ; 
 scalar_t__ VLC_SUCCESS ; 
 int /*<<< orphan*/  args ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static DBusHandlerResult
FUNC7( intf_thread_t    *p_intf,
                         vlc_dictionary_t *p_changed_properties )
{
    DBusConnection  *p_conn = p_intf->p_sys->p_conn;
    DBusMessageIter changed_properties, invalidated_properties;
    const char *psz_interface_name = DBUS_MPRIS_ROOT_INTERFACE;

    FUNC2( DBUS_INTERFACE_PROPERTIES,
                 DBUS_MPRIS_OBJECT_PATH,
                 "PropertiesChanged" );

    OUT_ARGUMENTS;
    FUNC0( &psz_interface_name );

    if( !FUNC5( &args, DBUS_TYPE_ARRAY, "{sv}",
                                           &changed_properties ) )
        return DBUS_HANDLER_RESULT_NEED_MEMORY;

    if( FUNC6( p_changed_properties, "Fullscreen" ) )
    {
        if( FUNC1( p_intf, &changed_properties, "Fullscreen", "b",
                     MarshalFullscreen ) != VLC_SUCCESS )
        {
            FUNC3( &args, &changed_properties );
            return DBUS_HANDLER_RESULT_NEED_MEMORY;
        }
    }

    if( !FUNC4( &args, &changed_properties ) )
        return DBUS_HANDLER_RESULT_NEED_MEMORY;

    if( !FUNC5( &args, DBUS_TYPE_ARRAY, "s",
                                           &invalidated_properties ) )
        return DBUS_HANDLER_RESULT_NEED_MEMORY;

    if( !FUNC4( &args, &invalidated_properties ) )
        return DBUS_HANDLER_RESULT_NEED_MEMORY;

    SIGNAL_SEND;
}