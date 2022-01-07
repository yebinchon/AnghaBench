
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_dictionary_t ;
struct TYPE_6__ {TYPE_1__* p_sys; } ;
typedef TYPE_2__ intf_thread_t ;
struct TYPE_5__ {int * p_conn; } ;
typedef int DBusMessageIter ;
typedef int DBusHandlerResult ;
typedef int DBusConnection ;


 int ADD_STRING (char const**) ;
 scalar_t__ AddProperty (TYPE_2__*,int *,char*,char*,int ) ;
 int DBUS_HANDLER_RESULT_NEED_MEMORY ;
 int DBUS_INTERFACE_PROPERTIES ;
 int DBUS_MPRIS_OBJECT_PATH ;
 char* DBUS_MPRIS_ROOT_INTERFACE ;
 int DBUS_TYPE_ARRAY ;
 int MarshalFullscreen ;
 int OUT_ARGUMENTS ;
 int SIGNAL_INIT (int ,int ,char*) ;
 int SIGNAL_SEND ;
 scalar_t__ VLC_SUCCESS ;
 int args ;
 int dbus_message_iter_abandon_container (int *,int *) ;
 int dbus_message_iter_close_container (int *,int *) ;
 int dbus_message_iter_open_container (int *,int ,char*,int *) ;
 scalar_t__ vlc_dictionary_has_key (int *,char*) ;

__attribute__((used)) static DBusHandlerResult
PropertiesChangedSignal( intf_thread_t *p_intf,
                         vlc_dictionary_t *p_changed_properties )
{
    DBusConnection *p_conn = p_intf->p_sys->p_conn;
    DBusMessageIter changed_properties, invalidated_properties;
    const char *psz_interface_name = DBUS_MPRIS_ROOT_INTERFACE;

    SIGNAL_INIT( DBUS_INTERFACE_PROPERTIES,
                 DBUS_MPRIS_OBJECT_PATH,
                 "PropertiesChanged" );

    OUT_ARGUMENTS;
    ADD_STRING( &psz_interface_name );

    if( !dbus_message_iter_open_container( &args, DBUS_TYPE_ARRAY, "{sv}",
                                           &changed_properties ) )
        return DBUS_HANDLER_RESULT_NEED_MEMORY;

    if( vlc_dictionary_has_key( p_changed_properties, "Fullscreen" ) )
    {
        if( AddProperty( p_intf, &changed_properties, "Fullscreen", "b",
                     MarshalFullscreen ) != VLC_SUCCESS )
        {
            dbus_message_iter_abandon_container( &args, &changed_properties );
            return DBUS_HANDLER_RESULT_NEED_MEMORY;
        }
    }

    if( !dbus_message_iter_close_container( &args, &changed_properties ) )
        return DBUS_HANDLER_RESULT_NEED_MEMORY;

    if( !dbus_message_iter_open_container( &args, DBUS_TYPE_ARRAY, "s",
                                           &invalidated_properties ) )
        return DBUS_HANDLER_RESULT_NEED_MEMORY;

    if( !dbus_message_iter_close_container( &args, &invalidated_properties ) )
        return DBUS_HANDLER_RESULT_NEED_MEMORY;

    SIGNAL_SEND;
}
