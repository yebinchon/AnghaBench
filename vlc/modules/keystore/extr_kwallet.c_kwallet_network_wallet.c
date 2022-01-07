
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int psz_wallet; } ;
typedef TYPE_1__ vlc_keystore_sys ;
struct TYPE_12__ {TYPE_1__* p_sys; } ;
typedef TYPE_2__ vlc_keystore ;
struct TYPE_13__ {int message; } ;
typedef int DBusMessage ;
typedef TYPE_3__ DBusError ;


 int DBUS_TYPE_INVALID ;
 int DBUS_TYPE_STRING ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 int dbus_error_free (TYPE_3__*) ;
 int dbus_error_init (TYPE_3__*) ;
 int dbus_message_get_args (int *,TYPE_3__*,int ,char**,int ) ;
 int dbus_message_unref (int *) ;
 int msg_Err (TYPE_2__*,char*,...) ;
 int strdup (char*) ;
 int * vlc_dbus_new_method (TYPE_2__*,char*) ;
 int * vlc_dbus_send_message (TYPE_2__*,int *) ;

__attribute__((used)) static int
kwallet_network_wallet( vlc_keystore* p_keystore )
{
    vlc_keystore_sys* p_sys = p_keystore->p_sys;
    DBusMessage* msg = ((void*)0);
    DBusMessage* repmsg = ((void*)0);
    DBusError error;
    char* psz_reply;
    int i_ret = VLC_EGENERIC;


    msg = vlc_dbus_new_method( p_keystore, "networkWallet" );
    if ( !msg )
    {
        msg_Err( p_keystore, "kwallet_network_wallet : vlc_dbus_new_method failed" );
        return VLC_EGENERIC;
    }


    repmsg = vlc_dbus_send_message( p_keystore, msg );
    if ( !repmsg )
    {
        msg_Err( p_keystore, "kwallet_network_wallet : vlc_dbus_send_message failed" );
        goto end;
    }


    dbus_error_init( &error );
    if ( !dbus_message_get_args( repmsg, &error, DBUS_TYPE_STRING,
                                 &psz_reply, DBUS_TYPE_INVALID ) )
    {
        msg_Err( p_keystore, "kwallet_network_wallet : "
                 "dbus_message_get_args failed\n%s", error.message );
        dbus_error_free( &error );
        goto end;
    }

    p_sys->psz_wallet = strdup( psz_reply );
    if ( !p_sys->psz_wallet )
    {
        i_ret = VLC_ENOMEM;
        goto end;
    }

    i_ret = VLC_SUCCESS;

end:

    if ( msg )
        dbus_message_unref( msg );
    if ( repmsg )
        dbus_message_unref( repmsg );

    return i_ret;
}
