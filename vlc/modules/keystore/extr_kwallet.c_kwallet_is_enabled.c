
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_keystore ;
typedef int dbus_bool_t ;
struct TYPE_5__ {int message; } ;
typedef int DBusMessageIter ;
typedef int DBusMessage ;
typedef TYPE_1__ DBusError ;


 int DBUS_TYPE_BOOLEAN ;
 int DBUS_TYPE_INVALID ;
 int DBUS_TYPE_STRING ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int VLC_UNUSED (int *) ;
 int dbus_error_free (TYPE_1__*) ;
 int dbus_error_init (TYPE_1__*) ;
 int dbus_message_get_args (int *,TYPE_1__*,int ,int*,int ) ;
 int dbus_message_iter_append_basic (int *,int ,int *) ;
 int dbus_message_iter_init_append (int *,int *) ;
 int * dbus_message_new_method_call (char*,char*,char*,char*) ;
 int dbus_message_unref (int *) ;
 int msg_Err (int *,char*,...) ;
 int * ppsz_sAddr ;
 int * vlc_dbus_send_message (int *,int *) ;

__attribute__((used)) static int
kwallet_is_enabled( vlc_keystore* p_keystore, int i_sid, bool* b_is_enabled )
{
    VLC_UNUSED( p_keystore );
    DBusMessage* msg = ((void*)0);
    DBusMessage* repmsg = ((void*)0);
    DBusMessageIter args;
    DBusError error;
    dbus_bool_t b_reply;
    int i_ret = VLC_EGENERIC;


    msg = dbus_message_new_method_call( "org.freedesktop.DBus",
                                        "/",
                                        "org.freedesktop.DBus",
                                        "NameHasOwner" );
    if ( !msg )
    {
        msg_Err( p_keystore, "vlc_dbus_new_method : Failed to create message" );
        goto end;
    }


    dbus_message_iter_init_append( msg, &args );
    if ( !dbus_message_iter_append_basic( &args, DBUS_TYPE_STRING, &ppsz_sAddr[i_sid] ) )
        goto end;


    repmsg = vlc_dbus_send_message( p_keystore, msg );
    if ( !repmsg )
    {
        msg_Err( p_keystore, "kwallet_is_enabled : vlc_dbus_send_message failed");
        goto end;
    }


    dbus_error_init( &error );
    if ( !dbus_message_get_args( repmsg, &error, DBUS_TYPE_BOOLEAN,
                                 &b_reply, DBUS_TYPE_INVALID ) )
    {
        msg_Err( p_keystore, "kwallet_is_enabled : "
                 "dbus_message_get_args failed\n%s", error.message );
        dbus_error_free( &error );
        goto end;
    }

    *b_is_enabled = b_reply;

    i_ret = VLC_SUCCESS;

end:

    if ( msg )
        dbus_message_unref( msg );
    if ( repmsg )
        dbus_message_unref( repmsg );

    return i_ret;
}
