
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {char const* i_handle; char const* psz_app_id; } ;
typedef TYPE_1__ vlc_keystore_sys ;
struct TYPE_12__ {TYPE_1__* p_sys; } ;
typedef TYPE_2__ vlc_keystore ;
typedef int dbus_bool_t ;
struct TYPE_13__ {int message; } ;
typedef int DBusMessageIter ;
typedef int DBusMessage ;
typedef TYPE_3__ DBusError ;


 int DBUS_TYPE_BOOLEAN ;
 int DBUS_TYPE_INT32 ;
 int DBUS_TYPE_INVALID ;
 int DBUS_TYPE_STRING ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int dbus_error_free (TYPE_3__*) ;
 int dbus_error_init (TYPE_3__*) ;
 int dbus_message_get_args (int *,TYPE_3__*,int ,int*,int ) ;
 int dbus_message_iter_append_basic (int *,int ,char const**) ;
 int dbus_message_iter_init_append (int *,int *) ;
 int dbus_message_unref (int *) ;
 int msg_Err (TYPE_2__*,char*,...) ;
 int * vlc_dbus_new_method (TYPE_2__*,char*) ;
 int * vlc_dbus_send_message (TYPE_2__*,int *) ;

__attribute__((used)) static int
kwallet_has_folder( vlc_keystore* p_keystore, const char* psz_folder_name, bool *b_has_folder )
{
    vlc_keystore_sys* p_sys = p_keystore->p_sys;
    DBusMessage* msg = ((void*)0);
    DBusMessage* repmsg = ((void*)0);
    DBusError error;
    DBusMessageIter args;
    dbus_bool_t b_reply;
    int i_ret = VLC_EGENERIC;


    msg = vlc_dbus_new_method( p_keystore, "hasFolder" );
    if ( !msg )
    {
        msg_Err( p_keystore, "kwallet_has_folder : vlc_dbus_new_method failed" );
        return VLC_EGENERIC;
    }


    dbus_message_iter_init_append( msg, &args );
    if ( !dbus_message_iter_append_basic( &args, DBUS_TYPE_INT32, &p_sys->i_handle ) ||
         !dbus_message_iter_append_basic( &args, DBUS_TYPE_STRING, &psz_folder_name ) ||
         !dbus_message_iter_append_basic( &args, DBUS_TYPE_STRING, &p_sys->psz_app_id ) )
        goto end;


    repmsg = vlc_dbus_send_message( p_keystore, msg );
    if ( !repmsg )
    {
        msg_Err( p_keystore, "kwallet_has_folder : vlc_dbus_send_message failed" );
        goto end;
    }



    dbus_error_init( &error );
    if ( !dbus_message_get_args( repmsg, &error, DBUS_TYPE_BOOLEAN,
                                 &b_reply, DBUS_TYPE_INVALID ) )
    {
        msg_Err( p_keystore, "kwallet_has_folder :"
                 " dbus_message_get_args failed\n%s", error.message );
        dbus_error_free( &error );
        goto end;
    }

    *b_has_folder = b_reply;

    i_ret = VLC_SUCCESS;

end:

    if ( msg )
        dbus_message_unref( msg );
    if ( repmsg )
        dbus_message_unref( repmsg);

    return i_ret;
}
