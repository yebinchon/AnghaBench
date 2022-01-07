
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DBusMessage ;
typedef int DBusHandlerResult ;
typedef int DBusConnection ;


 int AddTrack ;
 int DBUS_HANDLER_RESULT_NOT_YET_HANDLED ;
 int DBUS_INTERFACE_PROPERTIES ;
 int DBUS_MPRIS_TRACKLIST_INTERFACE ;
 int GetAllProperties ;
 int GetProperty ;
 int GetTracksMetadata ;
 int GoTo ;
 int METHOD_FUNC (int ,char*,int ) ;
 int RemoveTrack ;

DBusHandlerResult
handle_tracklist ( DBusConnection *p_conn, DBusMessage *p_from, void *p_this )
{
    if(0);

    METHOD_FUNC( DBUS_INTERFACE_PROPERTIES, "Get", GetProperty );
    METHOD_FUNC( DBUS_INTERFACE_PROPERTIES, "GetAll", GetAllProperties );



    METHOD_FUNC( DBUS_MPRIS_TRACKLIST_INTERFACE, "GoTo", GoTo );
    METHOD_FUNC( DBUS_MPRIS_TRACKLIST_INTERFACE, "AddTrack", AddTrack );
    METHOD_FUNC( DBUS_MPRIS_TRACKLIST_INTERFACE, "RemoveTrack", RemoveTrack );
    METHOD_FUNC( DBUS_MPRIS_TRACKLIST_INTERFACE, "GetTracksMetadata",
                                                  GetTracksMetadata );

    return DBUS_HANDLER_RESULT_NOT_YET_HANDLED;
}
