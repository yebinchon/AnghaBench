
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DBusMessage ;
typedef int DBusHandlerResult ;
typedef int DBusConnection ;


 int DBUS_HANDLER_RESULT_NOT_YET_HANDLED ;
 int DBUS_INTERFACE_PROPERTIES ;
 int DBUS_MPRIS_PLAYER_INTERFACE ;
 int GetAllProperties ;
 int GetProperty ;
 int METHOD_FUNC (int ,char*,int ) ;
 int Next ;
 int OpenUri ;
 int Pause ;
 int Play ;
 int PlayPause ;
 int Prev ;
 int Seek ;
 int SetPosition ;
 int SetProperty ;
 int Stop ;

DBusHandlerResult
handle_player ( DBusConnection *p_conn, DBusMessage *p_from, void *p_this )
{
    if(0);
    METHOD_FUNC( DBUS_INTERFACE_PROPERTIES, "Get", GetProperty );
    METHOD_FUNC( DBUS_INTERFACE_PROPERTIES, "Set", SetProperty );
    METHOD_FUNC( DBUS_INTERFACE_PROPERTIES, "GetAll", GetAllProperties );



    METHOD_FUNC( DBUS_MPRIS_PLAYER_INTERFACE, "Previous", Prev );
    METHOD_FUNC( DBUS_MPRIS_PLAYER_INTERFACE, "Next", Next );
    METHOD_FUNC( DBUS_MPRIS_PLAYER_INTERFACE, "Stop", Stop );
    METHOD_FUNC( DBUS_MPRIS_PLAYER_INTERFACE, "Seek", Seek );
    METHOD_FUNC( DBUS_MPRIS_PLAYER_INTERFACE, "Play", Play );
    METHOD_FUNC( DBUS_MPRIS_PLAYER_INTERFACE, "Pause", Pause );
    METHOD_FUNC( DBUS_MPRIS_PLAYER_INTERFACE, "PlayPause", PlayPause );
    METHOD_FUNC( DBUS_MPRIS_PLAYER_INTERFACE, "OpenUri", OpenUri );
    METHOD_FUNC( DBUS_MPRIS_PLAYER_INTERFACE, "SetPosition", SetPosition );

    return DBUS_HANDLER_RESULT_NOT_YET_HANDLED;
}
