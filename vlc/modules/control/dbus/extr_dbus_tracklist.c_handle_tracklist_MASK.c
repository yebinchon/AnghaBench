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
typedef  int /*<<< orphan*/  DBusMessage ;
typedef  int /*<<< orphan*/  DBusHandlerResult ;
typedef  int /*<<< orphan*/  DBusConnection ;

/* Variables and functions */
 int /*<<< orphan*/  AddTrack ; 
 int /*<<< orphan*/  DBUS_HANDLER_RESULT_NOT_YET_HANDLED ; 
 int /*<<< orphan*/  DBUS_INTERFACE_PROPERTIES ; 
 int /*<<< orphan*/  DBUS_MPRIS_TRACKLIST_INTERFACE ; 
 int /*<<< orphan*/  GetAllProperties ; 
 int /*<<< orphan*/  GetProperty ; 
 int /*<<< orphan*/  GetTracksMetadata ; 
 int /*<<< orphan*/  GoTo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RemoveTrack ; 

DBusHandlerResult
FUNC1 ( DBusConnection *p_conn, DBusMessage *p_from, void *p_this )
{
    if(0);

    FUNC0( DBUS_INTERFACE_PROPERTIES, "Get",    GetProperty );
    FUNC0( DBUS_INTERFACE_PROPERTIES, "GetAll", GetAllProperties );

    /* here D-Bus method names are associated to an handler */

    FUNC0( DBUS_MPRIS_TRACKLIST_INTERFACE, "GoTo",        GoTo );
    FUNC0( DBUS_MPRIS_TRACKLIST_INTERFACE, "AddTrack",    AddTrack );
    FUNC0( DBUS_MPRIS_TRACKLIST_INTERFACE, "RemoveTrack", RemoveTrack );
    FUNC0( DBUS_MPRIS_TRACKLIST_INTERFACE, "GetTracksMetadata",
                                                  GetTracksMetadata );

    return DBUS_HANDLER_RESULT_NOT_YET_HANDLED;
}